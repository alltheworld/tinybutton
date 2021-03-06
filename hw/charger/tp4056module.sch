EESchema Schematic File Version 4
LIBS:charger_main-cache
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
Text HLabel 1025 975  0    39   Input ~ 0
InVCC
Text HLabel 2525 950  0    39   Output ~ 0
BatVCC
Text HLabel 2525 1125 0    39   Output ~ 0
BatGND
Text HLabel 2500 1375 0    39   Output ~ 0
OutVCC
Text HLabel 2500 1525 0    39   Output ~ 0
OutGND
$Comp
L my_dw01:DW01 U?
U 1 1 5D19C2F1
P 4925 2975
AR Path="/5D19C2F1" Ref="U?"  Part="1" 
AR Path="/5D196A44/5D19C2F1" Ref="U3"  Part="1" 
F 0 "U3" H 4950 3412 60  0000 C CNN
F 1 "DW01" H 4950 3306 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 4875 2675 60  0001 C CNN
F 3 "https://voron.ua/files/pdf/Microshema/DW01-P_DataSheet_V10.pdf" H 4875 2675 60  0001 C CNN
	1    4925 2975
	1    0    0    -1  
$EndComp
$Comp
L my_tp4056:TP4056 U?
U 1 1 5D19C2FD
P 2825 2675
AR Path="/5D19C2FD" Ref="U?"  Part="1" 
AR Path="/5D196A44/5D19C2FD" Ref="U1"  Part="1" 
F 0 "U1" H 2825 3212 60  0000 C CNN
F 1 "TP4056" H 2825 3106 60  0000 C CNN
F 2 "Package_SO:TI_SO-PowerPAD-8" H 2825 2675 60  0001 C CNN
F 3 "https://voron.ua/files/pdf/micoshema/TP4056.pdf" H 2825 2675 60  0001 C CNN
	1    2825 2675
	1    0    0    -1  
$EndComp
Text Label 1325 1125 0    39   ~ 0
GND
Text Label 2675 1525 0    39   ~ 0
GND
Wire Wire Line
	1550 975  1025 975 
Wire Wire Line
	1050 1125 1550 1125
Wire Wire Line
	2525 1125 3000 1125
Wire Wire Line
	2500 1525 3000 1525
Wire Wire Line
	2500 1375 3000 1375
Text Label 2650 1375 0    39   ~ 0
OutVCC
Wire Wire Line
	2525 950  3000 950 
Text Label 1225 975  0    50   ~ 0
InVCC
Text Label 2650 950  0    50   ~ 0
BatVCC
$Comp
L Device:R R4
U 1 1 5D376307
P 3450 3100
F 0 "R4" H 3520 3146 50  0000 L CNN
F 1 "20k" H 3520 3055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3380 3100 50  0001 C CNN
F 3 "~" H 3450 3100 50  0001 C CNN
	1    3450 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3325 2825 3450 2825
Wire Wire Line
	3450 2825 3450 2950
Wire Wire Line
	3325 2725 3725 2725
Wire Wire Line
	3725 2725 3725 3325
Wire Wire Line
	3725 3325 3450 3325
Wire Wire Line
	3450 3250 3450 3325
Connection ~ 3450 3325
Wire Wire Line
	3450 3325 2825 3325
Connection ~ 2825 3325
Wire Wire Line
	2325 2525 2050 2525
Wire Wire Line
	1700 2425 1700 2475
$Comp
L Device:R R1
U 1 1 5D377BFB
P 1075 2475
F 0 "R1" V 868 2475 50  0000 C CNN
F 1 "0.4" V 959 2475 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1005 2475 50  0001 C CNN
F 3 "~" H 1075 2475 50  0001 C CNN
	1    1075 2475
	0    1    1    0   
$EndComp
Connection ~ 1700 2475
Wire Wire Line
	1700 2475 1700 2525
Text Label 725  2475 0    50   ~ 0
InVCC
Text Label 825  3325 0    50   ~ 0
GND
$Comp
L Device:CP C1
U 1 1 5D37913D
P 1675 2100
F 0 "C1" H 1793 2146 50  0000 L CNN
F 1 "10uF" H 1793 2055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1713 1950 50  0001 C CNN
F 3 "~" H 1675 2100 50  0001 C CNN
	1    1675 2100
	1    0    0    -1  
