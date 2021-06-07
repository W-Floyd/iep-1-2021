use <PolyGear/PolyGear.scad>
use <PolyGear/shortcuts.scad>
use <PolyGear/linspace.scad>

module mirror_copy(v = [1, 0, 0]) {
    children();
    mirror(v) children();
}

// https://stackoverflow.com/a/45826244
module rotate_about_pt(z, y, pt) {
    translate(pt)
        rotate([0, y, z])
            translate(-pt)
                children();   
}

module radial_copy(origin, n, angle) {
    children();
    step=angle/n;
    for (i=[1:1:n]) {
        rotate_about_pt(step*i,0,origin)
        children();
    }
}

module planetary_gearbox (
    //basic options
    sun_n = 25,    // Number of teeth on Sun Gear
    stepper_drive = true,
    ring_n = 65,   // Number of teeth on Ring Gear
    ring_thickness = 10,
    n_planets = 4, // Must be 1 or more
    m = 1,         // module
    z = 1,         // thickness
    pressure_angle = 20,
    helix_angle    = 0,   // the sign gives the handiness, can be a list
    backlash       = 0.1, // in module units
    //shortcuts
    w  = undef, //overrides z when defined
    a0 = undef, //overrides pressure angle when defined
    b0 = undef, //overrides helix angle when defined
    tol= undef, //overrides backlash
    //advanced options
    chamfer       = 0, // degrees, should be in [0:90[
    chamfer_shift = 0, // from the pitch radius in module units
    sun_add = 0, // add to addendum
    sun_ded = 0, // subtract to the dedendum
    sun_x   = 0, // profile shift
    ring_add = 0.2, // add to addendum
    ring_ded = -0.2, // subtract to the dedendum
    ring_x   = 0.1, // profile shift
    planet_add = 0, // add to addendum
    planet_ded = 0, // subtract to the dedendum
    planet_x   = 0, // profile shift
    planet_hole = true,
    planet_hole_diameter = 22.2,
    //finesse options
    fn=5,     // tooth profile subdivisions

    // Animation
    fix_on=0, // 0 sun, 1 carrier, 2 ring
    animation_rate=30,
    animate=false
) {

    stepper_diameter = 5.1;

    assert(n_planets > 0);
    assert(sun_n%n_planets == 0);
    assert(ring_n%n_planets == 0);

    planet_n = (ring_n - sun_n)/2;
    echo("planet_n", planet_n);

    turns_ring= fix_on==0 ? 1 : (fix_on==1 ? (-1 * sun_n) / ring_n : 0);
    turns_sun= fix_on==1 ? 1 : (fix_on==2 ? ( ring_n + sun_n ) / sun_n : 0);
    turns_carrier= fix_on==2 ? 1 : (fix_on==0 ? ring_n / ( ring_n + sun_n ) : 0);

    echo("turns_sun", turns_sun);
    echo("turns_carrier", turns_carrier);
    echo("turns_ring", turns_ring);

    sun_r= planet_n%2 == 0 ? 180/sun_n : 0;
    echo("sun_r", sun_r);
    rotate([0,0,sun_r])
    // Let's create the Sun Gear
    if (stepper_drive==true) {
        difference(){
            spur_gear(
                n = sun_n, m = m, z = z, pressure_angle = pressure_angle, helix_angle = helix_angle, backlash = backlash, w = w, a0 = a0, b0 = b0, tol= tol, chamfer = chamfer, chamfer_shift = chamfer_shift, add = sun_add, ded = sun_ded, x = sun_x, type= 1, $fn=fn
            );
            difference(){
            cylinder(h = z+1, r1 = stepper_diameter/2, r2 = stepper_diameter/2, center = true, $fn=64);
            translate([stepper_diameter-0.5,0,0])
            cube([stepper_diameter,stepper_diameter,z+1],center=true);
            }
        }
    } else {
        spur_gear(
            n = sun_n, m = m, z = z, pressure_angle = pressure_angle, helix_angle = helix_angle, backlash = backlash, w = w, a0 = a0, b0 = b0, tol= tol, chamfer = chamfer, chamfer_shift = chamfer_shift, add = sun_add, ded = sun_ded, x = sun_x, type= 1, $fn=fn
        );
    }

    echo("Ring ID", m*ring_n);
    echo("Ring OD", m*ring_n+2*ring_thickness);
    // Ring Gear
    difference(){
        cylinder(h = z, r1 = m*ring_n/2+ring_thickness, r2 = m*ring_n/2+ring_thickness, center = true, $fn=128);
            mirror_copy([0,0,1])
            rotate_extrude()
            translate([ring_n*m/2,z/2,0])
            polygon([[-m,-m],[-m,0],[0,0]], paths=[[0,1,2]]);
            spur_gear(
                n = ring_n, m = m, z = z+1, pressure_angle = pressure_angle, helix_angle = -helix_angle, backlash = -backlash, w = w, a0 = a0, b0 = b0, tol= tol, chamfer = 0, chamfer_shift = 0, add = ring_add, ded = ring_ded, x = ring_x, type= 1, $fn=fn
            );
    }

    // Planet Gears
    r = (ring_n+sun_n)*m/4; // pattern radius
    echo("Planet Gear Radius", r);
    radial_copy([0,0,0],n_planets,360)
    translate([r,0,0])
    if (planet_hole==true) {
        difference(){
            spur_gear(n = planet_n, m = m, z = z, pressure_angle = pressure_angle, helix_angle = -helix_angle, backlash = backlash, w = w, a0 = a0, b0 = b0, tol= tol, chamfer = chamfer, chamfer_shift = chamfer_shift, add = planet_add, ded = planet_ded, x = planet_x, $fn=fn
            );
            cylinder(h = z+1, r1 = planet_hole_diameter/2, r2 = planet_hole_diameter/2, center = true, $fn=64);
        }
    } else {
        spur_gear(n = planet_n, m = m, z = z, pressure_angle = pressure_angle, helix_angle = -helix_angle, backlash = backlash, w = w, a0 = a0, b0 = b0, tol= tol, chamfer = chamfer, chamfer_shift = chamfer_shift, add = planet_add, ded = planet_ded, x = planet_x, $fn=fn
    );
    }

}

