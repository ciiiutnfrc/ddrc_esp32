EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
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
L Connector:RJ14 J3
U 1 1 6222F268
P 1850 1700
F 0 "J3" H 1907 2267 50  0000 C CNN
F 1 "RJ14" H 1907 2176 50  0000 C CNN
F 2 "Connector_RJ:RJ14_Connfly_DS1133-S4_Horizontal" V 1850 1725 50  0001 C CNN
F 3 "~" V 1850 1725 50  0001 C CNN
	1    1850 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 6222FB23
P 2500 2100
F 0 "#PWR024" H 2500 1850 50  0001 C CNN
F 1 "GND" H 2505 1927 50  0000 C CNN
F 2 "" H 2500 2100 50  0001 C CNN
F 3 "" H 2500 2100 50  0001 C CNN
	1    2500 2100
	1    0    0    -1  
$EndComp
Text GLabel 2500 1250 1    50   Input ~ 0
12V
Wire Wire Line
	2500 1250 2500 1600
Wire Wire Line
	2500 1600 2250 1600
Wire Wire Line
	2250 1800 2500 1800
Wire Wire Line
	2500 1800 2500 2100
$Comp
L Device:R R8
U 1 1 62230CD9
P 3200 1950
F 0 "R8" H 3270 1996 50  0000 L CNN
F 1 "10k" H 3270 1905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3130 1950 50  0001 C CNN
F 3 "~" H 3200 1950 50  0001 C CNN
	1    3200 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 622315DE
P 3650 1950
F 0 "R15" H 3720 1996 50  0000 L CNN
F 1 "10k" H 3720 1905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3580 1950 50  0001 C CNN
F 3 "~" H 3650 1950 50  0001 C CNN
	1    3650 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 622318CA
P 2850 1500
F 0 "R16" V 2643 1500 50  0000 C CNN
F 1 "27k" V 2734 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2780 1500 50  0001 C CNN
F 3 "~" H 2850 1500 50  0001 C CNN
	1    2850 1500
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 62231D68
P 2850 1700
F 0 "R9" V 2965 1700 50  0000 C CNN
F 1 "27k" V 3056 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2780 1700 50  0001 C CNN
F 3 "~" H 2850 1700 50  0001 C CNN
	1    2850 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 1500 2700 1500
Wire Wire Line
	2250 1700 2700 1700
Wire Wire Line
	3000 1700 3200 1700
Wire Wire Line
	3200 1700 3200 1800
Wire Wire Line
	3000 1500 3650 1500
Wire Wire Line
	3650 1500 3650 1800
$Comp
L power:GND #PWR026
U 1 1 62233C99
P 3200 2100
F 0 "#PWR026" H 3200 1850 50  0001 C CNN
F 1 "GND" H 3205 1927 50  0000 C CNN
F 2 "" H 3200 2100 50  0001 C CNN
F 3 "" H 3200 2100 50  0001 C CNN
	1    3200 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 62233F96
P 3650 2100
F 0 "#PWR028" H 3650 1850 50  0001 C CNN
F 1 "GND" H 3655 1927 50  0000 C CNN
F 2 "" H 3650 2100 50  0001 C CNN
F 3 "" H 3650 2100 50  0001 C CNN
	1    3650 2100
	1    0    0    -1  
$EndComp
Text GLabel 4125 1500 2    50   Output ~ 0
ENC_DER_A
Text GLabel 4125 1700 2    50   Output ~ 0
ENC_DER_B
Connection ~ 3650 1500
Connection ~ 3200 1700
$Comp
L Connector:RJ14 J4
U 1 1 6223F1FA
P 1850 3200
F 0 "J4" H 1907 3767 50  0000 C CNN
F 1 "RJ14" H 1907 3676 50  0000 C CNN
F 2 "Connector_RJ:RJ14_Connfly_DS1133-S4_Horizontal" V 1850 3225 50  0001 C CNN
F 3 "~" V 1850 3225 50  0001 C CNN
	1    1850 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 6223F200
P 2500 3600
F 0 "#PWR025" H 2500 3350 50  0001 C CNN
F 1 "GND" H 2505 3427 50  0000 C CNN
F 2 "" H 2500 3600 50  0001 C CNN
F 3 "" H 2500 3600 50  0001 C CNN
	1    2500 3600
	1    0    0    -1  
$EndComp
Text GLabel 2500 2750 1    50   Input ~ 0
12V
Wire Wire Line
	2500 2750 2500 3100
Wire Wire Line
	2500 3100 2250 3100
Wire Wire Line
	2250 3300 2500 3300
Wire Wire Line
	2500 3300 2500 3600
$Comp
L Device:R R21
U 1 1 6223F20B
P 3200 3450
F 0 "R21" H 3270 3496 50  0000 L CNN
F 1 "10k" H 3270 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3130 3450 50  0001 C CNN
F 3 "~" H 3200 3450 50  0001 C CNN
	1    3200 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R26
U 1 1 6223F211
P 3650 3450
F 0 "R26" H 3720 3496 50  0000 L CNN
F 1 "10k" H 3720 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3580 3450 50  0001 C CNN
F 3 "~" H 3650 3450 50  0001 C CNN
	1    3650 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R27
U 1 1 6223F217
P 2850 3000
F 0 "R27" V 2643 3000 50  0000 C CNN
F 1 "27k" V 2734 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2780 3000 50  0001 C CNN
F 3 "~" H 2850 3000 50  0001 C CNN
	1    2850 3000
	0    1    1    0   
