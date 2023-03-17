EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title "Controlador embebido para robot de tracción diferencial"
Date "2022-03-12"
Rev "0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 4275 2750 0    50   Input ~ 0
12V
Text GLabel 4075 4725 0    50   Input ~ 0
5V
Text GLabel 7550 2750 2    50   Output ~ 0
5V
Text GLabel 5925 4725 2    50   Output ~ 0
3V3
Wire Wire Line
	4075 4725 4650 4725
Wire Wire Line
	5250 4725 5450 4725
Wire Wire Line
	5450 4875 5450 4725
$Comp
L Device:CP C16
U 1 1 621CC21A
P 5450 5025
F 0 "C16" H 5568 5071 50  0000 L CNN
F 1 "22uF" H 5568 4980 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 5488 4875 50  0001 C CNN
F 3 "~" H 5450 5025 50  0001 C CNN
	1    5450 5025
	1    0    0    -1  
$EndComp
Connection ~ 5450 4725
Wire Wire Line
	5450 4725 5925 4725
$Comp
L Regulator_Linear:AMS1117-3.3 U4
U 1 1 621B6F5D
P 4950 4725
F 0 "U4" H 4950 4967 50  0000 C CNN
F 1 "AMS1117-3.3" H 4950 4876 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4950 4925 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 5050 4475 50  0001 C CNN
	1    4950 4725
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 621CD8F1
P 5450 5175
F 0 "#PWR017" H 5450 4925 50  0001 C CNN
F 1 "GND" H 5455 5002 50  0000 C CNN
F 2 "" H 5450 5175 50  0001 C CNN
F 3 "" H 5450 5175 50  0001 C CNN
	1    5450 5175
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 621BABFE
P 4950 5175
F 0 "#PWR016" H 4950 4925 50  0001 C CNN
F 1 "GND" H 4955 5002 50  0000 C CNN
F 2 "" H 4950 5175 50  0001 C CNN
F 3 "" H 4950 5175 50  0001 C CNN
	1    4950 5175
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 5025 4950 5175
$Comp
L Device:LED D1
U 1 1 62281008
P 7550 4725
F 0 "D1" H 7543 4470 50  0000 C CNN
F 1 "LED" H 7543 4561 50  0000 C CNN
F 2 "LED_SMD:LED_0402_1005Metric_Pad0.77x0.64mm_HandSolder" H 7550 4725 50  0001 C CNN
F 3 "~" H 7550 4725 50  0001 C CNN
	1    7550 4725
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 622818DB
P 7075 4725
F 0 "R1" V 7282 4725 50  0000 C CNN
F 1 "270" V 7191 4725 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7005 4725 50  0001 C CNN
F 3 "~" H 7075 4725 50  0001 C CNN
	1    7075 4725
	0    -1   -1   0   
$EndComp
Text GLabel 6700 4725 0    50   Input ~ 0
3V3
$Comp
L power:GND #PWR021
U 1 1 62281EF2
P 7875 4800
F 0 "#PWR021" H 7875 4550 50  0001 C CNN
F 1 "GND" H 7880 4627 50  0000 C CNN
F 2 "" H 7875 4800 50  0001 C CNN
F 3 "" H 7875 4800 50  0001 C CNN
	1    7875 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7875 4800 7875 4725
Wire Wire Line
	7875 4725 7700 4725
Wire Wire Line
	7400 4725 7225 4725
Wire Wire Line
	6925 4725 6700 4725
Wire Notes Line width 12
	3750 1950 8050 1950
Wire Notes Line width 12
	8050 1950 8050 3750
Wire Notes Line width 12
	8050 3750 3750 3750
Wire Notes Line width 12
	3750 3750 3750 1950
Text Notes 4825 2150 0    118  ~ 0
REGULADOR 5V (BUCK)
Wire Notes Line width 12
	3750 2200 8050 2200
Wire Notes Line width 12
	8050 3850 8050 5650
Wire Notes Line width 12
	3750 5650 3750 3850
Text Notes 4250 4050 0    118  ~ 0
REGULADOR 3.3V
Wire Notes Line width 12
	6350 3850 6350 5650
Wire Notes Line width 12
	6250 4100 3750 4100
Wire Notes Line width 12
	6250 3850 6250 5650
Wire Notes Line width 12
	6350 4100 8050 4100
Wire Notes Line width 12
	6350 5650 8050 5650