function herringbone_n_slope(helix=30, segments=1, done=0) = (
    echo("Number done (slope)",done)
    let(sign=(done%2)*2-1)
    lst_repeat(sign*helix, segments)
);

function herringbone_n_recurse(helix=30, segments=1,n=1, done=0) = (
    echo("Number done (recurse)",done)
    n - done > 1 ? concat(herringbone_n_recurse(helix=helix, segments=segments, done=done+1,n=n),0,herringbone_n_slope(helix=helix, segments=segments, done=done+1)) : herringbone_n_slope(helix=helix, segments=segments, done=done+1)
);

// function herringbone_n(helix=30, $fn=9, n=1) = (
//     [ for (x=linspace(-n,n,$fn*2)) exp(-abs(sqrt(x)))*sign(sin(x*180))*helix ]
// );

function sine_n(helix=30, $fn=9, n=1) = (
    [ for (x=linspace(-n,n,$fn*2)) sin(x*180)*helix/(x*2) ]
);

// n_test=10;
// fn_test=50;
// helix_test=30;

// spur_gear(helix_angle=herringbone_n(helix=helix_test,n=n_test,$fn=fn_test), z=10);

planetary_gearbox(
    z=10,
    m=1.993,
    sun_n=12,
    ring_n=32,
    n_planets=4,
    fix_on=1,
    helix_angle=sine_n(n=1),
    chamfer=45,
    chamfer_shift=0,
    ring_thickness=5,
    stepper_drive=true,
    planet_hole=true,
    planet_hole_diameter=3.3,
    animate=false
);