$EndComp
$Comp
L Device:R R22
U 1 1 6223F21D
P 2850 3200
F 0 "R22" V 2965 3200 50  0000 C CNN
F 1 "27k" V 3056 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 2780 3200 50  0001 C CNN
F 3 "~" H 2850 3200 50  0001 C CNN
	1    2850 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 3000 2700 3000
Wire Wire Line
	2250 3200 2700 3200
Wire Wire Line
	3000 3200 3200 3200
Wire Wire Line
	3200 3200 3200 3300
Wire Wire Line
	3000 3000 3650 3000
Wire Wire Line
	3650 3000 3650 3300
$Comp
L power:GND #PWR027
U 1 1 6223F229
P 3200 3600
F 0 "#PWR027" H 3200 3350 50  0001 C CNN
F 1 "GND" H 3205 3427 50  0000 C CNN
F 2 "" H 3200 3600 50  0001 C CNN
F 3 "" H 3200 3600 50  0001 C CNN
	1    3200 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 6223F22F
P 3650 3600
F 0 "#PWR029" H 3650 3350 50  0001 C CNN
F 1 "GND" H 3655 3427 50  0000 C CNN
F 2 "" H 3650 3600 50  0001 C CNN
F 3 "" H 3650 3600 50  0001 C CNN
	1    3650 3600
	1    0    0    -1  
$EndComp
Text GLabel 4125 3000 2    50   Output ~ 0
ENC_IZQ_A
Text GLabel 4125 3200 2    50   Output ~ 0
ENC_IZQ_B
Wire Wire Line
	4125 3000 4000 3000
Connection ~ 3650 3000
Wire Wire Line
	4125 3200 4000 3200
Connection ~ 3200 3200
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J5
U 1 1 621EF5D3
P 1600 5200
F 0 "J5" H 1650 5617 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 1650 5526 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical_SMD" H 1600 5200 50  0001 C CNN
F 3 "~" H 1600 5200 50  0001 C CNN
	1    1600 5200
	1    0    0    -1  
$EndComp
NoConn ~ 1400 5300
$Comp
L power:GND #PWR023
U 1 1 621F305F
P 1200 5475
F 0 "#PWR023" H 1200 5225 50  0001 C CNN
F 1 "GND" H 1205 5302 50  0000 C CNN
F 2 "" H 1200 5475 50  0001 C CNN
F 3 "" H 1200 5475 50  0001 C CNN
	1    1200 5475
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 5400 1200 5400
Wire Wire Line
	1200 5400 1200 5475
Wire Wire Line
	1400 5100 1200 5100
Wire Wire Line
	1200 5100 1200 5200
Connection ~ 1200 5400
Wire Wire Line
	1400 5200 1200 5200
Connection ~ 1200 5200
Wire Wire Line
	1200 5200 1200 5400
Text GLabel 1200 4775 1    50   Input ~ 0
3V3
Wire Wire Line
	1200 5000 1200 4775
Wire Wire Line
	1400 5000 1200 5000
Text GLabel 2125 5000 2    50   UnSpc ~ 0
JTAG_TMS
Text GLabel 2125 5100 2    50   UnSpc ~ 0
JTAG_TCK
Text GLabel 2125 5200 2    50   UnSpc ~ 0
JTAG_TDO
Text GLabel 2125 5300 2    50   UnSpc ~ 0
JTAG_TDI
Text GLabel 3000 5400 2    50   UnSpc ~ 0
EN
Wire Wire Line
	2125 5000 1900 5000
Wire Wire Line
	1900 5100 2125 5100
Wire Wire Line
	1900 5200 2125 5200
Wire Wire Line
	1900 5300 2125 5300
$Comp
L Device:D D9
U 1 1 6222D643
P 2725 5400
F 0 "D9" H 2725 5617 50  0000 C CNN
F 1 "D" H 2725 5526 50  0000 C CNN
F 2 "Diode_SMD:D_SMA" H 2725 5400 50  0001 C CNN
F 3 "~" H 2725 5400 50  0001 C CNN
	1    2725 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5400 2875 5400
Wire Wire Line
	2575 5400 1900 5400
$Comp
L Connector_Generic:Conn_01x04 J7
U 1 1 6220CD49
P 5700 7075
F 0 "J7" H 5780 7067 50  0000 L CNN
F 1 "Conn_01x04" H 5780 6976 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 5700 7075 50  0001 C CNN
F 3 "~" H 5700 7075 50  0001 C CNN
	1    5700 7075
	1    0    0    -1  
$EndComp
Text GLabel 5300 7175 0    50   Input ~ 0
EN_MOT_IZQ
Text GLabel 5300 7275 0    50   Input ~ 0
PWM_IZQ
$Comp
L power:GND #PWR030
U 1 1 6220E4D7
P 4625 7400
F 0 "#PWR030" H 4625 7150 50  0001 C CNN
F 1 "GND" H 4630 7227 50  0000 C CNN
F 2 "" H 4625 7400 50  0001 C CNN
F 3 "" H 4625 7400 50  0001 C CNN
	1    4625 7400
	1    0    0    -1  
$EndComp
Text GLabel 4625 6900 1    50   Input ~ 0
12V
Wire Wire Line
	4625 6900 4625 6975
Wire Wire Line
	4625 6975 5500 6975
Wire Wire Line
	5500 7075 4625 7075
Wire Wire Line
	4625 7075 4625 7400
Wire Wire Line
	5500 7175 5450 7175
Wire Wire Line
	5300 7275 5450 7275
$Comp
L Connector_Generic:Conn_01x04 J6
U 1 1 622147E2
P 2575 7075
F 0 "J6" H 2655 7067 50  0000 L CNN
F 1 "Conn_01x04" H 2655 6976 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-04A_1x04_P2.54mm_Vertical" H 2575 7075 50  0001 C CNN
F 3 "~" H 2575 7075 50  0001 C CNN
	1    2575 7075
	1    0    0    -1  
