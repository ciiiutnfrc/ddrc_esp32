EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
Title "Controlador embebido para robot de tracción diferencial"
Date "2022-03-12"
Rev "0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:USB_B J2
U 1 1 6219EC5E
P 2560 3045
F 0 "J2" H 2617 3512 50  0000 C CNN
F 1 "USB_B" H 2617 3421 50  0000 C CNN
F 2 "Connector_USB:USB_B_OST_USB-B1HSxx_Horizontal" H 2710 2995 50  0001 C CNN
F 3 " ~" H 2710 2995 50  0001 C CNN
	1    2560 3045
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 621AB031
P 2560 3695
F 0 "#PWR010" H 2560 3445 50  0001 C CNN
F 1 "GND" H 2565 3522 50  0000 C CNN
F 2 "" H 2560 3695 50  0001 C CNN
F 3 "" H 2560 3695 50  0001 C CNN
	1    2560 3695
	1    0    0    -1  
$EndComp
Wire Wire Line
	2560 3695 2560 3595
Wire Wire Line
	2460 3445 2460 3595
Wire Wire Line
	2460 3595 2560 3595
Connection ~ 2560 3595
Wire Wire Line
	2560 3595 2560 3445
Text GLabel 4285 2845 2    50   Output ~ 0
VBUS
Wire Wire Line
	2860 2845 3010 2845
Wire Wire Line
	3535 3220 3535 2845
Connection ~ 3535 2845
Wire Wire Line
	3535 2845 4285 2845
Text GLabel 4285 2595 2    50   Output ~ 0
5V
Text GLabel 4285 3045 2    50   UnSpc ~ 0
USB_D+
Text GLabel 4285 3145 2    50   UnSpc ~ 0
USB_D-
$Comp
L power:GND #PWR011
U 1 1 621B1DA6
P 3535 3695
F 0 "#PWR011" H 3535 3445 50  0001 C CNN
F 1 "GND" H 3540 3522 50  0000 C CNN
F 2 "" H 3535 3695 50  0001 C CNN
F 3 "" H 3535 3695 50  0001 C CNN
	1    3535 3695
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 622C7689
P 3325 5750
F 0 "R17" V 3118 5750 50  0000 C CNN
F 1 "10k" V 3209 5750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3255 5750 50  0001 C CNN
F 3 "~" H 3325 5750 50  0001 C CNN
	1    3325 5750
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 622CA65E
P 3325 6500
F 0 "R10" V 3118 6500 50  0000 C CNN
F 1 "10k" V 3209 6500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3255 6500 50  0001 C CNN
F 3 "~" H 3325 6500 50  0001 C CNN
	1    3325 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	3175 6500 2975 6500
Wire Wire Line
	2975 6500 2975 6050
Wire Wire Line
	2975 6050 4025 6050
Wire Wire Line
	3175 5750 2850 5750
Wire Wire Line
	2850 5750 2850 6200
Wire Wire Line
	2850 6200 4025 6200
Text GLabel 4225 5450 2    50   UnSpc ~ 0
EN
Text GLabel 4225 6800 2    50   UnSpc ~ 0
BOOT
Wire Wire Line
	4025 6800 4225 6800
Wire Wire Line
	4225 5450 4025 5450
Text GLabel 2725 5750 0    50   UnSpc ~ 0
DTR
Text GLabel 2725 6500 0    50   UnSpc ~ 0
RTS
Wire Wire Line
	2725 6500 2975 6500
Connection ~ 2975 6500
Wire Wire Line
	2725 5750 2850 5750
Connection ~ 2850 5750
$Comp
L SS34:SS34 D4
U 1 1 622C8C4A
P 4285 2595
F 0 "D4" H 4685 2328 50  0000 C CNN
F 1 "SS34" H 4685 2419 50  0000 C CNN
F 2 "Diode_SMD:D_SMA" H 4785 2745 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/2/SS34.pdf" H 4785 2645 50  0001 L CNN
F 4 "ON Semi SS34 SMT Schottky Diode, 40V 3A, 2-Pin DO-214AB" H 4785 2545 50  0001 L CNN "Description"
F 5 "2.56" H 4785 2445 50  0001 L CNN "Height"
F 6 "ON Semiconductor" H 4785 2345 50  0001 L CNN "Manufacturer_Name"
F 7 "SS34" H 4785 2245 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "512-SS34" H 4785 2145 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/ON-Semiconductor-Fairchild/SS34?qs=2ONuHmP%2FXzb3ub11UdFfdQ%3D%3D" H 4785 2045 50  0001 L CNN "Mouser Price/Stock"
F 10 "SS34" H 4785 1945 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/ss34/on-semiconductor?region=nac" H 4785 1845 50  0001 L CNN "Arrow Price/Stock"
	1    4285 2595
	-1   0    0    1   
