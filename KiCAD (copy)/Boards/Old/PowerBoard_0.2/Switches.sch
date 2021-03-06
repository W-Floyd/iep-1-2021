EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 7450 5350 2    50   Input ~ 0
Battery_5V_Switched_+
Text HLabel 7450 5450 2    50   Input ~ 0
Battery_USB_Switched_+
Text HLabel 7450 5550 2    50   Input ~ 0
Battery_Switched_+
Wire Wire Line
	5900 4250 5900 4350
Wire Wire Line
	5900 4450 5900 4550
$Comp
L Switch:SW_DPDT_x2 SW2
U 2 1 609CD529
P 5700 4550
F 0 "SW2" H 5700 4200 50  0000 C CNN
F 1 "SW_DPDT_x2" H 5700 4300 50  0000 C CNN
F 2 "Custom:DPDT" H 5700 4550 50  0001 C CNN
F 3 "~" H 5700 4550 50  0001 C CNN
	2    5700 4550
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW2
U 1 1 609CD8D9
P 5700 4250
F 0 "SW2" H 5700 4550 50  0000 C CNN
F 1 "SW_DPDT_x2" H 5700 4450 50  0000 C CNN
F 2 "Custom:DPDT" H 5700 4250 50  0001 C CNN
F 3 "~" H 5700 4250 50  0001 C CNN
	1    5700 4250
	-1   0    0    -1  
$EndComp
Text Notes 4300 4550 2    50   ~ 0
On/Off
Text Notes 5950 3900 2    50   ~ 0
Charge/Output
Wire Wire Line
	5400 4650 5400 5000
Wire Wire Line
	5400 5000 6300 5000
Wire Wire Line
	5400 4650 5500 4650
Wire Wire Line
	6300 5000 6300 5100
Connection ~ 6300 5100
Text HLabel 4950 4450 0    50   Input ~ 0
DC_Switched_+
$Comp
L Switch:SW_SPST SW3
U 1 1 60BCE75E
P 6500 5100
F 0 "SW3" H 6500 5335 50  0000 C CNN
F 1 "SW_SPST" H 6500 5244 50  0000 C CNN
F 2 "Custom:SPDT" H 6500 5100 50  0001 C CNN
F 3 "~" H 6500 5100 50  0001 C CNN
	1    6500 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5100 6300 5900
$Comp
L Switch:SW_SPST SW4
U 1 1 60BCFD9B
P 6500 5450
F 0 "SW4" H 6500 5685 50  0000 C CNN
F 1 "SW_SPST" H 6500 5594 50  0000 C CNN
F 2 "Custom:SPDT" H 6500 5450 50  0001 C CNN
F 3 "~" H 6500 5450 50  0001 C CNN
	1    6500 5450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW5
U 1 1 60BCFFFB
P 6500 5900
F 0 "SW5" H 6500 6135 50  0000 C CNN
F 1 "SW_SPST" H 6500 6044 50  0000 C CNN
F 2 "Custom:SPDT" H 6500 5900 50  0001 C CNN
F 3 "~" H 6500 5900 50  0001 C CNN
	1    6500 5900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW6
U 2 1 60C319BF
P 5650 3050
F 0 "SW6" H 5650 3335 50  0000 C CNN
F 1 "SW_DPDT_x2" H 5650 3244 50  0000 C CNN
F 2 "Custom:DPDT" H 5650 3050 50  0001 C CNN
F 3 "~" H 5650 3050 50  0001 C CNN
	2    5650 3050
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW6
U 1 1 60C31126
P 5650 2600
F 0 "SW6" H 5650 2885 50  0000 C CNN
F 1 "SW_DPDT_x2" H 5650 2794 50  0000 C CNN
F 2 "Custom:DPDT" H 5650 2600 50  0001 C CNN
F 3 "~" H 5650 2600 50  0001 C CNN
	1    5650 2600
	-1   0    0    -1  