$EndComp
Text GLabel 2175 7175 0    50   Input ~ 0
EN_MOT_DER
Text GLabel 2175 7275 0    50   Input ~ 0
PWM_DER
$Comp
L power:GND #PWR022
U 1 1 622147EA
P 1500 7400
F 0 "#PWR022" H 1500 7150 50  0001 C CNN
F 1 "GND" H 1505 7227 50  0000 C CNN
F 2 "" H 1500 7400 50  0001 C CNN
F 3 "" H 1500 7400 50  0001 C CNN
	1    1500 7400
	1    0    0    -1  
$EndComp
Text GLabel 1500 6900 1    50   Input ~ 0
12V
Wire Wire Line
	1500 6900 1500 6975
Wire Wire Line
	1500 6975 2375 6975
Wire Wire Line
	2375 7075 1500 7075
Wire Wire Line
	1500 7075 1500 7400
Wire Wire Line
	2375 7175 2300 7175
Wire Wire Line
	2175 7275 2300 7275
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J1
U 1 1 62233345
P 5050 5125
F 0 "J1" H 5100 5542 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 5100 5451 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 5050 5125 50  0001 C CNN
F 3 "~" H 5050 5125 50  0001 C CNN
	1    5050 5125
	1    0    0    -1  
$EndComp
NoConn ~ 5350 4925
NoConn ~ 5350 5025
NoConn ~ 4850 5025
NoConn ~ 4850 5125
Text GLabel 5475 5325 2    50   Output ~ 0
BOOT
Text GLabel 4700 5325 0    50   Output ~ 0
EN
Text GLabel 4700 5225 0    50   Input ~ 0
LED_EXT1
Text GLabel 5475 5225 2    50   Input ~ 0
LED_EXT2
Wire Wire Line
	4700 5225 4850 5225
Wire Wire Line
	4850 5325 4700 5325
Wire Wire Line
	5350 5325 5475 5325
Wire Wire Line
	5475 5225 5350 5225
$Comp
L power:GND #PWR032
U 1 1 6223E8F8
P 6000 5475
F 0 "#PWR032" H 6000 5225 50  0001 C CNN
F 1 "GND" H 6005 5302 50  0000 C CNN
F 2 "" H 6000 5475 50  0001 C CNN
F 3 "" H 6000 5475 50  0001 C CNN
	1    6000 5475
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 5125 6000 5125
Wire Wire Line
	6000 5125 6000 5475
Text GLabel 4550 4825 1    50   Input ~ 0
5V
Wire Wire Line
	4550 4825 4550 4925
Wire Wire Line
	4550 4925 4850 4925
$Comp
L power:GND #PWR038
U 1 1 623CD99B
P 9875 5375
F 0 "#PWR038" H 9875 5125 50  0001 C CNN
F 1 "GND" H 9880 5202 50  0000 C CNN
F 2 "" H 9875 5375 50  0001 C CNN
F 3 "" H 9875 5375 50  0001 C CNN
	1    9875 5375
	1    0    0    -1  
$EndComp
Wire Wire Line
	9875 5375 9875 5125
Wire Wire Line
	9875 5125 9775 5125
Text GLabel 10425 5025 2    50   Input ~ 0
5V
Wire Notes Line width 12
	11100 600  11100 4000
Wire Notes Line width 12
	600  4000 600  600 
Wire Notes Line width 12
	5700 4000 5700 600 
Wire Notes Line width 12
	5800 600  5800 4000
Wire Notes Line width 12
	5700 600  600  600 
Wire Notes Line width 12
	5800 600  11100 600 
Wire Notes Line width 12
	5800 4000 11100 4000
Wire Notes Line width 12
	5700 4000 600  4000
Text Notes 2650 800  0    118  ~ 0
ENCODERS
Text Notes 7500 800  0    118  ~ 0
SENSADO DE BATERIAS
Text Notes 805  2780 3    118  ~ 0
IZQUIERDO
Text Notes 805  2055 1    118  ~ 0
DERECHO
Wire Notes Line width 12
	5800 850  11100 850 
Wire Notes Line width 12
	5700 850  600  850 
Wire Notes Line width 12
	600  2450 5700 2450
Wire Notes Line width 12
	850  850  850  4000
Wire Notes Line width 12
	3550 4100 3550 5950
Wire Notes Line width 12
	600  5950 600  4100
Text Notes 1350 4300 0    118  ~ 0
CONECTOR JTAG
Wire Notes Line width 12
	6800 4100 6800 5950
Wire Notes Line width 12
	3650 5950 3650 4100
Text Notes 3975 4300 0    118  ~ 0
CONECTOR PANEL TRASERO
Wire Notes Line width 12
	11050 4100 11050 5950
Wire Notes Line width 12
	6900 5950 6900 4100
Text Notes 7050 4300 0    118  ~ 0
ALIMENTACIÓN 12V
Wire Notes Line width 12
	600  6050 6850 6050
Wire Notes Line width 12
	6850 6050 6850 7700
Wire Notes Line width 12
	6850 7700 600  7700
Wire Notes Line width 12
	600  7700 600  6050
Text Notes 2800 6250 0    118  ~ 0
SALIDAS A LLAVES H
Wire Notes Line width 12
	600  6300 6850 6300
Wire Notes Line width 12
	600  6550 6850 6550
Wire Notes Line width 12
	3600 6300 3600 7700
Text Notes 1350 6500 0    118  ~ 0
MOTOR DERECHO
Text Notes 4450 6500 0    118  ~ 0
MOTOR IZQUIERDO
Wire Wire Line
	6630 2935 6405 2935
