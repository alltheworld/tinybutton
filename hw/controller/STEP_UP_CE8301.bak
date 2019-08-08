EESchema Schematic File Version 4
LIBS:main-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "Button Controller Module"
Date "2019-08-03"
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2775 1550 0    50   Input ~ 0
VCC
Text HLabel 4850 1550 2    50   Input ~ 0
VOUT
Text HLabel 2775 2275 0    50   Input ~ 0
GND
$Comp
L Device:C C1
U 1 1 5D4660DA
P 2975 1900
F 0 "C1" H 3090 1946 50  0000 L CNN
F 1 "0.1uF" H 3090 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3013 1750 50  0001 C CNN
F 3 "~" H 2975 1900 50  0001 C CNN
	1    2975 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 5D46656C
P 3325 1550
F 0 "L1" H 3378 1596 50  0000 L CNN
F 1 "47uH" H 3378 1505 50  0000 L CNN
F 2 "Inductor_SMD:L_Taiyo-Yuden_NR-40xx_HandSoldering" H 3325 1550 50  0001 C CNN
F 3 "~" H 3325 1550 50  0001 C CNN
	1    3325 1550
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Schottky D1
U 1 1 5D466BE7
P 4175 1550
F 0 "D1" H 4175 1766 50  0000 C CNN
F 1 "SS14" H 4175 1675 50  0000 C CNN
F 2 "Diode_SMD:D_SMA" H 4175 1550 50  0001 C CNN
F 3 "~" H 4175 1550 50  0001 C CNN
	1    4175 1550
	-1   0    0    1   
$EndComp
$Comp
L my_ce8301:CE8301 U1
U 1 1 5D467CA0
P 3750 1875
F 0 "U1" H 3625 2075 50  0000 R CNN
F 1 "CE8301" H 4000 2075 39  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3" H 4050 1425 50  0001 C CNN
F 3 "https://www.mpja.com/download/ce830.pdf" H 3750 1875 50  0001 C CNN
	1    3750 1875
	1    0    0    -1  
$EndComp
Text Notes 3625 1275 0    50   ~ 0
CE8301A\n\nSchema with VALUES\nhttps://www.sunrom.com/p/5v-dc-dc-boost-step-up
$Comp
L Device:C C2
U 1 1 5D46A591
P 4650 1900
F 0 "C2" H 4725 2100 50  0000 L CNN
F 1 "100uF" H 4700 1725 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4688 1750 50  0001 C CNN
F 3 "~" H 4650 1900 50  0001 C CNN
	1    4650 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2775 1550 2975 1550
Wire Wire Line
	2975 1750 2975 1550
Connection ~ 2975 1550
Wire Wire Line
	2975 1550 3175 1550
Wire Wire Line
	2975 2050 2975 2275
Wire Wire Line
	2975 2275 2775 2275
Wire Wire Line
	3475 1550 3750 1550
Wire Wire Line
	3750 1550 3750 1625
Wire Wire Line
	3750 2175 3750 2275
Wire Wire Line
	3750 2275 2975 2275
Connection ~ 2975 2275
Wire Wire Line
	3750 1550 4025 1550
Connection ~ 3750 1550
Wire Wire Line
	4050 1875 4400 1875
Wire Wire Line
	4400 1875 4400 1550
Wire Wire Line
	4325 1550 4400 1550
Wire Wire Line
	4400 1550 4650 1550
Connection ~ 4400 1550
Wire Wire Line
	4650 2050 4650 2275
Wire Wire Line
	4650 2275 3750 2275
Connection ~ 3750 2275
Wire Wire Line
	4650 1750 4650 1550
Connection ~ 4650 1550
Wire Wire Line
	4650 1550 4850 1550
$EndSCHEMATC
