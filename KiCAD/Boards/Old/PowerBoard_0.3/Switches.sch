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
Wire Wire Line
	6700 5550 6900 5550
Wire Wire Line
	6900 5350 6700 5350
Wire Wire Line
	6700 5450 6900 5450
Wire Wire Line
	6700 5550 6700 5900
Wire Wire Line
	6700 5350 6700 5100
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
	6300 5000 6300 5100
Wire Wire Line
	5400 4800 5500 4800
Wire Wire Line
	5400 5000 6300 5000
Wire Wire Line
	5400 4800 5400 5000
Text Notes 5900 3650 2    50   ~ 0
Charge/Output
Text Notes 4300 4550 2    50   ~ 0
On/Off
Wire Wire Line
	4400 4150 5500 4150
Wire Wire Line
	4400 4350 5500 4350
Text HLabel 4900 2050 1    50   Input ~ 0
5V_-
Text HLabel 4600 2050 1    50   Input ~ 0
USB_-
Text HLabel 5300 2050 1    50   Input ~ 0
12V_-
Text HLabel 4800 2050 1    50   Input ~ 0
BAT_-
Text HLabel 5400 2050 1    50   Input ~ 0
CC_-
Text HLabel 5000 2050 1    50   Input ~ 0
DC_+
Text HLabel 5200 2050 1    50   Input ~ 0
BAT_+
Wire Wire Line
	5350 4600 5500 4600
$Comp
L Custom:SW_3PDT_x3 SW2
U 3 1 60C7C3AE
P 5700 4700
F 0 "SW2" H 5700 4985 50  0000 C CNN
F 1 "SW_3PDT_x3" H 5700 4894 50  0000 C CNN
F 2 "Custom:3PDT" H 5700 4700 50  0001 C CNN
F 3 "~" H 5700 4700 50  0001 C CNN
	3    5700 4700
	-1   0    0    1   
$EndComp
$Comp
L Custom:SW_3PDT_x3 SW2
U 2 1 60C7CD3E
P 5700 4250
F 0 "SW2" H 5700 4535 50  0000 C CNN
F 1 "SW_3PDT_x3" H 5700 4444 50  0000 C CNN
F 2 "Custom:3PDT" H 5700 4250 50  0001 C CNN
F 3 "~" H 5700 4250 50  0001 C CNN
	2    5700 4250
	-1   0    0    1   
$EndComp
$Comp
L Custom:SW_3PDT_x3 SW2
U 1 1 60C7D8F9
P 5700 3800
F 0 "SW2" H 5700 4085 50  0000 C CNN
F 1 "SW_3PDT_x3" H 5700 3994 50  0000 C CNN
F 2 "Custom:3PDT" H 5700 3800 50  0001 C CNN
F 3 "~" H 5700 3800 50  0001 C CNN
	1    5700 3800
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x09 J13
U 1 1 60CEE61F
P 5000 2400
F 0 "J13" V 5000 1750 50  0000 C CNN
F 1 "Conn_01x09" V 5000 1400 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x09_P2.54mm_Vertical" H 5000 2400 50  0001 C CNN
F 3 "~" H 5000 2400 50  0001 C CNN
	1    5000 2400
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x09 J12
U 1 1 60CEF5AF
P 5000 2250
F 0 "J12" V 5000 1600 50  0000 C CNN
F 1 "Conn_01x09" V 5000 1250 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x09_P2.54mm_Vertical" H 5000 2250 50  0001 C CNN
F 3 "~" H 5000 2250 50  0001 C CNN
	1    5000 2250
	0    -1   1    0   
$EndComp
Text GLabel 4800 2600 3    50   Input ~ 0
Bridge_BAT_-
Text GLabel 5200 2600 3    50   Input ~ 0
Bridge_BAT_+
Text GLabel 5400 2600 3    50   Input ~ 0
Bridge_CC_-
Text GLabel 5350 4600 0    50   Input ~ 0
Bridge_CC_-
Text GLabel 5100 2600 3    50   Input ~ 0
Bridge_Meter_+
Text GLabel 5900 3800 2    50   Input ~ 0
Bridge_Meter_+
Text GLabel 4900 2600 3    50   Input ~ 0
Bridge_5v_-
Text GLabel 6900 5350 2    50   Input ~ 0
Bridge_5v_-
Text GLabel 6900 5450 2    50   Input ~ 0
Bridge_USB_-
Text GLabel 5300 2600 3    50   Input ~ 0
Bridge_12V_-
Text GLabel 6900 5550 2    50   Input ~ 0
Bridge_12V_-
Text GLabel 5000 2600 3    50   Input ~ 0
Bridge_DC_+
Text HLabel 5100 2050 1    50   Input ~ 0
Meter_+
Text GLabel 5500 3900 0    50   Input ~ 0
Bridge_BAT_+
Text HLabel 4700 2050 1    50   Input ~ 0
DC_-
Text Notes 3050 4300 1    50   ~ 0
DC Input
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 60E2E712
P 3150 4050
AR Path="/60E2E712" Ref="J?"  Part="1" 
AR Path="/609B92A7/60E2E712" Ref="J11"  Part="1" 
F 0 "J11" H 3068 4267 50  0000 C CNN
F 1 "Conn_01x02" H 3068 4176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3150 4050 50  0001 C CNN
F 3 "~" H 3150 4050 50  0001 C CNN
	1    3150 4050
	-1   0    0    -1  
$EndComp
Text GLabel 5500 3700 0    50   Input ~ 0
Bridge_DC_+
Text GLabel 4600 2600 3    50   Input ~ 0
Bridge_USB_-
Text GLabel 4700 2600 3    50   Input ~ 0
Bridge_DC_-
Text GLabel 4000 4350 0    50   Input ~ 0
Bridge_BAT_-
Text GLabel 3350 4050 2    50   Input ~ 0
Bridge_DC_+
Wire Wire Line
	6300 5100 6300 5450
Connection ~ 6300 5100
Connection ~ 6300 5450
Wire Wire Line
	6300 5450 6300 5900
Wire Wire Line
	3350 4150 4000 4150
Text GLabel 4650 4150 1    50   Input ~ 0
Bridge_DC_-
Text Notes 6900 4350 2    50   ~ 0
Current Meter
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 60BD9409
P 6150 4250
AR Path="/609B92A7/60BD9409" Ref="J4"  Part="1" 
AR Path="/60BD9409" Ref="J?"  Part="1" 
F 0 "J4" H 6230 4242 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 6230 4151 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-5.0-H_1x02_P5.00mm_Horizontal" H 6150 4250 50  0001 C CNN
F 3 "~" H 6150 4250 50  0001 C CNN
	1    6150 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4250 5950 4250
Wire Wire Line
	5950 4700 5900 4700
Wire Wire Line
	5950 4350 5950 4700
$EndSCHEMATC