Wire Wire Line
	6630 1835 6380 1835
Text GLabel 6630 1835 2    50   Input ~ 0
5V
Text GLabel 6630 2935 2    50   Input ~ 0
3V3
Wire Wire Line
	8995 2335 9070 2335
Wire Wire Line
	9070 3710 8995 3710
Text GLabel 8695 3710 0    50   Input ~ 0
3V3
Text GLabel 8695 2335 0    50   Input ~ 0
3V3
Wire Wire Line
	10370 3210 10170 3210
Connection ~ 10370 3210
Wire Wire Line
	10370 3610 10145 3610
Wire Wire Line
	10370 3210 10370 3610
Connection ~ 10370 1860
Wire Wire Line
	10370 2235 10370 1860
Wire Wire Line
	10145 2235 10370 2235
Wire Wire Line
	10620 3210 10495 3210
Wire Wire Line
	10170 1860 10370 1860
Wire Wire Line
	7195 1860 7195 1410
Connection ~ 7195 1860
Wire Wire Line
	7420 1860 7195 1860
Wire Wire Line
	7370 1660 7420 1660
Wire Wire Line
	7370 1310 7370 1660
Wire Wire Line
	6545 1310 7370 1310
Wire Wire Line
	7195 1410 6545 1410
Wire Wire Line
	6545 1510 7020 1510
Wire Wire Line
	8695 1760 8520 1760
Connection ~ 8695 1760
Wire Wire Line
	8695 2160 8695 1760
Wire Wire Line
	8470 2160 8695 2160
Wire Wire Line
	8695 3110 8870 3110
Connection ~ 8695 3110
Wire Wire Line
	8695 3510 8695 3110
Wire Wire Line
	8470 3510 8695 3510
Wire Wire Line
	8520 3110 8695 3110
Wire Wire Line
	7820 3210 7920 3210
Connection ~ 7820 3210
Wire Wire Line
	7820 3510 7820 3210
Wire Wire Line
	8170 3510 7820 3510
Wire Wire Line
	7820 3010 7920 3010
Connection ~ 7820 3010
Wire Wire Line
	7820 2860 7820 3010
Wire Wire Line
	9470 3610 9845 3610
Wire Wire Line
	9470 3310 9470 3610
Wire Wire Line
	9570 3310 9470 3310
Wire Wire Line
	9470 3110 9570 3110
Connection ~ 9470 3110
Wire Wire Line
	9470 2960 9470 3110
Wire Wire Line
	9370 3110 9470 3110
Wire Wire Line
	9470 2535 9470 2660
Wire Wire Line
	9270 2535 9470 2535
Wire Wire Line
	9270 2635 9270 2535
Wire Wire Line
	9470 2235 9845 2235
Wire Wire Line
	9470 1960 9470 2235
Wire Wire Line
	9570 1960 9470 1960
Wire Wire Line
	9470 1760 9370 1760
Connection ~ 9470 1760
Wire Wire Line
	9470 1610 9470 1760
Wire Wire Line
	9570 1760 9470 1760
Wire Wire Line
	9470 1160 9470 1310
Wire Wire Line
	9270 1160 9470 1160
Wire Wire Line
	9270 1260 9270 1160
Wire Wire Line
	7595 2385 7595 2485
Wire Wire Line
	7820 2385 7595 2385
Wire Wire Line
	7820 2560 7820 2385
Wire Wire Line
	7595 1060 7595 1135
Wire Wire Line
	7820 1060 7595 1060
Wire Wire Line
	7820 1210 7820 1060
Wire Wire Line
	7820 1660 7920 1660
Connection ~ 7820 1660
Wire Wire Line
	7820 1510 7820 1660
Wire Wire Line
	7820 1860 7720 1860
Connection ~ 7820 1860
Wire Wire Line
	7820 2160 7820 1860
Wire Wire Line
	8170 2160 7820 2160
$Comp
L power:GND #PWR035
U 1 1 6247A08B
P 6405 3535
F 0 "#PWR035" H 6405 3285 50  0001 C CNN
F 1 "GND" H 6410 3362 50  0000 C CNN
F 2 "" H 6405 3535 50  0001 C CNN
F 3 "" H 6405 3535 50  0001 C CNN
	1    6405 3535
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR034
U 1 1 6247764A
P 6380 2435
F 0 "#PWR034" H 6380 2185 50  0001 C CNN
F 1 "GND" H 6385 2262 50  0000 C CNN
F 2 "" H 6380 2435 50  0001 C CNN
F 3 "" H 6380 2435 50  0001 C CNN
	1    6380 2435
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR037
U 1 1 62476A92
P 7595 2485
F 0 "#PWR037" H 7595 2235 50  0001 C CNN
F 1 "GND" H 7600 2312 50  0000 C CNN
F 2 "" H 7595 2485 50  0001 C CNN
F 3 "" H 7595 2485 50  0001 C CNN
	1    7595 2485
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR036
U 1 1 62475FCF
P 7595 1135
F 0 "#PWR036" H 7595 885 50  0001 C CNN
F 1 "GND" H 7600 962 50  0000 C CNN
F 2 "" H 7595 1135 50  0001 C CNN
F 3 "" H 7595 1135 50  0001 C CNN
	1    7595 1135
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR040
U 1 1 6247537F
P 9270 1260
F 0 "#PWR040" H 9270 1010 50  0001 C CNN
F 1 "GND" H 9275 1087 50  0000 C CNN
F 2 "" H 9270 1260 50  0001 C CNN
F 3 "" H 9270 1260 50  0001 C CNN
	1    9270 1260
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 62472685
P 9270 2635
F 0 "#PWR041" H 9270 2385 50  0001 C CNN
F 1 "GND" H 9275 2462 50  0000 C CNN
F 2 "" H 9270 2635 50  0001 C CNN
F 3 "" H 9270 2635 50  0001 C CNN
	1    9270 2635
	1    0    0    -1  