$EndComp
Wire Wire Line
	4185 2595 4285 2595
Wire Wire Line
	2860 3045 4285 3045
Wire Wire Line
	2860 3145 4285 3145
$Comp
L Device:C C8
U 1 1 62292E0F
P 3535 3370
F 0 "C8" H 3650 3416 50  0000 L CNN
F 1 "10nF" H 3650 3325 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3573 3220 50  0001 C CNN
F 3 "~" H 3535 3370 50  0001 C CNN
	1    3535 3370
	1    0    0    -1  
$EndComp
Wire Wire Line
	3535 3695 3535 3520
$Comp
L Device:Ferrite_Bead FB1
U 1 1 62299F75
P 3160 2845
F 0 "FB1" V 2886 2845 50  0000 C CNN
F 1 "Ferrite_Bead" V 2977 2845 50  0000 C CNN
F 2 "Inductor_THT:L_Axial_L5.0mm_D3.6mm_P10.00mm_Horizontal_Murata_BL01RN1A2A2" V 3090 2845 50  0001 C CNN
F 3 "~" H 3160 2845 50  0001 C CNN
	1    3160 2845
	0    1    1    0   
$EndComp
Wire Wire Line
	3585 2595 3535 2595
Wire Wire Line
	3535 2595 3535 2845
Wire Wire Line
	3310 2845 3535 2845
$Comp
L Interface_USB:FT232RL U1
U 1 1 62226C44
P 7460 3240
F 0 "U1" H 7935 4265 50  0000 C CNN
F 1 "FT232RL" H 7935 4165 50  0000 C CNN
F 2 "Package_SO:SSOP-28_5.3x10.2mm_P0.65mm" H 8560 2340 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT232R.pdf" H 7460 3240 50  0001 C CNN
	1    7460 3240
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 622B8ACD
P 7460 4465
F 0 "#PWR015" H 7460 4215 50  0001 C CNN
F 1 "GND" H 7465 4292 50  0000 C CNN
F 2 "" H 7460 4465 50  0001 C CNN
F 3 "" H 7460 4465 50  0001 C CNN
	1    7460 4465
	1    0    0    -1  
$EndComp
Wire Wire Line
	7260 4240 7260 4365
Wire Wire Line
	7260 4365 7460 4365
Wire Wire Line
	7460 4365 7460 4465
Wire Wire Line
	7660 4240 7660 4365
Wire Wire Line
	7660 4365 7560 4365
Connection ~ 7460 4365
Wire Wire Line
	7460 4240 7460 4365
Wire Wire Line
	7560 4240 7560 4365
Connection ~ 7560 4365
Wire Wire Line
	7560 4365 7460 4365
Text GLabel 7560 1965 1    50   Input ~ 0
5V
Wire Wire Line
	7560 1965 7560 2240
Wire Wire Line
	7360 2240 7360 1965
$Comp
L power:GND #PWR014
U 1 1 622C0D30
P 5835 2865
F 0 "#PWR014" H 5835 2615 50  0001 C CNN
F 1 "GND" H 5840 2692 50  0000 C CNN
F 2 "" H 5835 2865 50  0001 C CNN
F 3 "" H 5835 2865 50  0001 C CNN
	1    5835 2865
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 622C11EE
P 5835 2715
F 0 "C7" H 5950 2761 50  0000 L CNN
F 1 "100nF" H 5950 2670 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5873 2565 50  0001 C CNN
F 3 "~" H 5835 2715 50  0001 C CNN
	1    5835 2715
	1    0    0    -1  
$EndComp
Wire Wire Line
	6660 2540 5835 2540
Wire Wire Line
	5835 2540 5835 2565
Text GLabel 6535 2840 0    50   UnSpc ~ 0
USB_D+
Text GLabel 6535 2940 0    50   UnSpc ~ 0
USB_D-
Wire Wire Line
	6535 2840 6660 2840
Wire Wire Line
	6660 2940 6535 2940
Text GLabel 8485 2640 2    50   UnSpc ~ 0
TXD0
Text GLabel 8485 2540 2    50   UnSpc ~ 0
RXD0
Wire Wire Line
	8260 2540 8485 2540
Wire Wire Line
	8485 2640 8260 2640
