EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
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
L Connector:Screw_Terminal_01x02 J2
U 1 1 60A06A1C
P 4000 3250
F 0 "J2" H 3918 3467 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 3918 3376 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 4000 3250 50  0001 C CNN
F 3 "~" H 4000 3250 50  0001 C CNN
	1    4000 3250
	-1   0    0    -1  
$EndComp
Text Notes 6750 3400 2    50   ~ 0
5V Buck
Text Notes 5850 3050 2    50   ~ 0
Switching + Current/Voltage Readout
Wire Wire Line
	6050 3250 6050 3150
Wire Wire Line
	6050 3150 7150 3150
Wire Wire Line
	7150 3150 7150 3250
$Comp
L Connector:Screw_Terminal_01x02 J7
U 1 1 60A7DED8
P 6250 3950
F 0 "J7" H 6250 3750 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 6750 3850 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 6250 3950 50  0001 C CNN
F 3 "~" H 6250 3950 50  0001 C CNN
	1    6250 3950
	1    0    0    -1  
$EndComp
Text Notes 3650 3400 0    50   ~ 0
Battery\nLink
Text Notes 6350 4000 0    50   ~ 0
Switched\nBattery
$Comp
L Connector:Screw_Terminal_01x02 J8
U 1 1 60A83229
P 7350 3000
F 0 "J8" H 7268 3217 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 7268 3126 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 7350 3000 50  0001 C CNN
F 3 "~" H 7350 3000 50  0001 C CNN
	1    7350 3000
	0    1    -1   0   
$EndComp
Wire Wire Line
	7150 3250 7250 3250
Wire Wire Line
	7250 3250 7250 3200
Wire Wire Line
	7150 3450 7350 3450
Wire Wire Line
	7350 3450 7350 3200
Connection ~ 7250 3250
Connection ~ 7350 3450
Text Notes 8000 2650 2    50   ~ 0
5V Outputs
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 60AAF51C
P 7200 5250
F 0 "J5" H 7280 5242 50  0000 L CNN
F 1 "Conn_01x02" H 7280 5151 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 7200 5250 50  0001 C CNN
F 3 "~" H 7200 5250 50  0001 C CNN
	1    7200 5250
	1    0    0    -1  
$EndComp
Text Notes 6350 3650 0    50   ~ 0
USB Module
Text Notes 6700 5350 2    50   ~ 0
Current Limiter
Text Notes 8300 5300 2    50   ~ 0
Battery Charger Output
$Comp
L Mechanical:MountingHole H1
U 1 1 60AD1861
P 2000 1750
F 0 "H1" H 2100 1796 50  0000 L CNN
F 1 "MountingHole" H 2100 1705 50  0000 L CNN
F 2 "MountingHole:MountingHole_5.3mm_M5_Pad_Via" H 2000 1750 50  0001 C CNN
F 3 "~" H 2000 1750 50  0001 C CNN
	1    2000 1750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 60AD31C6
P 2000 1900
F 0 "H2" H 2100 1946 50  0000 L CNN
F 1 "MountingHole" H 2100 1855 50  0000 L CNN
F 2 "MountingHole:MountingHole_5.3mm_M5_Pad_Via" H 2000 1900 50  0001 C CNN
F 3 "~" H 2000 1900 50  0001 C CNN
	1    2000 1900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 60AD3824
P 2000 2050
F 0 "H3" H 2100 2096 50  0000 L CNN
F 1 "MountingHole" H 2100 2005 50  0000 L CNN
F 2 "MountingHole:MountingHole_5.3mm_M5_Pad_Via" H 2000 2050 50  0001 C CNN
F 3 "~" H 2000 2050 50  0001 C CNN
	1    2000 2050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 60AD3DCF
P 2000 2200
F 0 "H4" H 2100 2246 50  0000 L CNN
F 1 "MountingHole" H 2100 2155 50  0000 L CNN
F 2 "MountingHole:MountingHole_5.3mm_M5_Pad_Via" H 2000 2200 50  0001 C CNN
F 3 "~" H 2000 2200 50  0001 C CNN
	1    2000 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 5400 5750 5500
Text Notes 5500 5350 2    50   ~ 0
15V Boost
Wire Wire Line
	4650 5500 5750 5500
Wire Wire Line
	4650 5400 4650 5500
Wire Wire Line
	5750 5200 5900 5200
Wire Wire Line
	7000 5200 7000 5250
Wire Wire Line
	7000 5350 7000 5400
NoConn ~ 4650 5300
$Comp
L Custom:BuckBoostConverter B2
U 1 1 60A01B0B
P 5200 5300
F 0 "B2" H 5200 5625 50  0000 C CNN
F 1 "BuckBoostConverter" H 5200 5500 50  0000 C CNN
F 2 "Custom:BuckBoostConverter" H 5200 5300 50  0001 C CNN
F 3 "" H 5200 5300 50  0001 C CNN
	1    5200 5300
	1    0    0    -1  