$EndComp
$Comp
L Device:R R33
U 1 1 6246F678
P 7820 1360
F 0 "R33" H 7890 1406 50  0000 L CNN
F 1 "2.2k" H 7890 1315 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7750 1360 50  0001 C CNN
F 3 "~" H 7820 1360 50  0001 C CNN
	1    7820 1360
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 6246E934
P 7820 2710
F 0 "R14" H 7890 2756 50  0000 L CNN
F 1 "2.2k" H 7890 2665 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7750 2710 50  0001 C CNN
F 3 "~" H 7820 2710 50  0001 C CNN
	1    7820 2710
	1    0    0    -1  
$EndComp
$Comp
L Device:R R32
U 1 1 6246DCA4
P 8320 2160
F 0 "R32" V 8113 2160 50  0000 C CNN
F 1 "2.2k" V 8204 2160 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8250 2160 50  0001 C CNN
F 3 "~" H 8320 2160 50  0001 C CNN
	1    8320 2160
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 6246CD99
P 8320 3510
F 0 "R13" V 8113 3510 50  0000 C CNN
F 1 "2.2k" V 8204 3510 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8250 3510 50  0001 C CNN
F 3 "~" H 8320 3510 50  0001 C CNN
	1    8320 3510
	0    1    1    0   
$EndComp
Wire Wire Line
	7720 3210 7820 3210
Wire Wire Line
	7720 3010 7820 3010
Wire Wire Line
	7920 1860 7820 1860
Wire Wire Line
	7720 1660 7820 1660
$Comp
L Device:R R7
U 1 1 6245BB8D
P 7570 3210
F 0 "R7" V 7685 3210 50  0000 C CNN
F 1 "10k" V 7776 3210 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7500 3210 50  0001 C CNN
F 3 "~" H 7570 3210 50  0001 C CNN
	1    7570 3210
	0    1    1    0   
$EndComp
$Comp
L Device:R R20
U 1 1 6245AF14
P 7570 3010
F 0 "R20" V 7363 3010 50  0000 C CNN
F 1 "10k" V 7454 3010 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7500 3010 50  0001 C CNN
F 3 "~" H 7570 3010 50  0001 C CNN
	1    7570 3010
	0    1    1    0   
$EndComp
$Comp
L Device:R R25
U 1 1 6245A51D
P 7570 1860
F 0 "R25" V 7685 1860 50  0000 C CNN
F 1 "10k" V 7776 1860 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7500 1860 50  0001 C CNN
F 3 "~" H 7570 1860 50  0001 C CNN
	1    7570 1860
	0    1    1    0   
$EndComp
$Comp
L Device:R R39
U 1 1 62459A6C
P 7570 1660
F 0 "R39" V 7363 1660 50  0000 C CNN
F 1 "10k" V 7454 1660 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 7500 1660 50  0001 C CNN
F 3 "~" H 7570 1660 50  0001 C CNN
	1    7570 1660
	0    1    1    0   
$EndComp
$Comp
L Device:R R38
U 1 1 62458FA5
P 9470 1460
F 0 "R38" H 9540 1506 50  0000 L CNN
F 1 "10k" H 9540 1415 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9400 1460 50  0001 C CNN
F 3 "~" H 9470 1460 50  0001 C CNN
	1    9470 1460
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 624532D2
P 9470 2810
F 0 "R6" H 9540 2856 50  0000 L CNN
F 1 "10k" H 9540 2765 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9400 2810 50  0001 C CNN
F 3 "~" H 9470 2810 50  0001 C CNN
	1    9470 2810
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 6245215E
P 9220 3110
F 0 "R12" V 9013 3110 50  0000 C CNN
F 1 "2.7k" V 9104 3110 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9150 3110 50  0001 C CNN
F 3 "~" H 9220 3110 50  0001 C CNN
	1    9220 3110
	0    1    1    0   
$EndComp
$Comp
L Device:R R31
U 1 1 62418F46
P 9220 1760
F 0 "R31" V 9013 1760 50  0000 C CNN
F 1 "2.7k" V 9104 1760 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9150 1760 50  0001 C CNN
F 3 "~" H 9220 1760 50  0001 C CNN
	1    9220 1760
	0    1    1    0   
$EndComp
$Comp
L Device:R R23
U 1 1 6241834B
P 9220 2335
F 0 "R23" V 9013 2335 50  0000 C CNN
F 1 "300" V 9104 2335 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9150 2335 50  0001 C CNN
F 3 "~" H 9220 2335 50  0001 C CNN
	1    9220 2335
	0    1    1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 62417720
P 9220 3710
F 0 "R18" V 9013 3710 50  0000 C CNN
F 1 "300" V 9104 3710 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9150 3710 50  0001 C CNN
F 3 "~" H 9220 3710 50  0001 C CNN
	1    9220 3710
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 62416BD7
P 9995 3610
F 0 "R11" V 9788 3610 50  0000 C CNN
F 1 "1k" V 9879 3610 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9925 3610 50  0001 C CNN
F 3 "~" H 9995 3610 50  0001 C CNN
	1    9995 3610
	0    1    1    0   