$Comp
L Device:C C15
U 1 1 622DF0D0
P 5545 4325
F 0 "C15" H 5660 4371 50  0000 L CNN
F 1 "100nF" H 5660 4280 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 5583 4175 50  0001 C CNN
F 3 "~" H 5545 4325 50  0001 C CNN
	1    5545 4325
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 622DF5E1
P 5995 4325
F 0 "C10" H 6110 4371 50  0000 L CNN
F 1 "4.7uF" H 6110 4280 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric" H 6033 4175 50  0001 C CNN
F 3 "~" H 5995 4325 50  0001 C CNN
	1    5995 4325
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 622F3193
P 5545 4475
F 0 "#PWR012" H 5545 4225 50  0001 C CNN
F 1 "GND" H 5550 4302 50  0000 C CNN
F 2 "" H 5545 4475 50  0001 C CNN
F 3 "" H 5545 4475 50  0001 C CNN
	1    5545 4475
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 622F330C
P 5995 4475
F 0 "#PWR013" H 5995 4225 50  0001 C CNN
F 1 "GND" H 6000 4302 50  0000 C CNN
F 2 "" H 5995 4475 50  0001 C CNN
F 3 "" H 5995 4475 50  0001 C CNN
	1    5995 4475
	1    0    0    -1  
$EndComp
Wire Wire Line
	5545 4175 5545 3950
Wire Wire Line
	5545 3950 5995 3950
Wire Wire Line
	5995 3950 5995 4175
Text GLabel 5320 3950 0    50   UnSpc ~ 0
5V
Wire Wire Line
	5320 3950 5545 3950
Connection ~ 5545 3950
Wire Wire Line
	6660 3940 6610 3940
Wire Wire Line
	6610 3940 6610 4365
Wire Wire Line
	6610 4365 7260 4365
Connection ~ 7260 4365
Text GLabel 8485 2740 2    50   UnSpc ~ 0
RTS
Text GLabel 8485 2940 2    50   UnSpc ~ 0
DTR
Wire Wire Line
	8485 2740 8260 2740
Wire Wire Line
	8260 2940 8485 2940
$Comp
L Device:LED D2
U 1 1 62305354
P 9160 3290
F 0 "D2" V 9199 3172 50  0000 R CNN
F 1 "LED" V 9108 3172 50  0000 R CNN
F 2 "LED_SMD:LED_0402_1005Metric_Pad0.77x0.64mm_HandSolder" H 9160 3290 50  0001 C CNN
F 3 "~" H 9160 3290 50  0001 C CNN
	1    9160 3290
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 62306328
P 9585 3290
F 0 "D3" V 9624 3172 50  0000 R CNN
F 1 "LED" V 9533 3172 50  0000 R CNN
F 2 "LED_SMD:LED_0402_1005Metric_Pad0.77x0.64mm_HandSolder" H 9585 3290 50  0001 C CNN
F 3 "~" H 9585 3290 50  0001 C CNN
	1    9585 3290
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9160 3440 9160 3540
Wire Wire Line
	9160 3540 8260 3540
Wire Wire Line
	9585 3440 9585 3640
Wire Wire Line
	9585 3640 8260 3640
$Comp
L Device:R R2
U 1 1 6230B299
P 9160 2915
F 0 "R2" H 9230 2961 50  0000 L CNN
F 1 "270" H 9230 2870 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9090 2915 50  0001 C CNN
F 3 "~" H 9160 2915 50  0001 C CNN
	1    9160 2915
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 6230B9C7
P 9585 2915
F 0 "R3" H 9655 2961 50  0000 L CNN
F 1 "270" H 9655 2870 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9515 2915 50  0001 C CNN
F 3 "~" H 9585 2915 50  0001 C CNN
	1    9585 2915
	1    0    0    -1  
$EndComp
Wire Wire Line
	9160 3065 9160 3140
Wire Wire Line
	9585 3065 9585 3140
Text GLabel 9160 2640 1    50   Input ~ 0
3V3
Text GLabel 9585 2640 1    50   Input ~ 0
3V3
Wire Wire Line
	9585 2640 9585 2765
Wire Wire Line
	9160 2640 9160 2765
Wire Notes Line
	5070 3750 6320 3750
Wire Notes Line
	6320 3750 6320 4775
Wire Notes Line
	6320 4775 5070 4775
Wire Notes Line
	5070 4775 5070 3750
Text Notes 5070 3725 0    50   ~ 0
Distribuidos en la linea de 5V\n
NoConn ~ 8260 2840
NoConn ~ 8260 3040
NoConn ~ 8260 3140
NoConn ~ 8260 3240
NoConn ~ 6660 3440
NoConn ~ 6660 3640
Text GLabel 7360 1965 1    50   Input ~ 0
3V3
Text GLabel 5435 2740 1    50   Input ~ 0
5V
$Comp
L Device:R R28
U 1 1 623B845B
P 5435 2965
F 0 "R28" H 5505 3011 50  0000 L CNN
F 1 "1k" H 5505 2920 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5365 2965 50  0001 C CNN
F 3 "~" H 5435 2965 50  0001 C CNN
	1    5435 2965
	1    0    0    -1  
