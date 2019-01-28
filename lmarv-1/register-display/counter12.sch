EESchema Schematic File Version 4
LIBS:register-display-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Logic_74xx:74LS161 U?
U 1 1 5C5B12F4
P 3050 2050
AR Path="/5D3DF7C9/5C5B12F4" Ref="U?"  Part="1" 
AR Path="/5DA74A81/5C5B12F4" Ref="U?"  Part="1" 
F 0 "U?" V 3500 1725 50  0000 C CNN
F 1 "74LV161" V 3400 1625 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 3050 2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 3050 2050 50  0001 C CNN
	1    3050 2050
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5C8F2F4A
P 3850 2050
AR Path="/5C8F2F4A" Ref="#PWR?"  Part="1" 
AR Path="/5C5B0D85/5C8F2F4A" Ref="#PWR09"  Part="1" 
AR Path="/5D3DF7C9/5C8F2F4A" Ref="#PWR?"  Part="1" 
AR Path="/5DA74A81/5C8F2F4A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3850 1800 50  0001 C CNN
F 1 "GNDREF" H 3855 1877 50  0001 C CNN
F 2 "" H 3850 2050 50  0001 C CNN
F 3 "" H 3850 2050 50  0001 C CNN
	1    3850 2050
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5C8F3432
P 2250 2050
AR Path="/5C8F3432" Ref="#PWR?"  Part="1" 
AR Path="/5C5B0D85/5C8F3432" Ref="#PWR06"  Part="1" 
AR Path="/5D3DF7C9/5C8F3432" Ref="#PWR?"  Part="1" 
AR Path="/5DA74A81/5C8F3432" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2250 1900 50  0001 C CNN
F 1 "VCC" H 2267 2223 50  0000 C CNN
F 2 "" H 2250 2050 50  0001 C CNN
F 3 "" H 2250 2050 50  0001 C CNN
	1    2250 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3250 2550 3250 2675
Wire Wire Line
	3250 2675 3150 2675
$Comp
L power:VCC #PWR?
U 1 1 5C8F34A6
P 2250 2675
AR Path="/5C8F34A6" Ref="#PWR?"  Part="1" 
AR Path="/5C5B0D85/5C8F34A6" Ref="#PWR07"  Part="1" 
AR Path="/5D3DF7C9/5C8F34A6" Ref="#PWR?"  Part="1" 
AR Path="/5DA74A81/5C8F34A6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2250 2525 50  0001 C CNN
F 1 "VCC" H 2267 2848 50  0000 C CNN
F 2 "" H 2250 2675 50  0001 C CNN
F 3 "" H 2250 2675 50  0001 C CNN
	1    2250 2675
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2550 2550 2550 2750
Wire Wire Line
	2650 2550 2650 2750
Wire Wire Line
	2750 2550 2750 2750
Wire Wire Line
	2850 2550 2850 2750
Wire Wire Line
	3150 2550 3150 2675
Text HLabel 1750 3000 0    50   Input ~ 0
CLK
$Comp
L Logic_74xx:74LS161 U?
U 1 1 5C8F67CC
P 5025 2050
AR Path="/5D3DF7C9/5C8F67CC" Ref="U?"  Part="1" 
AR Path="/5DA74A81/5C8F67CC" Ref="U?"  Part="1" 
F 0 "U?" V 5475 1725 50  0000 C CNN
F 1 "74LV161" V 5375 1625 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 5025 2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 5025 2050 50  0001 C CNN
	1    5025 2050
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5C8F67D2
P 5825 2050
AR Path="/5C8F67D2" Ref="#PWR?"  Part="1" 
AR Path="/5C5B0D85/5C8F67D2" Ref="#PWR0184"  Part="1" 
AR Path="/5D3DF7C9/5C8F67D2" Ref="#PWR?"  Part="1" 
AR Path="/5DA74A81/5C8F67D2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5825 1800 50  0001 C CNN
F 1 "GNDREF" H 5830 1877 50  0001 C CNN
F 2 "" H 5825 2050 50  0001 C CNN
F 3 "" H 5825 2050 50  0001 C CNN
	1    5825 2050
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5C8F67D8
P 4225 2050
AR Path="/5C8F67D8" Ref="#PWR?"  Part="1" 
AR Path="/5C5B0D85/5C8F67D8" Ref="#PWR010"  Part="1" 
AR Path="/5D3DF7C9/5C8F67D8" Ref="#PWR?"  Part="1" 
AR Path="/5DA74A81/5C8F67D8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4225 1900 50  0001 C CNN
F 1 "VCC" H 4242 2223 50  0000 C CNN
F 2 "" H 4225 2050 50  0001 C CNN
F 3 "" H 4225 2050 50  0001 C CNN
	1    4225 2050
	0    -1   -1   0   