$EndComp
$Comp
L Device:R R30
U 1 1 62415406
P 9995 2235
F 0 "R30" V 9788 2235 50  0000 C CNN
F 1 "1k" V 9879 2235 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 9925 2235 50  0001 C CNN
F 3 "~" H 9995 2235 50  0001 C CNN
	1    9995 2235
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:MCP6002-xSN U2
U 3 1 62413BE6
P 6505 3235
F 0 "U2" H 6463 3281 50  0000 L CNN
F 1 "MCP6002-xSN" H 6463 3190 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6505 3235 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 6505 3235 50  0001 C CNN
	3    6505 3235
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:MCP6002-xSN U2
U 2 1 62411D85
P 9870 3210
F 0 "U2" H 9870 3577 50  0000 C CNN
F 1 "MCP6002-xSN" H 9870 3486 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9870 3210 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 9870 3210 50  0001 C CNN
	2    9870 3210
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:MCP6002-xSN U2
U 1 1 6240FE6E
P 9870 1860
F 0 "U2" H 9870 2227 50  0000 C CNN
F 1 "MCP6002-xSN" H 9870 2136 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9870 1860 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 9870 1860 50  0001 C CNN
	1    9870 1860
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:MCP6002-xSN U3
U 3 1 623A1130
P 6480 2135
F 0 "U3" H 6438 2181 50  0000 L CNN
F 1 "MCP6002-xSN" H 6438 2090 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6480 2135 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 6480 2135 50  0001 C CNN
	3    6480 2135
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:MCP6002-xSN U3
U 2 1 6239E752
P 8220 3110
F 0 "U3" H 8220 3477 50  0000 C CNN
F 1 "MCP6002-xSN" H 8220 3386 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8220 3110 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 8220 3110 50  0001 C CNN
	2    8220 3110
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:MCP6002-xSN U3
U 1 1 6239CD2D
P 8220 1760
F 0 "U3" H 8220 2127 50  0000 C CNN
F 1 "MCP6002-xSN" H 8220 2036 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8220 1760 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21733j.pdf" H 8220 1760 50  0001 C CNN
	1    8220 1760
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J9
U 1 1 62269D6C
P 6345 1410
F 0 "J9" H 6263 1727 50  0000 C CNN
F 1 "Conn_01x03" H 6263 1636 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-3-5.08_1x03_P5.08mm_Horizontal" H 6345 1410 50  0001 C CNN
F 3 "~" H 6345 1410 50  0001 C CNN
	1    6345 1410
	-1   0    0    -1  
$EndComp
Text GLabel 10620 1860 2    50   Output ~ 0
MED_BAT2
Text GLabel 10620 3210 2    50   Output ~ 0
MED_BAT1
Text Notes 9500 975  2    71   ~ 0
*(ajustar valores en simulación o prototipo)
Wire Wire Line
	7020 3210 7420 3210
Wire Wire Line
	7420 3010 7195 3010
Wire Wire Line
	7195 1860 7195 3010
Wire Wire Line
	7020 1510 7020 3210
Wire Wire Line
	9775 5025 10425 5025
$Comp
L Device:C C14
U 1 1 62485619
P 8870 1410
F 0 "C14" H 8900 1575 50  0000 L CNN
F 1 "100nF" H 8900 1500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 8908 1260 50  0001 C CNN
F 3 "~" H 8870 1410 50  0001 C CNN
	1    8870 1410
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR039
U 1 1 6248561F
P 8645 1260
F 0 "#PWR039" H 8645 1010 50  0001 C CNN
F 1 "GND" H 8650 1087 50  0000 C CNN
F 2 "" H 8645 1260 50  0001 C CNN
F 3 "" H 8645 1260 50  0001 C CNN
	1    8645 1260
	1    0    0    -1  
$EndComp
Wire Wire Line
	10370 1860 10495 1860
Wire Wire Line
	8695 1760 8870 1760
Wire Wire Line
	8870 1560 8870 1760
Connection ~ 8870 1760
Wire Wire Line
	8870 1760 9070 1760
Wire Wire Line
	8870 1260 8870 1160
Wire Wire Line
	8870 1160 8645 1160
Wire Wire Line
	8645 1160 8645 1260
$Comp
L Device:C C13
U 1 1 625403EF
P 10495 1410
F 0 "C13" H 10610 1456 50  0000 L CNN
F 1 "100nF" H 10610 1365 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 10533 1260 50  0001 C CNN
F 3 "~" H 10495 1410 50  0001 C CNN
	1    10495 1410
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR043
U 1 1 625403F5
P 10270 1260
F 0 "#PWR043" H 10270 1010 50  0001 C CNN
F 1 "GND" H 10275 1087 50  0000 C CNN
F 2 "" H 10270 1260 50  0001 C CNN
F 3 "" H 10270 1260 50  0001 C CNN
	1    10270 1260
	1    0    0    -1  
$EndComp
Wire Wire Line
	10495 1260 10495 1160
Wire Wire Line
	10495 1160 10270 1160
Wire Wire Line
	10270 1160 10270 1260
Wire Wire Line
	10495 1560 10495 1860
Connection ~ 10495 1860
Wire Wire Line
	10495 1860 10620 1860
$Comp
L Device:C C5
U 1 1 6254DD10
P 8870 2760
F 0 "C5" H 8890 2935 50  0000 L CNN
F 1 "100nF" H 8890 2855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 8908 2610 50  0001 C CNN
F 3 "~" H 8870 2760 50  0001 C CNN
	1    8870 2760
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR042
U 1 1 6254DD16
P 8645 2610
F 0 "#PWR042" H 8645 2360 50  0001 C CNN
F 1 "GND" H 8650 2437 50  0000 C CNN
F 2 "" H 8645 2610 50  0001 C CNN
F 3 "" H 8645 2610 50  0001 C CNN
	1    8645 2610
	1    0    0    -1  
