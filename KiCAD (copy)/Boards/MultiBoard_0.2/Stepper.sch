EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR?
U 1 1 6108E3EA
P 6150 4700
AR Path="/6108E3EA" Ref="#PWR?"  Part="1" 
AR Path="/6105CE39/6108E3EA" Ref="#PWR0107"  Part="1" 
AR Path="/610CB921/6108E3EA" Ref="#PWR0122"  Part="1" 
AR Path="/60A7C3A0/6108E3EA" Ref="#PWR0133"  Part="1" 
F 0 "#PWR0133" H 6150 4450 50  0001 C CNN
F 1 "GND" H 6155 4527 50  0000 C CNN
F 2 "" H 6150 4700 50  0001 C CNN
F 3 "" H 6150 4700 50  0001 C CNN
	1    6150 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6108E3F0
P 6350 4700
AR Path="/6108E3F0" Ref="#PWR?"  Part="1" 
AR Path="/6105CE39/6108E3F0" Ref="#PWR0108"  Part="1" 
AR Path="/610CB921/6108E3F0" Ref="#PWR0123"  Part="1" 
AR Path="/60A7C3A0/6108E3F0" Ref="#PWR0134"  Part="1" 
F 0 "#PWR0134" H 6350 4450 50  0001 C CNN
F 1 "GND" H 6355 4527 50  0000 C CNN
F 2 "" H 6350 4700 50  0001 C CNN
F 3 "" H 6350 4700 50  0001 C CNN
	1    6350 4700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6108E3F6
P 6150 3200
AR Path="/6108E3F6" Ref="#PWR?"  Part="1" 
AR Path="/6105CE39/6108E3F6" Ref="#PWR0109"  Part="1" 
AR Path="/610CB921/6108E3F6" Ref="#PWR0124"  Part="1" 
AR Path="/60A7C3A0/6108E3F6" Ref="#PWR0135"  Part="1" 
F 0 "#PWR0135" H 6150 3050 50  0001 C CNN
F 1 "+5V" H 6165 3373 50  0000 C CNN
F 2 "" H 6150 3200 50  0001 C CNN
F 3 "" H 6150 3200 50  0001 C CNN
	1    6150 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 6108E3FC
P 6350 3200
AR Path="/6108E3FC" Ref="#PWR?"  Part="1" 
AR Path="/6105CE39/6108E3FC" Ref="#PWR0110"  Part="1" 
AR Path="/610CB921/6108E3FC" Ref="#PWR0125"  Part="1" 
AR Path="/60A7C3A0/6108E3FC" Ref="#PWR0136"  Part="1" 
F 0 "#PWR0136" H 6350 3050 50  0001 C CNN
F 1 "+12V" H 6365 3373 50  0000 C CNN
F 2 "" H 6350 3200 50  0001 C CNN
F 3 "" H 6350 3200 50  0001 C CNN
	1    6350 3200
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:Pololu_Breakout_A4988 A?
U 1 1 6108E402
P 6150 3900
AR Path="/6108E402" Ref="A?"  Part="1" 
AR Path="/6105CE39/6108E402" Ref="A2"  Part="1" 
AR Path="/610CB921/6108E402" Ref="A3"  Part="1" 
AR Path="/60A7C3A0/6108E402" Ref="A4"  Part="1" 
F 0 "A3" H 6200 4950 50  0000 C CNN
F 1 "Pololu_Breakout_A4988" H 6200 4850 50  0000 C CNN
F 2 "Custom:Pololu_Breakout-16_15.2x20.3mm" H 6425 3150 50  0001 L CNN
F 3 "https://www.pololu.com/product/2980/pictures" H 6250 3600 50  0001 C CNN
	1    6150 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 6108E439
P 6850 4000
AR Path="/6108E439" Ref="J?"  Part="1" 
AR Path="/6105CE39/6108E439" Ref="J9"  Part="1" 
AR Path="/610CB921/6108E439" Ref="J12"  Part="1" 
AR Path="/60A7C3A0/6108E439" Ref="J15"  Part="1" 
F 0 "J12" H 6768 3575 50  0000 C CNN
F 1 "Conn_01x04" H 6768 3666 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 6850 4000 50  0001 C CNN
F 3 "~" H 6850 4000 50  0001 C CNN
	1    6850 4000
	1    0    0    1   
$EndComp
Wire Wire Line
	5750 3500 5750 3300
Wire Wire Line
	5750 3600 5700 3600
Wire Wire Line
	5700 3600 5700 3350
Wire Wire Line
	5750 3800 5650 3800
Wire Wire Line
	5650 3800 5650 3400
