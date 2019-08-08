EESchema Schematic File Version 4
LIBS:charger_main-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "Charger Module "
Date "2019-06-26"
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 950  7500 0    79   ~ 16
tp4056 Li-Ion Charger Module\n2mm connector for power to battery and to external module\npower connector -micro USB\nSwitch button - slider\nswitch can disconnect load for charger.
$Comp
L Connector:USB_B_Micro J1
U 1 1 5D13D1F7
P 1075 2425
F 0 "J1" H 1132 2892 50  0000 C CNN
F 1 "USB_B_Micro" H 1132 2801 50  0000 C CNN
F 2 "my_lib:USB_Micro-footprint1" H 1225 2375 50  0001 C CNN
F 3 "~" H 1225 2375 50  0001 C CNN
	1    1075 2425
	1    0    0    -1  
$EndComp
Wire Wire Line
	975  2825 1025 2825
$Comp
L power:Earth #PWR01
U 1 1 5D194736
P 1200 3800
F 0 "#PWR01" H 1200 3550 50  0001 C CNN
F 1 "Earth" H 1200 3650 50  0001 C CNN
F 2 "" H 1200 3800 50  0001 C CNN
F 3 "~" H 1200 3800 50  0001 C CNN
	1    1200 3800
	1    0    0    -1  
$EndComp
Text GLabel 1125 3775 0    39   Input ~ 0
GND
Wire Wire Line
	1125 3775 1200 3775
Wire Wire Line
	1200 3775 1200 3800
Text GLabel 1025 2950 3    39   Input ~ 0
GND
Wire Wire Line
	1025 2950 1025 2825
Connection ~ 1025 2825
Wire Wire Line
	1025 2825 1075 2825
$Sheet
S 1300 925  550  450 
U 5D196A44
F0 "tp4056module" 39
F1 "tp4056module.sch" 39
F2 "GND" I L 1300 1025 39 
F3 "BatVCC" O R 1850 1000 39 
F4 "BatGND" O R 1850 1100 39 
F5 "OutVCC" O R 1850 1200 39 
F6 "OutGND" O R 1850 1300 39 
F7 "InVCC" I L 1300 1125 39 
$EndSheet
Text GLabel 1175 1025 0    39   Input ~ 0
GND
Wire Wire Line
	1175 1025 1300 1025
Text GLabel 2050 1300 2    39   Input ~ 0
GND
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5D19D815
P 2300 900
F 0 "J2" H 2272 874 50  0000 R CNN
F 1 "BattConnector" H 2272 783 50  0000 R CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x02_P2.00mm_Vertical" H 2300 900 50  0001 C CNN
F 3 "~" H 2300 900 50  0001 C CNN
	1    2300 900 
	-1   0    0    -1  
$EndComp
NoConn ~ 1375 2425
NoConn ~ 1375 2525
NoConn ~ 1375 2625
Text GLabel 1375 2225 2    39   Input ~ 0
USBVCC
Wire Wire Line
	1175 1125 1300 1125
$Comp
L my_sk22d02:SW_sk22d02 U4
U 1 1 5D360245
P 2475 3275
F 0 "U4" H 2500 3640 50  0000 C CNN
F 1 "SW_sk22d02" H 2500 3549 50  0000 C CNN
F 2 "my_lib:SW_SK22D02_DPDT_Angled" H 2500 3458 50  0001 C CNN
F 3 "" H 2475 3275 50  0001 C CNN
	1    2475 3275
	1    0    0    -1  
$EndComp
Text Notes 2250 4000 0    39   ~ 0
default Left position\n1-2,4-5 connected\n(front panel line is 4,5,6)\nwhen switched   2-3,5-6 connected
Wire Notes Line
	2125 3700 3450 3700
Wire Notes Line
	3450 3700 3450 4075
Wire Notes Line
	3450 4075 2125 4075
Wire Notes Line
	2125 4075 2125 3700