$EndComp
Wire Wire Line
	8870 2910 8870 3110
Wire Wire Line
	8870 2610 8870 2510
Wire Wire Line
	8870 2510 8645 2510
Wire Wire Line
	8645 2510 8645 2610
Connection ~ 8870 3110
Wire Wire Line
	8870 3110 9070 3110
$Comp
L Device:C C4
U 1 1 62559A82
P 10495 2785
F 0 "C4" H 10610 2831 50  0000 L CNN
F 1 "100nF" H 10610 2740 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 10533 2635 50  0001 C CNN
F 3 "~" H 10495 2785 50  0001 C CNN
	1    10495 2785
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR044
U 1 1 62559A88
P 10270 2635
F 0 "#PWR044" H 10270 2385 50  0001 C CNN
F 1 "GND" H 10275 2462 50  0000 C CNN
F 2 "" H 10270 2635 50  0001 C CNN
F 3 "" H 10270 2635 50  0001 C CNN
	1    10270 2635
	1    0    0    -1  
$EndComp
Wire Wire Line
	10495 2635 10495 2535
Wire Wire Line
	10495 2535 10270 2535
Wire Wire Line
	10270 2535 10270 2635
Wire Wire Line
	10495 2935 10495 3210
Connection ~ 10495 3210
Wire Wire Line
	10495 3210 10370 3210
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 6274994E
P 7450 5025
F 0 "J8" H 7368 5242 50  0000 C CNN
F 1 "Conn_01x02" H 7368 5151 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 7450 5025 50  0001 C CNN
F 3 "~" H 7450 5025 50  0001 C CNN
	1    7450 5025
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR045
U 1 1 62749954
P 7750 5375
F 0 "#PWR045" H 7750 5125 50  0001 C CNN
F 1 "GND" H 7755 5202 50  0000 C CNN
F 2 "" H 7750 5375 50  0001 C CNN
F 3 "" H 7750 5375 50  0001 C CNN
	1    7750 5375
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 5375 7750 5125
Wire Wire Line
	7750 5125 7650 5125
Text GLabel 8300 5025 2    50   Output ~ 0
12V
Wire Wire Line
	7650 5025 8300 5025
Wire Notes Line width 12
	8875 4100 8875 5950
Wire Notes Line width 12
	8975 5950 8975 4100
Text Notes 9550 4300 0    118  ~ 0
SALIDA 5V
Wire Notes Line width 12
	3550 4350 600  4350
Wire Notes Line width 12
	3650 4100 6800 4100
Wire Notes Line width 12
	6900 4100 8875 4100
Wire Notes Line width 12
	8975 4100 11050 4100
Wire Notes Line width 12
	11050 4350 8975 4350
Wire Notes Line width 12
	8875 4350 6900 4350
Wire Notes Line width 12
	6800 4350 3650 4350
Wire Notes Line width 12
	3550 4100 600  4100
Wire Notes Line width 12
	11050 5950 8975 5950
Wire Notes Line width 12
	8875 5950 6900 5950
Wire Notes Line width 12
	6800 5950 3650 5950
Wire Notes Line width 12
	3550 5950 600  5950
$Comp
L Connector_Generic:Conn_01x02 J10
U 1 1 623CB5B2
P 9575 5125
F 0 "J10" H 9530 4810 50  0000 C CNN
F 1 "Conn_01x02" H 9500 4900 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-02A_1x02_P2.54mm_Vertical" H 9575 5125 50  0001 C CNN
F 3 "~" H 9575 5125 50  0001 C CNN
	1    9575 5125
	-1   0    0    1   
$EndComp
$Comp
L Device:C C6
U 1 1 627A2DAF
P 5995 2155
F 0 "C6" H 6110 2201 50  0000 L CNN
F 1 "100nF" H 6110 2110 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6033 2005 50  0001 C CNN
F 3 "~" H 5995 2155 50  0001 C CNN
	1    5995 2155
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 627A5479
P 6000 3260
F 0 "C9" H 6115 3306 50  0000 L CNN
F 1 "100nF" H 6115 3215 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6038 3110 50  0001 C CNN
F 3 "~" H 6000 3260 50  0001 C CNN
	1    6000 3260
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR046
U 1 1 627A68A2
P 5995 2435
F 0 "#PWR046" H 5995 2185 50  0001 C CNN
F 1 "GND" H 6000 2262 50  0000 C CNN
F 2 "" H 5995 2435 50  0001 C CNN
F 3 "" H 5995 2435 50  0001 C CNN
	1    5995 2435
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR047
U 1 1 627A9812
P 6000 3535
F 0 "#PWR047" H 6000 3285 50  0001 C CNN
F 1 "GND" H 6005 3362 50  0000 C CNN
F 2 "" H 6000 3535 50  0001 C CNN
F 3 "" H 6000 3535 50  0001 C CNN
	1    6000 3535
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3410 6000 3535
Wire Wire Line
	5995 2305 5995 2435
Wire Wire Line
	5995 2005 5995 1835
Wire Wire Line
	5995 1835 6380 1835
Connection ~ 6380 1835
Wire Wire Line
	6000 3110 6000 2935
Wire Wire Line
	6000 2935 6405 2935
Connection ~ 6405 2935
$Comp
L Connector:TestPoint_Probe TP1
U 1 1 6278CB80
P 4000 1900
F 0 "TP1" H 4300 1905 50  0000 R CNN
F 1 "TestPoint_Probe" H 4770 2000 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 4200 1900 50  0001 C CNN
F 3 "~" H 4200 1900 50  0001 C CNN
	1    4000 1900
	1    0    0    1   