$Comp
L Device:R_US R?
U 1 1 6108E448
P 5750 3150
AR Path="/6108E448" Ref="R?"  Part="1" 
AR Path="/6105CE39/6108E448" Ref="R4"  Part="1" 
AR Path="/610CB921/6108E448" Ref="R8"  Part="1" 
AR Path="/60A7C3A0/6108E448" Ref="R12"  Part="1" 
F 0 "R8" H 5818 3196 50  0000 L CNN
F 1 "10K" H 5818 3105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5790 3140 50  0001 C CNN
F 3 "https://datasheet.octopart.com/CFR25J51K-Tyco-Electronics-datasheet-11120164.pdf" H 5750 3150 50  0001 C CNN
	1    5750 3150
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6108E44E
P 5750 3000
AR Path="/6108E44E" Ref="#PWR?"  Part="1" 
AR Path="/6105CE39/6108E44E" Ref="#PWR0119"  Part="1" 
AR Path="/610CB921/6108E44E" Ref="#PWR0130"  Part="1" 
AR Path="/60A7C3A0/6108E44E" Ref="#PWR0141"  Part="1" 
F 0 "#PWR0141" H 5750 2850 50  0001 C CNN
F 1 "+5V" H 5765 3173 50  0000 C CNN
F 2 "" H 5750 3000 50  0001 C CNN
F 3 "" H 5750 3000 50  0001 C CNN
	1    5750 3000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 6108E454
P 5200 3300
AR Path="/6108E454" Ref="J?"  Part="1" 
AR Path="/6105CE39/6108E454" Ref="J8"  Part="1" 
AR Path="/610CB921/6108E454" Ref="J11"  Part="1" 
AR Path="/60A7C3A0/6108E454" Ref="J14"  Part="1" 
F 0 "J11" H 5118 3617 50  0000 C CNN
F 1 "Conn_01x03" H 5118 3526 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5200 3300 50  0001 C CNN
F 3 "~" H 5200 3300 50  0001 C CNN
	1    5200 3300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5450 3350 5700 3350
Wire Wire Line
	5400 3400 5650 3400
Wire Wire Line
	5450 3200 5400 3200
Wire Wire Line
	5450 3200 5450 3350
Wire Wire Line
	5400 3300 5750 3300
Text HLabel 5200 3700 0    50   Input ~ 0
DIR
Text HLabel 5200 3600 0    50   Input ~ 0
STEP
Wire Wire Line
	5200 3600 5600 3600
Wire Wire Line
	5600 3600 5600 3900
Wire Wire Line
	5600 3900 5750 3900
Wire Wire Line
	5200 3700 5550 3700
Wire Wire Line
	5550 3700 5550 4000
Wire Wire Line
	5550 4000 5750 4000
$Comp
L Device:CP C?
U 1 1 60A6EF29
P 6250 5250
AR Path="/60A6EF29" Ref="C?"  Part="1" 
AR Path="/6105CE39/60A6EF29" Ref="C1"  Part="1" 
AR Path="/610CB921/60A6EF29" Ref="C2"  Part="1" 
AR Path="/60A7C3A0/60A6EF29" Ref="C3"  Part="1" 
F 0 "C2" V 6505 5250 50  0000 C CNN
F 1 "100uF" V 6414 5250 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 6288 5100 50  0001 C CNN
F 3 "https://datasheet.octopart.com/ECA-1VM101-Panasonic-datasheet-68071800.pdf" H 6250 5250 50  0001 C CNN
	1    6250 5250
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 60A6EF2F
P 6100 5250
AR Path="/60A6EF2F" Ref="#PWR?"  Part="1" 
AR Path="/6105CE39/60A6EF2F" Ref="#PWR0120"  Part="1" 
AR Path="/610CB921/60A6EF2F" Ref="#PWR0131"  Part="1" 
AR Path="/60A7C3A0/60A6EF2F" Ref="#PWR0142"  Part="1" 
F 0 "#PWR0142" H 6100 5100 50  0001 C CNN
F 1 "+12V" V 6115 5378 50  0000 L CNN
F 2 "" H 6100 5250 50  0001 C CNN
F 3 "" H 6100 5250 50  0001 C CNN
	1    6100 5250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60A6EF35
P 6400 5250
AR Path="/60A6EF35" Ref="#PWR?"  Part="1" 
AR Path="/6105CE39/60A6EF35" Ref="#PWR0121"  Part="1" 
AR Path="/610CB921/60A6EF35" Ref="#PWR0132"  Part="1" 
AR Path="/60A7C3A0/60A6EF35" Ref="#PWR0143"  Part="1" 
F 0 "#PWR0143" H 6400 5000 50  0001 C CNN
F 1 "GND" V 6405 5122 50  0000 R CNN
F 2 "" H 6400 5250 50  0001 C CNN
F 3 "" H 6400 5250 50  0001 C CNN
	1    6400 5250
	0    -1   -1   0   
$EndComp
Connection ~ 5750 3300
$Comp
L power:+5V #PWR?
U 1 1 6108E40E
P 5750 4200
AR Path="/6108E40E" Ref="#PWR?"  Part="1" 
AR Path="/6105CE39/6108E40E" Ref="#PWR0111"  Part="1" 
AR Path="/610CB921/6108E40E" Ref="#PWR0126"  Part="1" 
AR Path="/60A7C3A0/6108E40E" Ref="#PWR0137"  Part="1" 
F 0 "#PWR0137" H 5750 4050 50  0001 C CNN
F 1 "+5V" V 5765 4328 50  0000 L CNN
F 2 "" H 5750 4200 50  0001 C CNN
F 3 "" H 5750 4200 50  0001 C CNN
	1    5750 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5750 4200 5750 4300
Connection ~ 5750 4200
Connection ~ 5750 4300
Wire Wire Line
	5750 4300 5750 4400
$EndSCHEMATC