Wire Notes Line width 12
	6250 5650 3750 5650
Text Notes 6500 4050 0    118  ~ 0
LED ENCENDIDO
Wire Notes Line width 12
	6350 3850 8050 3850
Wire Notes Line width 12
	6250 3850 3750 3850
$Comp
L Regulator_Switching:LM2596S-5 U5
U 1 1 6236C7DF
P 5725 2850
F 0 "U5" H 5725 3217 50  0000 C CNN
F 1 "LM2596S-5" H 5725 3126 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 5775 2600 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2596.pdf" H 5725 2850 50  0001 C CNN
	1    5725 2850
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5822 D10
U 1 1 6236D627
P 6350 3150
F 0 "D10" V 6304 3230 50  0000 L CNN
F 1 "1N5824" V 6395 3230 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 6350 2975 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88526/1n5820.pdf" H 6350 3150 50  0001 C CNN
	1    6350 3150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 6236EBA1
P 6350 3300
F 0 "#PWR031" H 6350 3050 50  0001 C CNN
F 1 "GND" H 6355 3127 50  0000 C CNN
F 2 "" H 6350 3300 50  0001 C CNN
F 3 "" H 6350 3300 50  0001 C CNN
	1    6350 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 6236ED34
P 5725 3300
F 0 "#PWR020" H 5725 3050 50  0001 C CNN
F 1 "GND" H 5730 3127 50  0000 C CNN
F 2 "" H 5725 3300 50  0001 C CNN
F 3 "" H 5725 3300 50  0001 C CNN
	1    5725 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5725 3150 5725 3300
Wire Wire Line
	6225 2950 6350 2950
Wire Wire Line
	6350 2950 6350 3000
$Comp
L Device:L L1
U 1 1 6237350D
P 6550 2950
F 0 "L1" V 6625 2950 50  0000 C CNN
F 1 "33uH" V 6500 2950 50  0000 C CNN
F 2 "Inductor_SMD:L_12x12mm_H8mm" H 6550 2950 50  0001 C CNN
F 3 "~" H 6550 2950 50  0001 C CNN
	1    6550 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 2950 6350 2950
Connection ~ 6350 2950
$Comp
L power:GND #PWR019
U 1 1 62374B50
P 5225 3300
F 0 "#PWR019" H 5225 3050 50  0001 C CNN
F 1 "GND" H 5230 3127 50  0000 C CNN
F 2 "" H 5225 3300 50  0001 C CNN
F 3 "" H 5225 3300 50  0001 C CNN
	1    5225 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5225 2950 5225 3300
$Comp
L Device:CP C18
U 1 1 623759C0
P 4750 3150
F 0 "C18" H 4868 3196 50  0000 L CNN
F 1 "680uF" H 4868 3105 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x11.9" H 4788 3000 50  0001 C CNN
F 3 "~" H 4750 3150 50  0001 C CNN
	1    4750 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C19
U 1 1 62376BBD
P 6975 3150
F 0 "C19" H 7093 3196 50  0000 L CNN
F 1 "220uF" H 7093 3105 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x11.9" H 7013 3000 50  0001 C CNN
F 3 "~" H 6975 3150 50  0001 C CNN
	1    6975 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6975 2950 6975 3000
Wire Wire Line
	4750 2750 4750 3000
$Comp
L power:GND #PWR018
U 1 1 62378273
P 4750 3300
F 0 "#PWR018" H 4750 3050 50  0001 C CNN
F 1 "GND" H 4755 3127 50  0000 C CNN
F 2 "" H 4750 3300 50  0001 C CNN
F 3 "" H 4750 3300 50  0001 C CNN
	1    4750 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR033
U 1 1 62378508
P 6975 3300
F 0 "#PWR033" H 6975 3050 50  0001 C CNN
F 1 "GND" H 6980 3127 50  0000 C CNN
F 2 "" H 6975 3300 50  0001 C CNN
F 3 "" H 6975 3300 50  0001 C CNN
	1    6975 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6975 2950 6975 2750
Connection ~ 6975 2950
Wire Wire Line
	6225 2750 6975 2750
Wire Wire Line
	6700 2950 6975 2950
Wire Wire Line
	7550 2750 6975 2750
Connection ~ 6975 2750
Wire Wire Line
	4275 2750 4750 2750
Connection ~ 4750 2750
Wire Wire Line
	4750 2750 5225 2750
$EndSCHEMATC