$EndComp
Text Notes 6250 2250 2    50   ~ 0
Voltage Meter Source\nCharge (DC) / Output (Battery)
$Comp
L Switch:SW_DPST SW1
U 1 1 609FA872
P 4200 4250
F 0 "SW1" H 4200 4575 50  0000 C CNN
F 1 "SW_DPST" H 4200 4484 50  0000 C CNN
F 2 "Custom:DPDT_OnOff" H 4200 4250 50  0001 C CNN
F 3 "~" H 4200 4250 50  0001 C CNN
	1    4200 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 60A0E148
P 6750 4100
F 0 "J3" H 6830 4142 50  0000 L CNN
F 1 "Conn_01x03" H 6830 4051 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 6750 4100 50  0001 C CNN
F 3 "~" H 6750 4100 50  0001 C CNN
	1    6750 4100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 60A11B76
P 6750 4350
F 0 "J4" H 6830 4342 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 6830 4251 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 6750 4350 50  0001 C CNN
F 3 "~" H 6750 4350 50  0001 C CNN
	1    6750 4350
	1    0    0    -1  
$EndComp
Text Notes 6700 3900 0    50   ~ 0
Voltage Meter
Text Notes 6700 4600 0    50   ~ 0
Current Meter
Wire Wire Line
	4500 2500 5450 2500
Wire Wire Line
	5450 2700 4600 2700
Text HLabel 4750 3150 0    50   Input ~ 0
Battery_-
Text HLabel 4750 2950 0    50   Input ~ 0
DC_-
Wire Wire Line
	5850 2600 6250 2600
$Comp
L Connector_Generic:Conn_01x02 J19
U 1 1 60A72900
P 6250 3250
F 0 "J19" V 6122 3330 50  0000 L CNN
F 1 "Conn_01x02" V 6213 3330 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6250 3250 50  0001 C CNN
F 3 "~" H 6250 3250 50  0001 C CNN
	1    6250 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 3050 6150 3050
Wire Wire Line
	6250 3050 6250 2600
$Comp
L Connector_Generic:Conn_01x02 J20
U 1 1 60A7C7F1
P 6250 3400
F 0 "J20" V 6214 3480 50  0000 L CNN
F 1 "Conn_01x02" V 6123 3480 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6250 3400 50  0001 C CNN
F 3 "~" H 6250 3400 50  0001 C CNN
	1    6250 3400
	0    1    -1   0   
$EndComp
Wire Wire Line
	2950 4350 2900 4350
Wire Wire Line
	2950 4300 2950 4350
Wire Wire Line
	3000 4300 2950 4300
Wire Wire Line
	2950 4200 3000 4200
Wire Wire Line
	2950 4150 2950 4200
Wire Wire Line
	2900 4150 2950 4150
$Comp
L Connector_Generic:Conn_01x02 J12
U 1 1 60A4D265
P 3200 4200
F 0 "J12" H 3150 4300 50  0000 L CNN
F 1 "Conn_01x02" H 2800 3950 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3200 4200 50  0001 C CNN
F 3 "~" H 3200 4200 50  0001 C CNN
	1    3200 4200
	1    0    0    -1  
$EndComp
Text HLabel 2900 4150 0    50   Input ~ 0
DC_+
Text HLabel 2900 4350 0    50   Input ~ 0
Battery_+
$Comp
L Connector_Generic:Conn_01x02 J13
U 1 1 60A90AF2
P 3350 4200
F 0 "J13" H 3300 4300 50  0000 L CNN
F 1 "Conn_01x02" H 2950 3950 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3350 4200 50  0001 C CNN
F 3 "~" H 3350 4200 50  0001 C CNN
	1    3350 4200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3550 4200 3950 4200
Wire Wire Line
	3950 4200 3950 4150
Wire Wire Line
	3950 4150 4000 4150
Wire Wire Line
	4000 4350 3950 4350
Wire Wire Line
	3950 4350 3950 4300
Wire Wire Line
	3950 4300 3550 4300
$Comp
L Connector_Generic:Conn_01x02 J14
U 1 1 60A9E1A4
P 5050 3000
F 0 "J14" H 5000 3100 50  0000 L CNN
F 1 "Conn_01x02" H 4650 2750 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5050 3000 50  0001 C CNN
F 3 "~" H 5050 3000 50  0001 C CNN
	1    5050 3000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J16