$EndComp
Text Notes 1950 1875 0    39   ~ 0
PP (Power PAD) - its GND PAD UNDER IC TP4056\n
$Comp
L Device:R R2
U 1 1 5D37AD2F
P 1950 3000
F 0 "R2" V 2050 2850 50  0000 C CNN
F 1 "1k" V 2066 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1880 3000 50  0001 C CNN
F 3 "~" H 1950 3000 50  0001 C CNN
	1    1950 3000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5D37C6A8
P 2050 3225
F 0 "R3" V 2175 3100 50  0000 C CNN
F 1 "1k" V 2166 3225 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1980 3225 50  0001 C CNN
F 3 "~" H 2050 3225 50  0001 C CNN
	1    2050 3225
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1225 2475 1350 2475
Connection ~ 1550 2475
Wire Wire Line
	1550 2475 1700 2475
$Comp
L Device:LED D1
U 1 1 5D38008B
P 1250 3000
F 0 "D1" H 1350 2850 50  0000 C CNN
F 1 "LED" H 1243 2836 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1250 3000 50  0001 C CNN
F 3 "~" H 1250 3000 50  0001 C CNN
	1    1250 3000
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 5D381A32
P 1275 3225
F 0 "D2" H 1425 3175 50  0000 C CNN
F 1 "LED" H 1268 3061 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1275 3225 50  0001 C CNN
F 3 "~" H 1275 3225 50  0001 C CNN
	1    1275 3225
	-1   0    0    1   
$EndComp
Wire Wire Line
	1800 3000 1400 3000
Wire Wire Line
	1900 3225 1425 3225
Wire Wire Line
	1675 1950 1550 1950
Wire Wire Line
	1550 1950 1550 2300
Wire Wire Line
	1675 2250 1675 2325
Wire Wire Line
	1675 2325 2025 2325
Text Label 1850 2325 0    39   ~ 0
GND
Wire Wire Line
	700  3325 2825 3325
Wire Wire Line
	1100 3000 1050 3000
Wire Wire Line
	1125 3225 1050 3225
Wire Wire Line
	1050 3225 1050 3100
$Comp
L Device:R R5
U 1 1 5D399218
P 4300 3550
F 0 "R5" V 4425 3425 50  0000 C CNN
F 1 "1k" V 4416 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4230 3550 50  0001 C CNN
F 3 "~" H 4300 3550 50  0001 C CNN
	1    4300 3550
	-1   0    0    1   
$EndComp
NoConn ~ 4375 2825
Wire Wire Line
	4375 3025 4300 3025
Wire Wire Line
	4300 3025 4300 3400
$Comp
L Device:R R6
U 1 1 5D39ED91
P 6400 2825
F 0 "R6" V 6400 2825 50  0000 C CNN
F 1 "10" V 6275 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6330 2825 50  0001 C CNN
F 3 "~" H 6400 2825 50  0001 C CNN
	1    6400 2825
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5D39FD15
P 5900 3025
F 0 "C2" H 6015 3071 50  0000 L CNN
F 1 "100nF" H 6015 2980 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5938 2875 50  0001 C CNN
F 3 "~" H 5900 3025 50  0001 C CNN
	1    5900 3025
	1    0    0    -1  
$EndComp
Wire Wire Line
	5525 3025 5525 3325
Wire Wire Line
	5525 3325 5850 3325
Wire Wire Line
	5900 3325 5900 3175
Wire Wire Line
	5525 2825 5900 2825
Wire Wire Line
	5900 2825 5900 2875
Wire Wire Line
	6250 2825 6150 2825
Connection ~ 5900 2825
Text Notes 7275 2925 0    39   ~ 0
bat +
Text Notes 7300 2400 0    39   ~ 0
Vcc out+
$Comp
L Device:CP C3
U 1 1 5D3A83B3
P 6975 3400
F 0 "C3" H 7093 3446 50  0000 L CNN
F 1 "10uF" H 7093 3355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7013 3250 50  0001 C CNN
F 3 "~" H 6975 3400 50  0001 C CNN
	1    6975 3400
	1    0    0    -1  
$EndComp
Text Notes 6400 3000 0    39   ~ 0
On schematics R=100 Omh, but we will set 10 omh  I=500 ma MAx current\n
Wire Wire Line
	6525 3800 6650 3800
Text Notes 7225 3900 0    39   ~ 0
bat - gnd\n
Wire Wire Line
	5850 3325 5850 3600
Wire Wire Line
	6650 3600 6650 3800
Connection ~ 5850 3325
Wire Wire Line
	5850 3325 5900 3325
Connection ~ 6650 3800
Wire Wire Line
	6650 3800 7875 3800