$EndComp
$Comp
L Custom:CurrentLimiter CC1
U 1 1 60A02ADB
P 6450 5300
F 0 "CC1" H 6450 5625 50  0000 C CNN
F 1 "CurrentLimiter" H 6450 5534 50  0000 C CNN
F 2 "Custom:ConstantCurrentModule" H 6450 5300 50  0001 C CNN
F 3 "" H 6450 5300 50  0001 C CNN
	1    6450 5300
	1    0    0    -1  
$EndComp
Connection ~ 7150 3250
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 60A76FEB
P 4350 4900
F 0 "J1" V 4550 4850 50  0000 C CNN
F 1 "Screw_Terminal_01x02" V 4450 4850 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 4350 4900 50  0001 C CNN
F 3 "~" H 4350 4900 50  0001 C CNN
	1    4350 4900
	0    1    -1   0   
$EndComp
$Comp
L Custom:BuckConverter B1
U 1 1 60A041C1
P 6600 3350
F 0 "B1" H 6600 3000 50  0000 C CNN
F 1 "BuckConverter" H 6600 3100 50  0000 C CNN
F 2 "Custom:BuckConverter" H 6600 3350 50  0001 C CNN
F 3 "" H 6600 3350 50  0001 C CNN
	1    6600 3350
	1    0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J6
U 1 1 60B8E37C
P 6250 3600
F 0 "J6" H 6250 3400 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 6750 3500 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 6250 3600 50  0001 C CNN
F 3 "~" H 6250 3600 50  0001 C CNN
	1    6250 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3300 5850 3300
Wire Wire Line
	6050 3300 6050 3250
Connection ~ 6050 3250
$Comp
L power:+12V #PWR0101
U 1 1 60BAA026
P 4600 3250
F 0 "#PWR0101" H 4600 3100 50  0001 C CNN
F 1 "+12V" H 4615 3423 50  0000 C CNN
F 2 "" H 4600 3250 50  0001 C CNN
F 3 "" H 4600 3250 50  0001 C CNN
	1    4600 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0102
U 1 1 60BAAD8A
P 6050 3600
F 0 "#PWR0102" H 6050 3450 50  0001 C CNN
F 1 "+12V" V 6065 3728 50  0000 L CNN
F 2 "" H 6050 3600 50  0001 C CNN
F 3 "" H 6050 3600 50  0001 C CNN
	1    6050 3600
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0103
U 1 1 60BAE9EE
P 6050 3950
F 0 "#PWR0103" H 6050 3800 50  0001 C CNN
F 1 "+12V" V 6065 4078 50  0000 L CNN
F 2 "" H 6050 3950 50  0001 C CNN
F 3 "" H 6050 3950 50  0001 C CNN
	1    6050 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4600 3250 4650 3250
Wire Wire Line
	4200 3250 4350 3250
Connection ~ 4600 3250
Wire Wire Line
	4650 3350 4350 3350
Wire Wire Line
	5900 5400 5850 5400
Wire Wire Line
	5700 4050 6050 4050
Wire Wire Line
	6050 3700 5700 3700
$Comp
L power:+12V #PWR0104
U 1 1 60BEE28C
P 6050 3450
F 0 "#PWR0104" H 6050 3300 50  0001 C CNN
F 1 "+12V" V 6065 3578 50  0000 L CNN
F 2 "" H 6050 3450 50  0001 C CNN
F 3 "" H 6050 3450 50  0001 C CNN
	1    6050 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3900 5200 4350 5200
Wire Wire Line
	4650 5400 4250 5400
Connection ~ 4650 5400
Wire Wire Line
	4350 5100 4350 5200
Connection ~ 4350 5200
Wire Wire Line
	4350 5200 4650 5200
Wire Wire Line
	4250 5100 4250 5400
Connection ~ 4250 5400
Wire Wire Line
	4250 5400 3800 5400
Wire Wire Line
	3900 4250 4550 4250
NoConn ~ 4450 3800
Wire Wire Line
	4500 3900 4450 3900
Wire Wire Line
	4500 3700 4500 3900
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 60DC9D04
P 4250 3800
AR Path="/609B92A7/60DC9D04" Ref="J?"  Part="1" 
AR Path="/60DC9D04" Ref="J3"  Part="1" 
F 0 "J3" H 4330 3842 50  0000 L CNN
F 1 "Conn_01x03" H 4330 3751 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 4250 3800 50  0001 C CNN
F 3 "~" H 4250 3800 50  0001 C CNN
	1    4250 3800
	-1   0    0    1   
$EndComp
Text Notes 4050 3850 2    50   ~ 0
Voltage Meter
Wire Wire Line
	4500 3700 4450 3700
Wire Wire Line
	3900 4250 3900 5200
Wire Wire Line
	4650 4150 4550 4150
Wire Wire Line
	3800 4150 3800 5400
Wire Wire Line
	5700 4450 5800 4450
Wire Wire Line
	5800 4450 5800 5400
