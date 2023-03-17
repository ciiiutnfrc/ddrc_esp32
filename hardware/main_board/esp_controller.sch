EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title "Controlador embebido para robot de tracción diferencial"
Date "2022-03-12"
Rev "0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 4925 3550 2000 1800
U 621B5FB9
F0 "ESP32 Module" 50
F1 "esp_module.sch" 50
$EndSheet
$Sheet
S 2150 4000 1625 975 
U 621B604F
F0 "USB-UART" 50
F1 "usb.sch" 50
$EndSheet
$Sheet
S 5100 2000 1650 800 
U 621B6B13
F0 "Power Supply" 50
F1 "power.sch" 50
$EndSheet
$Sheet
S 7900 3925 1750 1025
U 62208120
F0 "Entradas Salidas" 50
F1 "in_out.sch" 50
$EndSheet
Wire Notes Line style solid rgb(0, 0, 0)
	3775 4525 4925 4525
Wire Notes Line style solid rgb(0, 0, 0)
	6925 4525 7900 4525
Wire Notes Line style solid rgb(0, 0, 0)
	5875 2800 5875 3550
Text Notes 5350 2475 0    118  ~ 0
Alimentación
Text Notes 8375 4600 0    118  ~ 0
Entradas/\nSalidas
Text Notes 2725 4550 0    118  ~ 0
USB
Text Notes 5000 4500 0    118  ~ 0
ESP32-WROOM-32E
Wire Notes Line
	5100 2400 2900 2400
Wire Notes Line style solid rgb(0, 0, 0)
	2900 2400 2900 4000
Wire Notes Line
	6750 2400 8825 2400
Wire Notes Line style solid rgb(0, 0, 0)
	8825 2400 8825 3925
$EndSCHEMATC