$Comp
L my_fs8205s:FS8205S U2
U 1 1 5D3B3556
P 5675 4000
F 0 "U2" H 5675 4387 60  0000 C CNN
F 1 "FS8205S" H 5675 4281 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 6625 4250 60  0001 C CNN
F 3 "https://www.ic-fortune.com/upload/Download/FS8205-DS-19_EN.pdf" H 6625 4250 60  0001 C CNN
	1    5675 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3600 6650 3600
Wire Wire Line
	5075 3425 5075 3625
Wire Wire Line
	5075 3900 5175 3900
Wire Wire Line
	5175 4100 4775 4100
Wire Wire Line
	4775 4100 4775 3825
Wire Wire Line
	5175 4300 4775 4300
Wire Wire Line
	6175 4300 6525 4300
Wire Wire Line
	6525 4300 6525 3800
Wire Wire Line
	6750 4300 6975 4300
Text Notes 7525 4200 0    50   ~ 0
- GND  Out
Wire Wire Line
	6975 3550 6975 4300
Connection ~ 6975 4300
Wire Wire Line
	6975 4300 7875 4300
Wire Wire Line
	6975 3250 6975 2825
Connection ~ 6975 2825
Wire Wire Line
	6975 2825 7200 2825
Wire Wire Line
	6975 2825 6975 2425
Connection ~ 6975 2425
Wire Wire Line
	6975 2425 7200 2425
Wire Wire Line
	3325 2425 6975 2425
Wire Wire Line
	6550 2825 6650 2825
Wire Wire Line
	6750 4550 4775 4550
Wire Wire Line
	6750 4550 6750 4300
Connection ~ 4300 4550
Wire Wire Line
	4300 4550 2825 4550
Wire Wire Line
	2825 4550 2825 3325
Text HLabel 1050 1125 0    39   Input ~ 0
GND
Text Label 6425 2425 0    50   ~ 0
OutVCC
Text Label 6675 2825 0    50   ~ 0
BatVCC
Text Label 2625 1125 0    50   ~ 0
BatGND
Text Label 7300 3800 0    50   ~ 0
BatGND
Wire Wire Line
	2200 3225 2450 3225
Wire Wire Line
	2450 3225 2450 3025
Wire Wire Line
	2450 3025 2275 3025
Wire Wire Line
	2275 3025 2275 2825
Wire Wire Line
	2275 2825 2325 2825
Text Label 2250 3225 0    50   ~ 0
STDBY
Text Label 1450 3000 0    50   ~ 0
LED_CHRG
Text Label 1475 3225 0    50   ~ 0
LED_STDBY
Wire Wire Line
	2100 3000 2100 2725
Text Label 2125 2725 0    50   ~ 0
CHRG
Wire Wire Line
	2100 2725 2325 2725
Wire Wire Line
	2775 3075 2775 3200
Wire Wire Line
	2775 3200 2825 3200
Wire Wire Line
	2825 3325 2825 3200
Text Label 3375 2825 0    50   ~ 0
PROG
Text Label 3375 2725 0    50   ~ 0
TEMP
Text Label 5100 3900 0    50   ~ 0
G1
Text Label 5000 4100 0    50   ~ 0
G2
Text Label 4975 4300 0    50   ~ 0
S2
Text Label 6275 4300 0    50   ~ 0
S1
Wire Wire Line
	4775 4300 4775 4550
Connection ~ 4775 4550
Wire Wire Line
	4775 4550 4300 4550
Wire Wire Line
	4300 3700 4300 4550
Text Label 5600 2825 0    50   ~ 0
DW01VCC
Text Label 4300 3275 0    50   ~ 0
CS
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5D3F9380
P 2250 2225
F 0 "#FLG0101" H 2250 2300 50  0001 C CNN
F 1 "PWR_FLAG" H 2250 2398 50  0000 C CNN
F 2 "" H 2250 2225 50  0001 C CNN
F 3 "~" H 2250 2225 50  0001 C CNN
	1    2250 2225
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2225 2250 2425
Wire Wire Line
	1700 2425 2250 2425
Connection ~ 2250 2425
Wire Wire Line
	2250 2425 2325 2425
Wire Wire Line
	6175 3900 6325 3900
Wire Wire Line
	6375 3900 6375 4100
Wire Wire Line
	6375 4100 6175 4100
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5D40485F
P 6325 3850
F 0 "#FLG0103" H 6325 3925 50  0001 C CNN
F 1 "PWR_FLAG" H 6325 4023 50  0000 C CNN
F 2 "" H 6325 3850 50  0001 C CNN
F 3 "~" H 6325 3850 50  0001 C CNN
	1    6325 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6325 3850 6325 3900
