EESchema Schematic File Version 4
LIBS:alu-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
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
L Logic_74xx:74LS161 U4
U 1 1 5C5B12F4
P 3050 2050
F 0 "U4" V 3500 1725 50  0000 C CNN
F 1 "74LVC161" V 3400 1625 50  0000 C CNN
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
F 0 "#PWR09" H 3850 1800 50  0001 C CNN
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
F 0 "#PWR06" H 2250 1900 50  0001 C CNN
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
F 0 "#PWR07" H 2250 2525 50  0001 C CNN
F 1 "VCC" H 2267 2848 50  0000 C CNN
F 2 "" H 2250 2675 50  0001 C CNN
F 3 "" H 2250 2675 50  0001 C CNN
	1    2250 2675
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2550 2550 2550 2675
Connection ~ 2550 2675
Wire Wire Line
	2550 2675 2250 2675
Wire Wire Line
	2650 2550 2650 2675
Wire Wire Line
	2750 2550 2750 2675
Wire Wire Line
	2850 2550 2850 2675
Connection ~ 2650 2675
Wire Wire Line
	2650 2675 2550 2675
Connection ~ 2750 2675
Connection ~ 2850 2675
Wire Wire Line
	3050 2550 3050 2675
Wire Wire Line
	2750 2675 2650 2675
Wire Wire Line
	2850 2675 2750 2675
Connection ~ 3050 2675
Wire Wire Line
	3050 2675 2850 2675
Wire Wire Line
	3150 2550 3150 2675
Connection ~ 3150 2675
Wire Wire Line
	3150 2675 3050 2675
Text HLabel 1750 3000 0    50   Input ~ 0
CLK
$Comp
L Logic_74xx:74LS161 U5
U 1 1 5C8F67CC
P 5025 2050
F 0 "U5" V 5475 1725 50  0000 C CNN
F 1 "74LVC161" V 5375 1625 50  0000 C CNN
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
F 0 "#PWR0184" H 5825 1800 50  0001 C CNN
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
F 0 "#PWR010" H 4225 1900 50  0001 C CNN
F 1 "VCC" H 4242 2223 50  0000 C CNN
F 2 "" H 4225 2050 50  0001 C CNN
F 3 "" H 4225 2050 50  0001 C CNN
	1    4225 2050
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5C8F67E0
P 4225 2675
AR Path="/5C8F67E0" Ref="#PWR?"  Part="1" 
AR Path="/5C5B0D85/5C8F67E0" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 4225 2525 50  0001 C CNN
F 1 "VCC" H 4242 2848 50  0000 C CNN
F 2 "" H 4225 2675 50  0001 C CNN
F 3 "" H 4225 2675 50  0001 C CNN
	1    4225 2675
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4525 2550 4525 2675
Connection ~ 4525 2675
Wire Wire Line
	4525 2675 4225 2675
Wire Wire Line
	4625 2550 4625 2675
Wire Wire Line
	4725 2550 4725 2675
Wire Wire Line
	4825 2550 4825 2675
Connection ~ 4625 2675
Wire Wire Line
	4625 2675 4525 2675
Connection ~ 4725 2675
Connection ~ 4825 2675
Wire Wire Line
	5025 2550 5025 2675
Wire Wire Line
	4725 2675 4625 2675
Wire Wire Line
	4825 2675 4725 2675
Wire Wire Line
	5025 2675 4825 2675
$Comp
L Logic_74xx:74LS161 U57
U 1 1 5C8F6ABA
P 7025 2050
F 0 "U57" V 7475 1725 50  0000 C CNN
F 1 "74LVC161" V 7375 1625 50  0000 C CNN
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
F 0 "#PWR0187" H 7825 1800 50  0001 C CNN
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
F 0 "#PWR0185" H 6225 1900 50  0001 C CNN
F 1 "VCC" H 6242 2223 50  0000 C CNN
F 2 "" H 6225 2050 50  0001 C CNN
F 3 "" H 6225 2050 50  0001 C CNN
	1    6225 2050
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5C8F6ACE
P 6225 2675
AR Path="/5C8F6ACE" Ref="#PWR?"  Part="1" 
AR Path="/5C5B0D85/5C8F6ACE" Ref="#PWR0186"  Part="1" 
F 0 "#PWR0186" H 6225 2525 50  0001 C CNN
F 1 "VCC" H 6242 2848 50  0000 C CNN
F 2 "" H 6225 2675 50  0001 C CNN
F 3 "" H 6225 2675 50  0001 C CNN
	1    6225 2675
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6525 2550 6525 2675
Connection ~ 6525 2675
Wire Wire Line
	6525 2675 6225 2675
Wire Wire Line
	6625 2550 6625 2675
Wire Wire Line
	6725 2550 6725 2675
Wire Wire Line
	6825 2550 6825 2675
Connection ~ 6625 2675
Wire Wire Line
	6625 2675 6525 2675
Connection ~ 6725 2675
Connection ~ 6825 2675
Wire Wire Line
	7025 2550 7025 2675
Wire Wire Line
	6725 2675 6625 2675
Wire Wire Line
	6825 2675 6725 2675
Wire Wire Line
	7025 2675 6825 2675