$EndComp
$Comp
L Connector:TestPoint_Probe TP2
U 1 1 6278A7EA
P 4000 1300
F 0 "TP2" H 4153 1401 50  0000 L CNN
F 1 "TestPoint_Probe" H 4153 1310 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 4200 1300 50  0001 C CNN
F 3 "~" H 4200 1300 50  0001 C CNN
	1    4000 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4125 1700 4000 1700
Wire Wire Line
	4125 1500 4000 1500
Wire Wire Line
	4000 1300 4000 1500
Connection ~ 4000 1500
Wire Wire Line
	4000 1500 3650 1500
Wire Wire Line
	4000 1900 4000 1700
Connection ~ 4000 1700
Wire Wire Line
	4000 1700 3200 1700
Wire Wire Line
	4000 2800 4000 3000
Connection ~ 4000 3000
Wire Wire Line
	4000 3000 3650 3000
Connection ~ 4000 3200
Wire Wire Line
	4000 3200 3200 3200
Wire Wire Line
	4000 3400 4000 3200
Wire Wire Line
	2300 7275 2300 7450
Connection ~ 2300 7275
Wire Wire Line
	2300 7275 2375 7275
Wire Wire Line
	2300 6800 2300 7175
Connection ~ 2300 7175
Wire Wire Line
	2300 7175 2175 7175
Wire Wire Line
	5450 6800 5450 7175
Connection ~ 5450 7175
Wire Wire Line
	5450 7175 5300 7175
Wire Wire Line
	5450 7450 5450 7275
Connection ~ 5450 7275
Wire Wire Line
	5450 7275 5500 7275
Wire Wire Line
	10495 3680 10495 3210
$Comp
L Connector:TestPoint_Probe TP6
U 1 1 627DACB2
P 2300 6800
F 0 "TP6" H 2453 6901 50  0000 L CNN
F 1 "TestPoint_Probe" H 2453 6810 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 2500 6800 50  0001 C CNN
F 3 "~" H 2500 6800 50  0001 C CNN
	1    2300 6800
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP7
U 1 1 627DC61F
P 5450 7450
F 0 "TP7" H 5750 7450 50  0000 R CNN
F 1 "TestPoint_Probe" H 6200 7550 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 5650 7450 50  0001 C CNN
F 3 "~" H 5650 7450 50  0001 C CNN
	1    5450 7450
	1    0    0    1   
$EndComp
$Comp
L Connector:TestPoint_Probe TP5
U 1 1 627DFA8A
P 2300 7450
F 0 "TP5" H 2600 7450 50  0000 R CNN
F 1 "TestPoint_Probe" H 3050 7550 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 2500 7450 50  0001 C CNN
F 3 "~" H 2500 7450 50  0001 C CNN
	1    2300 7450
	1    0    0    1   
$EndComp
$Comp
L Connector:TestPoint_Probe TP8
U 1 1 627DA672
P 5450 6800
F 0 "TP8" H 5603 6901 50  0000 L CNN
F 1 "TestPoint_Probe" H 5603 6810 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 5650 6800 50  0001 C CNN
F 3 "~" H 5650 6800 50  0001 C CNN
	1    5450 6800
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint_Probe TP10
U 1 1 6280B896
P 10495 3680
F 0 "TP10" H 10451 3688 50  0000 R CNN
F 1 "TestPoint_Probe" H 10520 3780 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 10695 3680 50  0001 C CNN
F 3 "~" H 10695 3680 50  0001 C CNN
	1    10495 3680
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint_Probe TP9
U 1 1 6280935A
P 10495 2275
F 0 "TP9" H 10451 2283 50  0000 R CNN
F 1 "TestPoint_Probe" H 10520 2375 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 10695 2275 50  0001 C CNN
F 3 "~" H 10695 2275 50  0001 C CNN
	1    10495 2275
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint_Probe TP3
U 1 1 627B7A6D
P 4000 3400
F 0 "TP3" H 4300 3400 50  0000 R CNN
F 1 "TestPoint_Probe" H 4750 3500 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 4200 3400 50  0001 C CNN
F 3 "~" H 4200 3400 50  0001 C CNN
	1    4000 3400
	1    0    0    1   
$EndComp
$Comp
L Connector:TestPoint_Probe TP4
U 1 1 627B71EF
P 4000 2800
F 0 "TP4" H 4153 2901 50  0000 L CNN
F 1 "TestPoint_Probe" H 4153 2810 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 4200 2800 50  0001 C CNN
F 3 "~" H 4200 2800 50  0001 C CNN
	1    4000 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10495 2275 10495 1860
Wire Wire Line
	10495 1860 10495 1855
$Comp
L Device:R R24
U 1 1 6282BAA0
P 8845 2335
F 0 "R24" V 8638 2335 50  0000 C CNN
F 1 "1.5k" V 8729 2335 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8775 2335 50  0001 C CNN
F 3 "~" H 8845 2335 50  0001 C CNN
	1    8845 2335
	0    1    1    0   
$EndComp
$Comp
L Device:R R19
U 1 1 62836A27
P 8845 3710
F 0 "R19" V 8638 3710 50  0000 C CNN
F 1 "1.5k" V 8729 3710 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 8775 3710 50  0001 C CNN
F 3 "~" H 8845 3710 50  0001 C CNN
	1    8845 3710
	0    1    1    0   
$EndComp
Wire Wire Line
	9370 3710 9470 3710
Wire Wire Line
	9470 3710 9470 3610
Connection ~ 9470 3610
Wire Wire Line
	9370 2335 9470 2335
Wire Wire Line
	9470 2335 9470 2235
Connection ~ 9470 2235
$EndSCHEMATC