$EndComp
$Comp
L Logic_74xx:74LS161 U?
U 1 1 5C8F6ABA
P 7025 2050
AR Path="/5D3DF7C9/5C8F6ABA" Ref="U?"  Part="1" 
AR Path="/5DA74A81/5C8F6ABA" Ref="U?"  Part="1" 
F 0 "U?" V 7475 1725 50  0000 C CNN
F 1 "74LV161" V 7375 1625 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 7025 2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 7025 2050 50  0001 C CNN
	1    7025 2050
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5C8F6AC0
P 7825 2050
AR Path="/5C8F6AC0" Ref="#PWR?"  Part="1" 
AR Path="/5C5B0D85/5C8F6AC0" Ref="#PWR0187"  Part="1" 
AR Path="/5D3DF7C9/5C8F6AC0" Ref="#PWR?"  Part="1" 
AR Path="/5DA74A81/5C8F6AC0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7825 1800 50  0001 C CNN
F 1 "GNDREF" H 7830 1877 50  0001 C CNN
F 2 "" H 7825 2050 50  0001 C CNN
F 3 "" H 7825 2050 50  0001 C CNN
	1    7825 2050
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5C8F6AC6
P 6225 2050
AR Path="/5C8F6AC6" Ref="#PWR?"  Part="1" 
AR Path="/5C5B0D85/5C8F6AC6" Ref="#PWR0185"  Part="1" 
AR Path="/5D3DF7C9/5C8F6AC6" Ref="#PWR?"  Part="1" 
AR Path="/5DA74A81/5C8F6AC6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6225 1900 50  0001 C CNN
F 1 "VCC" H 6242 2223 50  0000 C CNN
F 2 "" H 6225 2050 50  0001 C CNN
F 3 "" H 6225 2050 50  0001 C CNN
	1    6225 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3050 1550 3975 1550
Wire Wire Line
	3975 1550 3975 2650
Wire Wire Line
	3975 2650 5125 2650
Wire Wire Line
	5125 2650 5125 2550
Wire Wire Line
	5025 1550 5975 1550
Wire Wire Line
	5975 1550 5975 2650
Wire Wire Line
	5975 2650 7125 2650
Wire Wire Line
	7125 2650 7125 2550
Wire Wire Line
	5225 2550 5225 2650
Wire Wire Line
	5225 2650 5125 2650
Connection ~ 5125 2650
Wire Wire Line
	7225 2550 7225 2650
Wire Wire Line
	7225 2650 7125 2650
Connection ~ 7125 2650
Wire Wire Line
	1750 3000 3350 3000
Wire Wire Line
	7325 2550 7325 3000
Wire Wire Line
	3350 2550 3350 3000
Connection ~ 3350 3000
Wire Wire Line
	3350 3000 5325 3000
Text HLabel 1750 3150 0    50   Input ~ 0
~CLR
Wire Wire Line
	1750 3150 3550 3150
Wire Wire Line
	7525 2550 7525 3150
Wire Wire Line
	5325 2550 5325 3000
Connection ~ 5325 3000
Wire Wire Line
	5325 3000 7325 3000
Wire Wire Line
	5525 2550 5525 3150
Connection ~ 5525 3150
Wire Wire Line
	5525 3150 7525 3150
Wire Wire Line
	3550 2550 3550 3150
Connection ~ 3550 3150
Wire Wire Line
	3550 3150 5525 3150
Text HLabel 2550 1175 1    50   Output ~ 0
Q0
Text HLabel 2650 1175 1    50   Output ~ 0
Q1
Text HLabel 2750 1175 1    50   Output ~ 0
Q2
Text HLabel 2850 1175 1    50   Output ~ 0
Q3
Wire Wire Line
	2850 1175 2850 1550
Wire Wire Line
	2750 1175 2750 1550
Wire Wire Line
	2650 1175 2650 1550
Wire Wire Line
	2550 1175 2550 1550
Text HLabel 4525 1175 1    50   Output ~ 0
Q4
Text HLabel 4625 1175 1    50   Output ~ 0
Q5
Text HLabel 4725 1175 1    50   Output ~ 0
Q6
Text HLabel 4825 1175 1    50   Output ~ 0
Q7
Wire Wire Line
	4825 1175 4825 1550
Wire Wire Line
	4725 1175 4725 1550
Wire Wire Line
	4625 1175 4625 1550
Wire Wire Line
	4525 1175 4525 1550
Text HLabel 6525 1175 1    50   Output ~ 0
Q8
Text HLabel 6625 1175 1    50   Output ~ 0
Q9
Text HLabel 6725 1175 1    50   Output ~ 0
Q10
Text HLabel 6825 1175 1    50   Output ~ 0
Q11
Wire Wire Line
	6825 1175 6825 1550
Wire Wire Line
	6725 1175 6725 1550
Wire Wire Line
	6625 1175 6625 1550
Wire Wire Line
	6525 1175 6525 1550
Text Label 3650 1550 0    50   ~ 0
TC0
Text Label 5725 1550 0    50   ~ 0
TC1
NoConn ~ 7025 1550
$Comp
L Device:C C?
U 1 1 5D3E69B8
P 3050 4100
AR Path="/5D3E69B8" Ref="C?"  Part="1" 
AR Path="/5D3DF7C9/5D3E69B8" Ref="C?"  Part="1" 
AR Path="/5DA74A81/5D3E69B8" Ref="C?"  Part="1" 
F 0 "C?" H 3165 4146 50  0000 L CNN
F 1 "0u1" H 3165 4055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3088 3950 50  0001 C CNN
F 3 "~" H 3050 4100 50  0001 C CNN
	1    3050 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D3E69BF