$Sheet
S 4650 3200 1050 1300
U 609B92A7
F0 "Switches" 50
F1 "Switches.sch" 50
F2 "5V_-" I R 5700 3300 50 
F3 "USB_-" I R 5700 3700 50 
F4 "12V_-" I R 5700 4050 50 
F5 "BAT_-" I L 4650 3350 50 
F6 "DC_-" I L 4650 4150 50 
F7 "CC_-" I R 5700 4450 50 
F8 "DC_+" I L 4650 4250 50 
F9 "BAT_+" I L 4650 3250 50 
F10 "Meter_+" I L 4650 3700 50 
$EndSheet
Wire Wire Line
	7350 3450 8750 3450
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J9
U 1 1 60EF7C0D
P 8550 3050
F 0 "J9" H 8600 2625 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 8600 2716 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 8550 3050 50  0001 C CNN
F 3 "~" H 8550 3050 50  0001 C CNN
	1    8550 3050
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60F0C92B
P 4350 3250
F 0 "#FLG0101" H 4350 3325 50  0001 C CNN
F 1 "PWR_FLAG" H 4350 3423 50  0000 C CNN
F 2 "" H 4350 3250 50  0001 C CNN
F 3 "~" H 4350 3250 50  0001 C CNN
	1    4350 3250
	1    0    0    -1  
$EndComp
Connection ~ 4350 3250
Wire Wire Line
	4350 3250 4600 3250
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 60F0EADA
P 4350 3350
F 0 "#FLG0102" H 4350 3425 50  0001 C CNN
F 1 "PWR_FLAG" H 4350 3523 50  0000 C CNN
F 2 "" H 4350 3350 50  0001 C CNN
F 3 "~" H 4350 3350 50  0001 C CNN
	1    4350 3350
	-1   0    0    1   
$EndComp
Connection ~ 4350 3350
Wire Wire Line
	4350 3350 4200 3350
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 60F1190A
P 5850 5400
F 0 "#FLG0103" H 5850 5475 50  0001 C CNN
F 1 "PWR_FLAG" H 5850 5573 50  0000 C CNN
F 2 "" H 5850 5400 50  0001 C CNN
F 3 "~" H 5850 5400 50  0001 C CNN
	1    5850 5400
	1    0    0    -1  
$EndComp
Connection ~ 5850 5400
Wire Wire Line
	5850 5400 5800 5400
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 60F154B1
P 4550 4150
F 0 "#FLG0104" H 4550 4225 50  0001 C CNN
F 1 "PWR_FLAG" H 4550 4323 50  0000 C CNN
F 2 "" H 4550 4150 50  0001 C CNN
F 3 "~" H 4550 4150 50  0001 C CNN
	1    4550 4150
	1    0    0    -1  
$EndComp
Connection ~ 4550 4150
Wire Wire Line
	4550 4150 3800 4150
$Comp
L power:PWR_FLAG #FLG0105
U 1 1 60F16E2E
P 7000 5400
F 0 "#FLG0105" H 7000 5475 50  0001 C CNN
F 1 "PWR_FLAG" H 7000 5573 50  0000 C CNN
F 2 "" H 7000 5400 50  0001 C CNN
F 3 "~" H 7000 5400 50  0001 C CNN
	1    7000 5400
	-1   0    0    1   
$EndComp
Connection ~ 7000 5400
$Comp
L power:PWR_FLAG #FLG0106
U 1 1 60F17604
P 4550 4250
F 0 "#FLG0106" H 4550 4325 50  0001 C CNN
F 1 "PWR_FLAG" H 4550 4423 50  0000 C CNN
F 2 "" H 4550 4250 50  0001 C CNN
F 3 "~" H 4550 4250 50  0001 C CNN
	1    4550 4250
	-1   0    0    1   
$EndComp
Connection ~ 4550 4250
Wire Wire Line
	4550 4250 4650 4250
$Comp
L power:PWR_FLAG #FLG0107
U 1 1 60F17D23
P 5850 3300
F 0 "#FLG0107" H 5850 3375 50  0001 C CNN
F 1 "PWR_FLAG" H 5850 3473 50  0000 C CNN
F 2 "" H 5850 3300 50  0001 C CNN
F 3 "~" H 5850 3300 50  0001 C CNN
	1    5850 3300
	1    0    0    -1  
$EndComp
Connection ~ 5850 3300
Wire Wire Line
	5850 3300 6050 3300
Wire Wire Line
	8750 3250 8750 3450
Wire Wire Line
	8250 3150 8250 3250
Connection ~ 8250 3250
Wire Wire Line
	8250 2850 8250 2950
Wire Wire Line
	7250 3250 8250 3250
Connection ~ 8250 2950
Wire Wire Line
	8250 2950 8250 3050
Connection ~ 8250 3050
Wire Wire Line
	8250 3050 8250 3150
Connection ~ 8250 3150
Wire Wire Line
	8750 2850 8750 2950
Connection ~ 8750 3250
Connection ~ 8750 2950
Wire Wire Line
	8750 2950 8750 3050
Connection ~ 8750 3050
Wire Wire Line
	8750 3050 8750 3150
Connection ~ 8750 3150
Wire Wire Line
	8750 3150 8750 3250
Wire Wire Line
	4500 3700 4650 3700
Connection ~ 4500 3700
$EndSCHEMATC
