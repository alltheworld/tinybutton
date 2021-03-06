EESchema Schematic File Version 4
LIBS:charger_main-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1800 2725 0    50   Input ~ 0
GND
Text HLabel 1850 1825 0    50   Input ~ 0
VccIn
Text HLabel 4100 1825 2    50   Input ~ 0
VccOut
Text Notes 1500 1400 0    50   ~ 0
StepUp Converter from 3v to 5v\nce8301\n\nhttps://www.sunrom.com/p/5v-dc-dc-boost-step-up
$Comp
L Device:L L1
U 1 1 5D386F70
P 2625 1825
F 0 "L1" V 2444 1825 50  0000 C CNN
F 1 "47uH" V 2535 1825 50  0000 C CNN
F 2 "Inductor_SMD:L_Taiyo-Yuden_NR-40xx_HandSoldering" H 2625 1825 50  0001 C CNN
F 3 "~" H 2625 1825 50  0001 C CNN
	1    2625 1825
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D3
U 1 1 5D3877D0
P 3325 1825
F 0 "D3" H 3325 1609 50  0000 C CNN
F 1 "SS14" H 3325 1700 50  0000 C CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 3325 1825 50  0001 C CNN
F 3 "~" H 3325 1825 50  0001 C CNN
	1    3325 1825
	-1   0    0    1   
$EndComp
Wire Wire Line
	2950 2175 3050 2175
Wire Wire Line
	3050 2175 3050 1825
Wire Wire Line
	2775 1825 3050 1825
Wire Wire Line
	3050 1825 3175 1825
Connection ~ 3050 1825
Wire Wire Line
	3475 1825 3575 1825
$Comp
L Device:C C4
U 1 1 5D389B33
P 2000 2275
F 0 "C4" H 2115 2321 50  0000 L CNN
F 1 "100nF" H 2115 2230 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2038 2125 50  0001 C CNN
F 3 "~" H 2000 2275 50  0001 C CNN
	1    2000 2275
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2125 2000 1825
Connection ~ 2000 1825
Wire Wire Line
	2000 1825 2475 1825
Wire Wire Line
	2000 2425 2000 2725
Connection ~ 2000 2725
Wire Wire Line
	2000 2725 2375 2725
Wire Wire Line
	2450 2175 2375 2175
Wire Wire Line
	2375 2175 2375 2725
Connection ~ 2375 2725
Wire Wire Line
	2375 2725 3775 2725
Wire Wire Line
	2950 2275 3575 2275
Wire Wire Line
	3575 2275 3575 1825
Connection ~ 3575 1825
Wire Wire Line
	3575 1825 3775 1825
$Comp
L Device:CP C5
U 1 1 5D38AE0F
P 3775 2300
F 0 "C5" H 3893 2346 50  0000 L CNN
F 1 "70uF" H 3893 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3813 2150 50  0001 C CNN
F 3 "~" H 3775 2300 50  0001 C CNN
	1    3775 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3775 2150 3775 1825
Connection ~ 3775 1825
Wire Wire Line
	3775 2450 3775 2725
Text Notes 4250 2150 0    50   ~ 0
should be 100uF
Text Notes 4225 2525 0    50   ~ 0
but we install 70uF 0805 Ceramic CAP
Wire Wire Line
	3775 1825 4100 1825
Wire Wire Line
	1800 2725 2000 2725
Wire Wire Line
	1850 1825 2000 1825
$Comp
L my_ce8301:CE8301 U5
U 1 1 5D38E5F5
P 2700 2275
F 0 "U5" H 2700 2584 50  0000 C CNN
F 1 "CE8301" H 2700 2501 39  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3_Handsoldering" H 2550 2125 50  0001 C CNN
F 3 "https://www.mpja.com/download/ce830.pdf" H 2700 2275 50  0001 C CNN
	1    2700 2275
	1    0    0    -1  
$EndComp
$EndSCHEMATC