Connection ~ 6325 3900
Wire Wire Line
	6325 3900 6375 3900
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 5D406ED1
P 4575 3750
F 0 "#FLG0104" H 4575 3825 50  0001 C CNN
F 1 "PWR_FLAG" H 4575 3923 50  0000 C CNN
F 2 "" H 4575 3750 50  0001 C CNN
F 3 "~" H 4575 3750 50  0001 C CNN
	1    4575 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4575 3750 4575 3825
Wire Wire Line
	4575 3825 4775 3825
Connection ~ 4775 3825
Wire Wire Line
	4775 3825 4775 3425
$Comp
L power:PWR_FLAG #FLG0105
U 1 1 5D4097B0
P 5325 3575
F 0 "#FLG0105" H 5325 3650 50  0001 C CNN
F 1 "PWR_FLAG" H 5325 3748 50  0000 C CNN
F 2 "" H 5325 3575 50  0001 C CNN
F 3 "~" H 5325 3575 50  0001 C CNN
	1    5325 3575
	1    0    0    -1  
$EndComp
Wire Wire Line
	5325 3575 5325 3625
Wire Wire Line
	5325 3625 5075 3625
Connection ~ 5075 3625
Wire Wire Line
	5075 3625 5075 3900
Wire Wire Line
	2325 2625 2050 2625
Wire Wire Line
	2050 2625 2050 2525
Connection ~ 2050 2525
Wire Wire Line
	2050 2525 1700 2525
Text Notes 1525 2875 0    50   ~ 0
RED\n
Text Notes 1500 3400 0    50   ~ 0
GREEN\n
Wire Wire Line
	550  2475 800  2475
Wire Wire Line
	1550 2475 1550 2675
Wire Wire Line
	1550 2675 975  2675
Wire Wire Line
	975  2675 975  3100
Wire Wire Line
	975  3100 1050 3100
Connection ~ 1050 3100
Wire Wire Line
	1050 3100 1050 3000
$Comp
L Device:R R7
U 1 1 5D3AD377
P 1075 2600
F 0 "R7" V 868 2600 50  0000 C CNN
F 1 "0.4" V 959 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1005 2600 50  0001 C CNN
F 3 "~" H 1075 2600 50  0001 C CNN
	1    1075 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	925  2600 800  2600
Wire Wire Line
	800  2600 800  2475
Connection ~ 800  2475
Wire Wire Line
	800  2475 925  2475
Wire Wire Line
	1225 2600 1350 2600
Wire Wire Line
	1350 2600 1350 2475
Connection ~ 1350 2475
Wire Wire Line
	1350 2475 1550 2475
Text Notes 775  2200 0    50   ~ 0
0.4 - 0.5 Omh
$Comp
L Device:C C4
U 1 1 5D3B3A3B
P 1600 1650
F 0 "C4" H 1715 1696 50  0000 L CNN
F 1 "100nF" H 1715 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1638 1500 50  0001 C CNN
F 3 "~" H 1600 1650 50  0001 C CNN
	1    1600 1650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1450 1650 1450 2300
Wire Wire Line
	1450 2300 1550 2300
Connection ~ 1550 2300
Wire Wire Line
	1550 2300 1550 2475
Wire Wire Line
	1750 1650 1825 1650
Wire Wire Line
	1825 1650 1825 1950
Wire Wire Line
	1825 1950 2025 1950
Wire Wire Line
	2025 1950 2025 2325
Connection ~ 2025 2325
Wire Wire Line
	2025 2325 2075 2325
Text Label 1825 2425 0    50   ~ 0
Vcc
$Comp
L Device:R R8
U 1 1 5D3933D6
P 6400 2600
F 0 "R8" V 6400 2600 50  0000 C CNN
F 1 "10" V 6325 2425 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6330 2600 50  0001 C CNN
F 3 "~" H 6400 2600 50  0001 C CNN
	1    6400 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 2600 6150 2600
Wire Wire Line
	6150 2600 6150 2825
Connection ~ 6150 2825
Wire Wire Line
	6150 2825 5900 2825
Wire Wire Line
	6550 2600 6650 2600
Wire Wire Line
	6650 2600 6650 2825
Connection ~ 6650 2825
Wire Wire Line
	6650 2825 6975 2825
$EndSCHEMATC
