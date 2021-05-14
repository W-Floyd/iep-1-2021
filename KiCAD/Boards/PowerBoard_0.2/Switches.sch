EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 6700 5100 2    50   Input ~ 0
Battery_5V_Switched_+
Text HLabel 6700 5450 2    50   Input ~ 0
Battery_USB_Switched_+
Text HLabel 4000 4350 0    50   Input ~ 0
Battery_+
Text HLabel 6700 5900 2    50   Input ~ 0
Battery_Switched_+
Wire Wire Line
	6300 4450 5900 4450
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
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x06_P4.5mm_D0.65mm_OD2mm" H 5700 4550 50  0001 C CNN
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
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x06_P4.5mm_D0.65mm_OD2mm" H 5700 4250 50  0001 C CNN
F 3 "~" H 5700 4250 50  0001 C CNN
	1    5700 4250
	-1   0    0    -1  
$EndComp
Text Notes 4300 4550 2    50   ~ 0
On/Off
Text Notes 5950 3900 2    50   ~ 0
Charge/Output
Wire Wire Line
	5900 4350 6300 4350
Wire Wire Line
	5400 4650 5400 5000
Wire Wire Line
	5400 5000 6300 5000
Wire Wire Line
	5400 4650 5500 4650
Wire Wire Line
	6300 5000 6300 5100
Connection ~ 6300 5100
Text HLabel 4000 4150 0    50   Input ~ 0
DC_+
Text HLabel 5500 4450 0    50   Input ~ 0
DC_Switched_+
$Comp
L Switch:SW_SPST SW3
U 1 1 60BCE75E
P 6500 5100
F 0 "SW3" H 6500 5335 50  0000 C CNN
F 1 "SW_SPST" H 6500 5244 50  0000 C CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x02_P4.5mm_D0.65mm_OD2mm" H 6500 5100 50  0001 C CNN
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
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x02_P4.5mm_D0.65mm_OD2mm" H 6500 5450 50  0001 C CNN
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
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x02_P4.5mm_D0.65mm_OD2mm" H 6500 5900 50  0001 C CNN
F 3 "~" H 6500 5900 50  0001 C CNN
	1    6500 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4150 4600 4150
Wire Wire Line
	4400 4350 4500 4350
Connection ~ 4500 4350
Wire Wire Line
	4500 4350 5500 4350
Connection ~ 4600 4150
Wire Wire Line
	4600 4150 5500 4150
Wire Wire Line
	4600 2700 4600 4150
Wire Wire Line
	4500 2500 4500 4350
Wire Wire Line
	5450 2700 4600 2700
Wire Wire Line
	4500 2500 5450 2500
$Comp
L Switch:SW_DPDT_x2 SW6
U 2 1 60C319BF
P 5650 3050
F 0 "SW6" H 5650 3335 50  0000 C CNN
F 1 "SW_DPDT_x2" H 5650 3244 50  0000 C CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x06_P4.5mm_D0.65mm_OD2mm" H 5650 3050 50  0001 C CNN
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
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x06_P4.5mm_D0.65mm_OD2mm" H 5650 2600 50  0001 C CNN
F 3 "~" H 5650 2600 50  0001 C CNN
	1    5650 2600
	-1   0    0    -1  
$EndComp
Text HLabel 5450 3150 0    50   Input ~ 0
DC_-
Text HLabel 5450 2950 0    50   Input ~ 0
Battery_-
Wire Wire Line
	6250 2600 5850 2600
Wire Wire Line
	5850 3050 6150 3050
Wire Wire Line
	6150 3050 6150 4200
Text Notes 6250 2250 2    50   ~ 0
Voltage Meter Source\nCharge (DC) / Output (Battery)
$Comp
L Switch:SW_DPST SW1
U 1 1 609FA872
P 4200 4250
F 0 "SW1" H 4200 4575 50  0000 C CNN
F 1 "SW_DPST" H 4200 4484 50  0000 C CNN
F 2 "Connector_Wire:SolderWire-0.25sqmm_1x04_P4.5mm_D0.65mm_OD2mm" H 4200 4250 50  0001 C CNN
F 3 "~" H 4200 4250 50  0001 C CNN
	1    4200 4250
	1    0    0    -1  
$EndComp
$Comp
L Custom:CurrentVoltageModule M?
U 1 1 60A028DD
P 6850 4450
F 0 "M?" H 6850 4775 50  0000 C CNN
F 1 "CurrentVoltageModule" H 6850 4684 50  0000 C CNN
F 2 "" H 6850 4450 50  0001 C CNN
F 3 "" H 6850 4450 50  0001 C CNN
	1    6850 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4200 7450 4550
Wire Wire Line
	7450 4550 7400 4550
Wire Wire Line
	6150 4200 7450 4200
Wire Wire Line
	7400 4450 7500 4450
Wire Wire Line
	7500 4450 7500 4350
Wire Wire Line
	7500 4350 7400 4350
Wire Wire Line
	7500 4350 7500 4100
Wire Wire Line
	6250 4100 7500 4100
Connection ~ 7500 4350
Wire Wire Line
	6250 2600 6250 4100
$EndSCHEMATC