P 3400 4100
AR Path="/5D3E69BF" Ref="C?"  Part="1" 
AR Path="/5D3DF7C9/5D3E69BF" Ref="C?"  Part="1" 
AR Path="/5DA74A81/5D3E69BF" Ref="C?"  Part="1" 
F 0 "C?" H 3515 4146 50  0000 L CNN
F 1 "0u1" H 3515 4055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3438 3950 50  0001 C CNN
F 3 "~" H 3400 4100 50  0001 C CNN
	1    3400 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D3E69C6
P 3775 4100
AR Path="/5D3E69C6" Ref="C?"  Part="1" 
AR Path="/5D3DF7C9/5D3E69C6" Ref="C?"  Part="1" 
AR Path="/5DA74A81/5D3E69C6" Ref="C?"  Part="1" 
F 0 "C?" H 3890 4146 50  0000 L CNN
F 1 "0u1" H 3890 4055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3813 3950 50  0001 C CNN
F 3 "~" H 3775 4100 50  0001 C CNN
	1    3775 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D3E69CD
P 3050 4350
AR Path="/5D3E69CD" Ref="#PWR?"  Part="1" 
AR Path="/5D3DF7C9/5D3E69CD" Ref="#PWR?"  Part="1" 
AR Path="/5DA74A81/5D3E69CD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3050 4100 50  0001 C CNN
F 1 "GND" H 3055 4177 50  0001 C CNN
F 2 "" H 3050 4350 50  0001 C CNN
F 3 "" H 3050 4350 50  0001 C CNN
	1    3050 4350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3050 4250 3050 4300
Wire Wire Line
	3050 4300 3400 4300
Wire Wire Line
	3400 4300 3400 4250
Connection ~ 3050 4300
Wire Wire Line
	3050 4300 3050 4350
Wire Wire Line
	3400 4300 3775 4300
Wire Wire Line
	3775 4300 3775 4250
Connection ~ 3400 4300
$Comp
L power:VCC #PWR?
U 1 1 5D3E69DB
P 3050 3850
AR Path="/5D3E69DB" Ref="#PWR?"  Part="1" 
AR Path="/5D3DF7C9/5D3E69DB" Ref="#PWR?"  Part="1" 
AR Path="/5DA74A81/5D3E69DB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3050 3700 50  0001 C CNN
F 1 "VCC" H 3067 4023 50  0000 C CNN
F 2 "" H 3050 3850 50  0001 C CNN
F 3 "" H 3050 3850 50  0001 C CNN
	1    3050 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3850 3050 3900
Wire Wire Line
	3050 3900 3400 3900
Wire Wire Line
	3400 3900 3400 3950
Connection ~ 3050 3900
Wire Wire Line
	3050 3900 3050 3950
Wire Wire Line
	3400 3900 3775 3900
Wire Wire Line
	3775 3900 3775 3950
Connection ~ 3400 3900
Text Notes 2150 3575 0    50   ~ 0
NOTE: CLR IS ASYNC, LOAD IS SYNC.
Text HLabel 1750 3300 0    50   Input ~ 0
~LOAD
Wire Wire Line
	1750 3300 3050 3300
Wire Wire Line
	3050 2550 3050 3300
Text HLabel 2550 2750 3    50   Input ~ 0
D0
Text HLabel 2650 2750 3    50   Input ~ 0
D1
Text HLabel 2750 2750 3    50   Input ~ 0
D2
Text HLabel 2850 2750 3    50   Input ~ 0
D3
Wire Wire Line
	2250 2675 3150 2675
Connection ~ 3150 2675
Wire Wire Line
	4525 2550 4525 2750
Wire Wire Line
	4625 2550 4625 2750
Wire Wire Line
	4725 2550 4725 2750
Wire Wire Line
	4825 2550 4825 2750
Text HLabel 4525 2750 3    50   Input ~ 0
D4
Text HLabel 4625 2750 3    50   Input ~ 0
D5
Text HLabel 4725 2750 3    50   Input ~ 0
D6
Text HLabel 4825 2750 3    50   Input ~ 0
D7
Wire Wire Line
	5025 2550 5025 3300
Wire Wire Line
	6525 2550 6525 2750
Wire Wire Line
	6625 2550 6625 2750
Wire Wire Line
	6725 2550 6725 2750
Wire Wire Line
	6825 2550 6825 2750
Text HLabel 6525 2750 3    50   Input ~ 0
D8
Text HLabel 6625 2750 3    50   Input ~ 0
D9
Text HLabel 6725 2750 3    50   Input ~ 0
D10
Text HLabel 6825 2750 3    50   Input ~ 0
D11
Wire Wire Line
	7025 2550 7025 3300
Wire Wire Line
	3050 3300 5025 3300
Connection ~ 3050 3300
Connection ~ 5025 3300
Wire Wire Line
	5025 3300 7025 3300
$EndSCHEMATC