$Comp
L Logic_74xx:74LS161 U58
U 1 1 5C8F6AE6
P 9000 2050
F 0 "U58" V 9450 1725 50  0000 C CNN
F 1 "74LVC161" V 9350 1625 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 9000 2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 9000 2050 50  0001 C CNN
	1    9000 2050
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5C8F6AEC
P 9800 2050
AR Path="/5C8F6AEC" Ref="#PWR?"  Part="1" 
AR Path="/5C5B0D85/5C8F6AEC" Ref="#PWR0190"  Part="1" 
F 0 "#PWR0190" H 9800 1800 50  0001 C CNN
F 1 "GNDREF" H 9805 1877 50  0001 C CNN
F 2 "" H 9800 2050 50  0001 C CNN
F 3 "" H 9800 2050 50  0001 C CNN
	1    9800 2050
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5C8F6AF2
P 8200 2050
AR Path="/5C8F6AF2" Ref="#PWR?"  Part="1" 
AR Path="/5C5B0D85/5C8F6AF2" Ref="#PWR0188"  Part="1" 
F 0 "#PWR0188" H 8200 1900 50  0001 C CNN
F 1 "VCC" H 8217 2223 50  0000 C CNN
F 2 "" H 8200 2050 50  0001 C CNN
F 3 "" H 8200 2050 50  0001 C CNN
	1    8200 2050
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5C8F6AFA
P 8200 2675
AR Path="/5C8F6AFA" Ref="#PWR?"  Part="1" 
AR Path="/5C5B0D85/5C8F6AFA" Ref="#PWR0189"  Part="1" 
F 0 "#PWR0189" H 8200 2525 50  0001 C CNN
F 1 "VCC" H 8217 2848 50  0000 C CNN
F 2 "" H 8200 2675 50  0001 C CNN
F 3 "" H 8200 2675 50  0001 C CNN
	1    8200 2675
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8500 2550 8500 2675
Connection ~ 8500 2675
Wire Wire Line
	8500 2675 8200 2675
Wire Wire Line
	8600 2550 8600 2675
Wire Wire Line
	8700 2550 8700 2675
Wire Wire Line
	8800 2550 8800 2675
Connection ~ 8600 2675
Wire Wire Line
	8600 2675 8500 2675
Connection ~ 8700 2675
Connection ~ 8800 2675
Wire Wire Line
	9000 2550 9000 2675
Wire Wire Line
	8700 2675 8600 2675
Wire Wire Line
	8800 2675 8700 2675
Wire Wire Line
	9000 2675 8800 2675
Wire Wire Line
	3050 1550 3975 1550
Wire Wire Line
	3975 1550 3975 2875
Wire Wire Line
	3975 2875 5125 2875
Wire Wire Line
	5125 2875 5125 2550
Wire Wire Line
	5025 1550 5975 1550
Wire Wire Line
	5975 1550 5975 2875
Wire Wire Line
	5975 2875 7125 2875
Wire Wire Line
	7125 2875 7125 2550
Wire Wire Line
	7950 1550 7950 2875
Wire Wire Line
	7950 2875 9100 2875
Wire Wire Line
	9100 2875 9100 2550
Wire Wire Line
	7025 1550 7950 1550
Wire Wire Line
	9200 2550 9200 2875
Wire Wire Line
	9200 2875 9100 2875
Connection ~ 9100 2875
Wire Wire Line
	5225 2550 5225 2875
Wire Wire Line
	5225 2875 5125 2875
Connection ~ 5125 2875
Wire Wire Line
	7225 2550 7225 2875
Wire Wire Line
	7225 2875 7125 2875
Connection ~ 7125 2875
Wire Wire Line
	1750 3000 3350 3000
Wire Wire Line
	9300 3000 9300 2550
Wire Wire Line
	7325 2550 7325 3000
Connection ~ 7325 3000
Wire Wire Line
	7325 3000 9300 3000
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
	9500 3150 9500 2550
Wire Wire Line
	7525 2550 7525 3150
Connection ~ 7525 3150
Wire Wire Line
	7525 3150 9500 3150
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
D0
Text HLabel 2650 1175 1    50   Output ~ 0
D1
Text HLabel 2750 1175 1    50   Output ~ 0
D2
Text HLabel 2850 1175 1    50   Output ~ 0
D3
Wire Wire Line
	2850 1175 2850 1550
Wire Wire Line
	2750 1175 2750 1550
Wire Wire Line
	2650 1175 2650 1550
Wire Wire Line
	2550 1175 2550 1550
Text HLabel 4525 1175 1    50   Output ~ 0
D4
Text HLabel 4625 1175 1    50   Output ~ 0
D5
Text HLabel 4725 1175 1    50   Output ~ 0
D6
Text HLabel 4825 1175 1    50   Output ~ 0
D7
Wire Wire Line
	4825 1175 4825 1550
Wire Wire Line
	4725 1175 4725 1550
Wire Wire Line
	4625 1175 4625 1550
Wire Wire Line
	4525 1175 4525 1550
Text HLabel 6525 1175 1    50   Output ~ 0
D8
Text HLabel 6625 1175 1    50   Output ~ 0
D9
Text HLabel 6725 1175 1    50   Output ~ 0
D10
Text HLabel 6825 1175 1    50   Output ~ 0
D11
Wire Wire Line
	6825 1175 6825 1550
Wire Wire Line
	6725 1175 6725 1550
Wire Wire Line
	6625 1175 6625 1550
Wire Wire Line
	6525 1175 6525 1550
Text HLabel 8500 1175 1    50   Output ~ 0
D12
Text HLabel 8600 1175 1    50   Output ~ 0
D13
Text HLabel 8700 1175 1    50   Output ~ 0
D14
Text HLabel 8800 1175 1    50   Output ~ 0
D15
Wire Wire Line
	8800 1175 8800 1550
Wire Wire Line
	8700 1175 8700 1550
Wire Wire Line
	8600 1175 8600 1550
Wire Wire Line
	8500 1175 8500 1550
NoConn ~ 9000 1550
Text Label 3650 1550 0    50   ~ 0
TC0
Text Label 5725 1550 0    50   ~ 0
TC1
Text Label 7700 1550 0    50   ~ 0
TC2
$EndSCHEMATC