U 1 1 60A9E1AA
P 5200 3000
F 0 "J16" H 5150 3100 50  0000 L CNN
F 1 "Conn_01x02" H 4800 2750 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5200 3000 50  0001 C CNN
F 3 "~" H 5200 3000 50  0001 C CNN
	1    5200 3000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4750 2950 4800 2950
Wire Wire Line
	4800 2950 4800 3000
Wire Wire Line
	4800 3000 4850 3000
Wire Wire Line
	4850 3100 4800 3100
Wire Wire Line
	4800 3100 4800 3150
Wire Wire Line
	4800 3150 4750 3150
Wire Wire Line
	5400 3000 5450 3000
Wire Wire Line
	5450 3000 5450 2950
Wire Wire Line
	5450 3150 5450 3100
Wire Wire Line
	5450 3100 5400 3100
$Comp
L Connector_Generic:Conn_01x02 J18
U 1 1 60AA645B
P 6150 4350
F 0 "J18" H 6100 4450 50  0000 L CNN
F 1 "Conn_01x02" H 5750 4100 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6150 4350 50  0001 C CNN
F 3 "~" H 6150 4350 50  0001 C CNN
	1    6150 4350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J21
U 1 1 60AA6461
P 6300 4350
F 0 "J21" H 6250 4450 50  0000 L CNN
F 1 "Conn_01x02" H 5900 4100 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6300 4350 50  0001 C CNN
F 3 "~" H 6300 4350 50  0001 C CNN
	1    6300 4350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5950 4350 5900 4350
Wire Wire Line
	5900 4450 5950 4450
Wire Wire Line
	6500 4450 6550 4450
Wire Wire Line
	6550 4350 6500 4350
$Comp
L Connector_Generic:Conn_01x03 J22
U 1 1 60AAC534
P 7100 5450
F 0 "J22" H 7050 5650 50  0000 L CNN
F 1 "Conn_01x03" H 6700 5250 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7100 5450 50  0001 C CNN
F 3 "~" H 7100 5450 50  0001 C CNN
	1    7100 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 5350 6700 5100
Wire Wire Line
	6700 5550 6700 5900
$Comp
L Connector_Generic:Conn_01x03 J23
U 1 1 60AB12AB
P 7250 5450
F 0 "J23" H 7200 5650 50  0000 L CNN
F 1 "Conn_01x03" H 6850 5250 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7250 5450 50  0001 C CNN
F 3 "~" H 7250 5450 50  0001 C CNN
	1    7250 5450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6700 5450 6900 5450
Wire Wire Line
	6900 5350 6700 5350
Wire Wire Line
	6700 5550 6900 5550
$Comp
L Connector_Generic:Conn_01x01 J17
U 1 1 60AC32BA
P 5300 4450
F 0 "J17" H 5300 4350 50  0000 C CNN
F 1 "Conn_01x01" H 5150 4550 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 5300 4450 50  0001 C CNN
F 3 "~" H 5300 4450 50  0001 C CNN
	1    5300 4450
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J15
U 1 1 60AC39D0
P 5150 4450
F 0 "J15" H 5100 4550 50  0000 L CNN
F 1 "Conn_01x01" H 4750 4350 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 5150 4450 50  0001 C CNN
F 3 "~" H 5150 4450 50  0001 C CNN
	1    5150 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4350 4600 4350
Wire Wire Line
	4400 4150 4500 4150
Wire Wire Line
	4600 4350 4600 2700
Connection ~ 4600 4350
Wire Wire Line
	4600 4350 5500 4350
Wire Wire Line
	4500 2500 4500 4150
Connection ~ 4500 4150
Wire Wire Line
	4500 4150 5500 4150
Wire Wire Line
	6550 4000 6250 4000
Wire Wire Line
	6250 4000 6250 3600
Wire Wire Line
	6250 4000 6250 4200
Wire Wire Line
	6250 4200 6550 4200
Connection ~ 6250 4000
Wire Wire Line
	6550 4100 6150 4100
Wire Wire Line
	6150 4100 6150 3600
$EndSCHEMATC