NoConn ~ 2775 3225
Text GLabel 2225 3525 0    39   Input ~ 0
GND
Text GLabel 2775 3525 2    39   Input ~ 0
GND
Text GLabel 2225 3325 0    39   Input ~ 0
Vcc3V
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5D36162A
P 2850 2200
F 0 "J3" H 2822 2174 50  0000 R CNN
F 1 "PwrConnector" H 2822 2083 50  0000 R CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_1x02_P2.00mm_Vertical" H 2850 2200 50  0001 C CNN
F 3 "~" H 2850 2200 50  0001 C CNN
	1    2850 2200
	-1   0    0    -1  
$EndComp
Text GLabel 2400 2300 0    39   Input ~ 0
GND
Text GLabel 2775 3325 2    39   Input ~ 0
Vcc3V
NoConn ~ 2225 3225
Wire Notes Line
	850  3625 1325 3625
Wire Notes Line
	1325 3625 1325 4025
Wire Notes Line
	1325 4025 850  4025
Wire Notes Line
	850  4025 850  3625
Wire Wire Line
	1850 1000 1975 1000
Wire Wire Line
	1975 1000 1975 900 
Wire Wire Line
	1975 900  2100 900 
Wire Wire Line
	1850 1100 2025 1100
Wire Wire Line
	2025 1100 2025 1000
Wire Wire Line
	2025 1000 2100 1000
Wire Wire Line
	1850 1300 2050 1300
Wire Wire Line
	1850 1200 2050 1200
Wire Notes Line
	2950 775  2950 1525
Wire Notes Line
	2950 1525 725  1525
Wire Notes Line
	725  1525 725  775 
Wire Notes Line
	725  775  2950 775 
Text GLabel 1925 3425 0    39   Input ~ 0
PwrON
Text GLabel 1175 1125 0    39   Input ~ 0
USBVCC
Text GLabel 2050 1200 2    39   Input ~ 0
Vcc3V
Text GLabel 3375 3425 2    39   Input ~ 0
PwrON
Wire Wire Line
	2650 2200 2450 2200
Wire Wire Line
	2400 2300 2650 2300
Wire Wire Line
	1925 3425 2225 3425
Wire Wire Line
	2775 3425 3200 3425
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5D403B39
P 3200 3225
F 0 "#FLG0102" H 3200 3300 50  0001 C CNN
F 1 "PWR_FLAG" H 3200 3398 50  0000 C CNN
F 2 "" H 3200 3225 50  0001 C CNN
F 3 "~" H 3200 3225 50  0001 C CNN
	1    3200 3225
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3225 3200 3425
Connection ~ 3200 3425
Wire Wire Line
	3200 3425 3375 3425
$Comp
L Connector:Conn_01x01_Male J4
U 1 1 5D40CD11
P 5300 3200
F 0 "J4" H 5408 3381 50  0000 C CNN
F 1 "Position" H 5408 3290 50  0000 C CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x01_P1.00mm_Vertical" H 5300 3200 50  0001 C CNN
F 3 "~" H 5300 3200 50  0001 C CNN
	1    5300 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J5
U 1 1 5D385CA1
P 5325 3475
F 0 "J5" H 5433 3656 50  0000 C CNN
F 1 "Position" H 5433 3565 50  0000 C CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x01_P1.00mm_Vertical" H 5325 3475 50  0001 C CNN
F 3 "~" H 5325 3475 50  0001 C CNN
	1    5325 3475
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J6
U 1 1 5D385F2B
P 5325 3700
F 0 "J6" H 5433 3881 50  0000 C CNN
F 1 "Position" H 5433 3790 50  0000 C CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x01_P1.00mm_Vertical" H 5325 3700 50  0001 C CNN
F 3 "~" H 5325 3700 50  0001 C CNN
	1    5325 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Male J7
U 1 1 5D386338
P 5325 3975
F 0 "J7" H 5433 4156 50  0000 C CNN
F 1 "Position" H 5433 4065 50  0000 C CNN
F 2 "Connector_PinHeader_1.00mm:PinHeader_1x01_P1.00mm_Vertical" H 5325 3975 50  0001 C CNN
F 3 "~" H 5325 3975 50  0001 C CNN
	1    5325 3975
	1    0    0    -1  
$EndComp
Text GLabel 2450 2200 0    39   Input ~ 0
PwrON
$EndSCHEMATC
