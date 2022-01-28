# JLCPCB

## KiCAD Export

https://support.jlcpcb.com/article/149-how-to-generate-gerber-and-drill-files-in-kicad

Plot
    Plot footprint references
    Exclude PCB edge layer from other layers
    Exclude pads from silkscreen
    Check zone fills before plotting
    Use Protel filename extensions,
    Subtract soldermask from silkscreen
Drill + Map
    Excellon
        Use alternate drill mode
    Map File Format -> Gerber
    Drill Unit -> mm

# Klipper

## Z-Offset

If z-offset is positive, decrease probe offset

# Test Assembly Notes

## Base

Easier to put drill and stepper motor on *before* extrusions.

## Drill

### Casing

Need to gently pry drill with slothead to get silver casing off, more screws underneath.

### Desoldering

Clip ends of wires just before joint (saves time), **use meat of soldering iron instead of tip**.

### Battery

Make sure to explain how battery clip cover works.