$EndComp
Wire Wire Line
	5435 3115 5435 3240
Wire Wire Line
	5435 3240 6660 3240
Wire Wire Line
	5435 2740 5435 2815
NoConn ~ 8260 3740
NoConn ~ 8260 3840
NoConn ~ 8260 3940
Wire Notes Line width 12
	1950 1300 4850 1300
Wire Notes Line width 12
	4850 1300 4850 4900
Wire Notes Line width 12
	4850 4900 1950 4900
Wire Notes Line width 12
	1950 4900 1950 1300
Wire Notes Line width 12
	4950 1300 9950 1300
Wire Notes Line width 12
	9950 1300 9950 4900
Wire Notes Line width 12
	9950 4900 4950 4900
Wire Notes Line width 12
	4950 4900 4950 1300
Text Notes 2650 1500 0    118  ~ 0
CONECTOR USB
Text Notes 6400 1500 0    118  ~ 0
CONVERSOR USB-UART
Wire Notes Line width 12
	1950 1550 4850 1550
Wire Notes Line width 12
	4950 1550 9950 1550
Wire Notes Line width 12
	1950 5000 4850 5000
Wire Notes Line width 12
	4850 5000 4850 6900
Wire Notes Line width 12
	4850 6900 1950 6900
Wire Notes Line width 12
	1950 6900 1950 5000
Text Notes 2700 5200 0    118  ~ 0
RESET POR USB
Wire Notes Line width 12
	1950 5250 4850 5250
$Comp
L MMS8050-H-TP:MMS8050-H-TP Q2
U 1 1 62A2A069
P 3625 5750
F 0 "Q2" H 4163 5796 50  0000 L CNN
F 1 "MMS8050-H-TP" H 4163 5705 50  0000 L CNN
F 2 "proyecto_esp:SOT96P237X122-3N" H 4175 5600 50  0001 L CNN
F 3 "https://mouser.componentsearchengine.com/Datasheets/1/MMS8050-H-TP.pdf" H 4175 5500 50  0001 L CNN
F 4 "Bipolar Transistors - BJT NPN SILICON PLASTIC-ENCAPSULATE TRANSISTOR" H 4175 5400 50  0001 L CNN "Description"
F 5 "1.22" H 4175 5300 50  0001 L CNN "Height"
F 6 "Micro Commercial Components (MCC)" H 4175 5200 50  0001 L CNN "Manufacturer_Name"
F 7 "MMS8050-H-TP" H 4175 5100 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "833-MMS8050-H-TP" H 4175 5000 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Micro-Commercial-Components-MCC/MMS8050-H-TP?qs=y6ZabgHbY%252Bwohxnqwm2Wtw%3D%3D" H 4175 4900 50  0001 L CNN "Mouser Price/Stock"
F 10 "MMS8050-H-TP" H 4175 4800 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/mms8050-h-tp/micro-commercial-components?region=europe" H 4175 4700 50  0001 L CNN "Arrow Price/Stock"
	1    3625 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3625 5750 3475 5750
$Comp
L MMS8050-H-TP:MMS8050-H-TP Q1
U 1 1 62A37F14
P 3625 6500
F 0 "Q1" H 4163 6454 50  0000 L CNN
F 1 "MMS8050-H-TP" H 4163 6545 50  0000 L CNN
F 2 "proyecto_esp:SOT96P237X122-3N" H 4175 6350 50  0001 L CNN
F 3 "https://mouser.componentsearchengine.com/Datasheets/1/MMS8050-H-TP.pdf" H 4175 6250 50  0001 L CNN
F 4 "Bipolar Transistors - BJT NPN SILICON PLASTIC-ENCAPSULATE TRANSISTOR" H 4175 6150 50  0001 L CNN "Description"
F 5 "1.22" H 4175 6050 50  0001 L CNN "Height"
F 6 "Micro Commercial Components (MCC)" H 4175 5950 50  0001 L CNN "Manufacturer_Name"
F 7 "MMS8050-H-TP" H 4175 5850 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "833-MMS8050-H-TP" H 4175 5750 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Micro-Commercial-Components-MCC/MMS8050-H-TP?qs=y6ZabgHbY%252Bwohxnqwm2Wtw%3D%3D" H 4175 5650 50  0001 L CNN "Mouser Price/Stock"
F 10 "MMS8050-H-TP" H 4175 5550 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/mms8050-h-tp/micro-commercial-components?region=europe" H 4175 5450 50  0001 L CNN "Arrow Price/Stock"
	1    3625 6500
	1    0    0    1   
$EndComp
Wire Wire Line
	3475 6500 3625 6500
$EndSCHEMATC
