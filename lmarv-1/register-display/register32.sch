EESchema Schematic File Version 4
LIBS:register-display-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
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
L Logic_74xx:74LS574 U6
U 1 1 5DC0D671
P 3225 2500
F 0 "U6" V 3650 2175 50  0000 R CNN
F 1 "74LV574" V 3575 2200 50  0000 R CNN
F 2 "" H 3225 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS574" H 3225 2500 50  0001 C CNN
	1    3225 2500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC0D8B4
P 4025 2500
AR Path="/5DC0D8B4" Ref="#PWR?"  Part="1" 
AR Path="/5DC0CA6E/5DC0D8B4" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0131" H 4025 2250 50  0001 C CNN
F 1 "GND" H 4030 2327 50  0001 C CNN
F 2 "" H 4025 2500 50  0001 C CNN
F 3 "" H 4025 2500 50  0001 C CNN
	1    4025 2500
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DC0DA2C
P 2425 2500
AR Path="/5DC0DA2C" Ref="#PWR?"  Part="1" 
AR Path="/5DC0CA6E/5DC0DA2C" Ref="#PWR0132"  Part="1" 
F 0 "#PWR0132" H 2425 2350 50  0001 C CNN
F 1 "VCC" H 2442 2673 50  0000 C CNN
F 2 "" H 2425 2500 50  0001 C CNN
F 3 "" H 2425 2500 50  0001 C CNN
	1    2425 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3425 3000 3425 3375
Wire Wire Line
	3325 3000 3325 3375
Wire Wire Line
	3225 3000 3225 3375
Wire Wire Line
	3125 3000 3125 3375
Wire Wire Line
	3025 3000 3025 3375
Wire Wire Line
	2925 3000 2925 3375
Wire Wire Line
	2825 3000 2825 3375
Wire Wire Line
	2725 3000 2725 3375
Wire Wire Line
	3425 1625 3425 2000
Wire Wire Line
	3325 1625 3325 2000
Wire Wire Line
	3225 1625 3225 2000
Wire Wire Line
	3125 1625 3125 2000
Wire Wire Line
	3025 1625 3025 2000
Wire Wire Line
	2925 1625 2925 2000
Wire Wire Line
	2825 1625 2825 2000
Wire Wire Line
	2725 1625 2725 2000
Text HLabel 2725 3375 3    50   Input ~ 0
D0
Text HLabel 3425 3375 3    50   Input ~ 0
D7
Text HLabel 3325 3375 3    50   Input ~ 0
D6
Text HLabel 3225 3375 3    50   Input ~ 0
D5
Text HLabel 3125 3375 3    50   Input ~ 0
D4
Text HLabel 3025 3375 3    50   Input ~ 0
D3
Text HLabel 2925 3375 3    50   Input ~ 0
D2
Text HLabel 2825 3375 3    50   Input ~ 0
D1
Text HLabel 2725 1625 1    50   Output ~ 0
Q0
Text HLabel 2825 1625 1    50   Output ~ 0
Q1
Text HLabel 2925 1625 1    50   Output ~ 0
Q2
Text HLabel 3025 1625 1    50   Output ~ 0
Q3
Text HLabel 3125 1625 1    50   Output ~ 0
Q4
Text HLabel 3225 1625 1    50   Output ~ 0
Q5
Text HLabel 3325 1625 1    50   Output ~ 0
Q6
Text HLabel 3425 1625 1    50   Output ~ 0
Q7
$Comp
L Logic_74xx:74LS574 U7
U 1 1 5DC0F492
P 4975 2500
F 0 "U7" V 5400 2175 50  0000 R CNN
F 1 "74LV574" V 5325 2200 50  0000 R CNN
F 2 "" H 4975 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS574" H 4975 2500 50  0001 C CNN
	1    4975 2500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC0F498
P 5775 2500
AR Path="/5DC0F498" Ref="#PWR?"  Part="1" 
AR Path="/5DC0CA6E/5DC0F498" Ref="#PWR0134"  Part="1" 
F 0 "#PWR0134" H 5775 2250 50  0001 C CNN
F 1 "GND" H 5780 2327 50  0001 C CNN
F 2 "" H 5775 2500 50  0001 C CNN
F 3 "" H 5775 2500 50  0001 C CNN
	1    5775 2500
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DC0F49E
P 4175 2500
AR Path="/5DC0F49E" Ref="#PWR?"  Part="1" 
AR Path="/5DC0CA6E/5DC0F49E" Ref="#PWR0136"  Part="1" 
F 0 "#PWR0136" H 4175 2350 50  0001 C CNN
F 1 "VCC" H 4192 2673 50  0000 C CNN
F 2 "" H 4175 2500 50  0001 C CNN
F 3 "" H 4175 2500 50  0001 C CNN
	1    4175 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5175 3000 5175 3375
Wire Wire Line
	5075 3000 5075 3375
Wire Wire Line
	4975 3000 4975 3375
Wire Wire Line
	4875 3000 4875 3375
Wire Wire Line
	4775 3000 4775 3375
Wire Wire Line
	4675 3000 4675 3375
Wire Wire Line
	4575 3000 4575 3375
Wire Wire Line
	4475 3000 4475 3375
Wire Wire Line
	5175 1625 5175 2000
Wire Wire Line
	5075 1625 5075 2000
Wire Wire Line
	4975 1625 4975 2000
Wire Wire Line
	4875 1625 4875 2000
Wire Wire Line
	4775 1625 4775 2000
Wire Wire Line
	4675 1625 4675 2000
Wire Wire Line
	4575 1625 4575 2000
Wire Wire Line
	4475 1625 4475 2000
Text HLabel 5175 3375 3    50   Input ~ 0
D15
Text HLabel 4475 3375 3    50   Input ~ 0
D8
Text HLabel 4575 3375 3    50   Input ~ 0
D9
Text HLabel 4675 3375 3    50   Input ~ 0
D10
Text HLabel 4775 3375 3    50   Input ~ 0
D11
Text HLabel 4875 3375 3    50   Input ~ 0
D12
Text HLabel 4975 3375 3    50   Input ~ 0
D13
Text HLabel 5075 3375 3    50   Input ~ 0
D14
Text HLabel 5175 1625 1    50   Output ~ 0
Q15
Text HLabel 5075 1625 1    50   Output ~ 0
Q14
Text HLabel 4975 1625 1    50   Output ~ 0
Q13
Text HLabel 4875 1625 1    50   Output ~ 0
Q12
Text HLabel 4775 1625 1    50   Output ~ 0
Q11
Text HLabel 4675 1625 1    50   Output ~ 0
Q10
Text HLabel 4575 1625 1    50   Output ~ 0
Q9
Text HLabel 4475 1625 1    50   Output ~ 0
Q8
$Comp
L Logic_74xx:74LS574 U8
U 1 1 5DC0FD22
P 6725 2500
F 0 "U8" V 7150 2175 50  0000 R CNN
F 1 "74LV574" V 7075 2200 50  0000 R CNN
F 2 "" H 6725 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS574" H 6725 2500 50  0001 C CNN
	1    6725 2500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC0FD28
P 7525 2500
AR Path="/5DC0FD28" Ref="#PWR?"  Part="1" 
AR Path="/5DC0CA6E/5DC0FD28" Ref="#PWR0137"  Part="1" 
F 0 "#PWR0137" H 7525 2250 50  0001 C CNN
F 1 "GND" H 7530 2327 50  0001 C CNN
F 2 "" H 7525 2500 50  0001 C CNN
F 3 "" H 7525 2500 50  0001 C CNN
	1    7525 2500
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DC0FD2E
P 5925 2500
AR Path="/5DC0FD2E" Ref="#PWR?"  Part="1" 
AR Path="/5DC0CA6E/5DC0FD2E" Ref="#PWR0138"  Part="1" 
F 0 "#PWR0138" H 5925 2350 50  0001 C CNN
F 1 "VCC" H 5942 2673 50  0000 C CNN
F 2 "" H 5925 2500 50  0001 C CNN
F 3 "" H 5925 2500 50  0001 C CNN
	1    5925 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6925 3000 6925 3375
Wire Wire Line
	6825 3000 6825 3375
Wire Wire Line
	6725 3000 6725 3375
Wire Wire Line
	6625 3000 6625 3375
Wire Wire Line
	6525 3000 6525 3375
Wire Wire Line
	6425 3000 6425 3375
Wire Wire Line
	6325 3000 6325 3375
Wire Wire Line
	6225 3000 6225 3375
Wire Wire Line
	6925 1625 6925 2000
Wire Wire Line
	6825 1625 6825 2000
Wire Wire Line
	6725 1625 6725 2000
Wire Wire Line
	6625 1625 6625 2000
Wire Wire Line
	6525 1625 6525 2000
Wire Wire Line
	6425 1625 6425 2000
Wire Wire Line
	6325 1625 6325 2000
Wire Wire Line
	6225 1625 6225 2000
Text HLabel 6925 3375 3    50   Input ~ 0
D23
Text HLabel 6225 3375 3    50   Input ~ 0
D16
Text HLabel 6325 3375 3    50   Input ~ 0
D17
Text HLabel 6425 3375 3    50   Input ~ 0
D18
Text HLabel 6525 3375 3    50   Input ~ 0
D19
Text HLabel 6625 3375 3    50   Input ~ 0
D20
Text HLabel 6725 3375 3    50   Input ~ 0
D21
Text HLabel 6825 3375 3    50   Input ~ 0
D22
Text HLabel 8675 1625 1    50   Output ~ 0
Q31
Text HLabel 8575 1625 1    50   Output ~ 0
Q30
Text HLabel 8475 1625 1    50   Output ~ 0
Q29
Text HLabel 8375 1625 1    50   Output ~ 0
Q28
Text HLabel 8275 1625 1    50   Output ~ 0
Q27
Text HLabel 8175 1625 1    50   Output ~ 0
Q26
Text HLabel 8075 1625 1    50   Output ~ 0
Q25
Text HLabel 7975 1625 1    50   Output ~ 0
Q24
$Comp
L Logic_74xx:74LS574 U9
U 1 1 5DC0FD54
P 8475 2500
F 0 "U9" V 8900 2175 50  0000 R CNN
F 1 "74LV574" V 8825 2200 50  0000 R CNN
F 2 "" H 8475 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS574" H 8475 2500 50  0001 C CNN
	1    8475 2500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC0FD5A
P 9275 2500
AR Path="/5DC0FD5A" Ref="#PWR?"  Part="1" 
AR Path="/5DC0CA6E/5DC0FD5A" Ref="#PWR0139"  Part="1" 
F 0 "#PWR0139" H 9275 2250 50  0001 C CNN
F 1 "GND" H 9280 2327 50  0001 C CNN
F 2 "" H 9275 2500 50  0001 C CNN
F 3 "" H 9275 2500 50  0001 C CNN
	1    9275 2500
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5DC0FD60
P 7675 2500
AR Path="/5DC0FD60" Ref="#PWR?"  Part="1" 
AR Path="/5DC0CA6E/5DC0FD60" Ref="#PWR0140"  Part="1" 
F 0 "#PWR0140" H 7675 2350 50  0001 C CNN
F 1 "VCC" H 7692 2673 50  0000 C CNN
F 2 "" H 7675 2500 50  0001 C CNN
F 3 "" H 7675 2500 50  0001 C CNN
	1    7675 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8675 3000 8675 3375
Wire Wire Line
	8575 3000 8575 3375
Wire Wire Line
	8475 3000 8475 3375
Wire Wire Line
	8375 3000 8375 3375
Wire Wire Line
	8275 3000 8275 3375
Wire Wire Line
	8175 3000 8175 3375
Wire Wire Line
	8075 3000 8075 3375
Wire Wire Line
	7975 3000 7975 3375
Wire Wire Line
	8675 1625 8675 2000
Wire Wire Line
	8575 1625 8575 2000
Wire Wire Line
	8475 1625 8475 2000
Wire Wire Line
	8375 1625 8375 2000
Wire Wire Line
	8275 1625 8275 2000
Wire Wire Line
	8175 1625 8175 2000
Wire Wire Line
	8075 1625 8075 2000
Wire Wire Line
	7975 1625 7975 2000
Text HLabel 8675 3375 3    50   Input ~ 0
D31
Text HLabel 7975 3375 3    50   Input ~ 0
D24
Text HLabel 8075 3375 3    50   Input ~ 0
D25
Text HLabel 8175 3375 3    50   Input ~ 0
D26
Text HLabel 8275 3375 3    50   Input ~ 0
D27
Text HLabel 8375 3375 3    50   Input ~ 0
D28
Text HLabel 8475 3375 3    50   Input ~ 0
D29
Text HLabel 8575 3375 3    50   Input ~ 0
D30
Text HLabel 6925 1625 1    50   Output ~ 0
Q23
Text HLabel 6825 1625 1    50   Output ~ 0
Q22
Text HLabel 6725 1625 1    50   Output ~ 0
Q21
Text HLabel 6625 1625 1    50   Output ~ 0
Q20
Text HLabel 6525 1625 1    50   Output ~ 0
Q19
Text HLabel 6425 1625 1    50   Output ~ 0
Q18
Text HLabel 6325 1625 1    50   Output ~ 0
Q17
Text HLabel 6225 1625 1    50   Output ~ 0
Q16
Wire Wire Line
	3625 3000 3625 3150
Wire Wire Line
	3625 3150 2275 3150
Wire Wire Line
	3625 3150 5375 3150
Wire Wire Line
	8875 3150 8875 3000
Connection ~ 3625 3150
Wire Wire Line
	7125 3000 7125 3150
Connection ~ 7125 3150
Wire Wire Line
	7125 3150 8875 3150
Wire Wire Line
	5375 3000 5375 3150
Connection ~ 5375 3150
Wire Wire Line
	5375 3150 7125 3150
Wire Wire Line
	5475 3000 5475 3250
Wire Wire Line
	3725 3000 3725 3250
Wire Wire Line
	7225 3000 7225 3250
Wire Wire Line
	8975 3000 8975 3250
Text HLabel 2275 3150 0    50   Input ~ 0
CLK
Text HLabel 3725 3250 3    50   Input ~ 0
~OE0
$Comp
L Device:C C?
U 1 1 5DC36235
P 3675 4900
AR Path="/60683562/5DC36235" Ref="C?"  Part="1" 
AR Path="/60D239C2/5DC36235" Ref="C?"  Part="1" 
AR Path="/610F7C3D/5DC36235" Ref="C?"  Part="1" 
AR Path="/6157DD7B/5DC36235" Ref="C?"  Part="1" 
AR Path="/6919BA95/5DC36235" Ref="C?"  Part="1" 
AR Path="/6AA7D701/5DC36235" Ref="C?"  Part="1" 
AR Path="/5DC0CA6E/5DC36235" Ref="C8"  Part="1" 
F 0 "C8" H 3790 4946 50  0000 L CNN
F 1 "0u1" H 3790 4855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3713 4750 50  0001 C CNN
F 3 "~" H 3675 4900 50  0001 C CNN
	1    3675 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DC3623C
P 2525 4900
AR Path="/60683562/5DC3623C" Ref="C?"  Part="1" 
AR Path="/60D239C2/5DC3623C" Ref="C?"  Part="1" 
AR Path="/610F7C3D/5DC3623C" Ref="C?"  Part="1" 
AR Path="/6157DD7B/5DC3623C" Ref="C?"  Part="1" 
AR Path="/6919BA95/5DC3623C" Ref="C?"  Part="1" 
AR Path="/6AA7D701/5DC3623C" Ref="C?"  Part="1" 
AR Path="/5DC0CA6E/5DC3623C" Ref="C5"  Part="1" 
F 0 "C5" H 2640 4946 50  0000 L CNN
F 1 "0u1" H 2640 4855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2563 4750 50  0001 C CNN
F 3 "~" H 2525 4900 50  0001 C CNN
	1    2525 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DC36243
P 2875 4900
AR Path="/60683562/5DC36243" Ref="C?"  Part="1" 
AR Path="/60D239C2/5DC36243" Ref="C?"  Part="1" 
AR Path="/610F7C3D/5DC36243" Ref="C?"  Part="1" 
AR Path="/6157DD7B/5DC36243" Ref="C?"  Part="1" 
AR Path="/6919BA95/5DC36243" Ref="C?"  Part="1" 
AR Path="/6AA7D701/5DC36243" Ref="C?"  Part="1" 
AR Path="/5DC0CA6E/5DC36243" Ref="C6"  Part="1" 
F 0 "C6" H 2990 4946 50  0000 L CNN
F 1 "0u1" H 2990 4855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2913 4750 50  0001 C CNN
F 3 "~" H 2875 4900 50  0001 C CNN
	1    2875 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DC3624A
P 3250 4900
AR Path="/60683562/5DC3624A" Ref="C?"  Part="1" 
AR Path="/60D239C2/5DC3624A" Ref="C?"  Part="1" 
AR Path="/610F7C3D/5DC3624A" Ref="C?"  Part="1" 
AR Path="/6157DD7B/5DC3624A" Ref="C?"  Part="1" 
AR Path="/6919BA95/5DC3624A" Ref="C?"  Part="1" 
AR Path="/6AA7D701/5DC3624A" Ref="C?"  Part="1" 
AR Path="/5DC0CA6E/5DC3624A" Ref="C7"  Part="1" 
F 0 "C7" H 3365 4946 50  0000 L CNN
F 1 "0u1" H 3365 4855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3288 4750 50  0001 C CNN
F 3 "~" H 3250 4900 50  0001 C CNN
	1    3250 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DC36251
P 2525 5150
AR Path="/60683562/5DC36251" Ref="#PWR?"  Part="1" 
AR Path="/60D239C2/5DC36251" Ref="#PWR?"  Part="1" 
AR Path="/610F7C3D/5DC36251" Ref="#PWR?"  Part="1" 
AR Path="/6157DD7B/5DC36251" Ref="#PWR?"  Part="1" 
AR Path="/6919BA95/5DC36251" Ref="#PWR?"  Part="1" 
AR Path="/6AA7D701/5DC36251" Ref="#PWR?"  Part="1" 
AR Path="/5DC0CA6E/5DC36251" Ref="#PWR0141"  Part="1" 
F 0 "#PWR0141" H 2525 4900 50  0001 C CNN
F 1 "GND" H 2530 4977 50  0001 C CNN
F 2 "" H 2525 5150 50  0001 C CNN
F 3 "" H 2525 5150 50  0001 C CNN
	1    2525 5150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2525 5050 2525 5100
Wire Wire Line
	2525 5100 2875 5100
Wire Wire Line
	2875 5100 2875 5050
Connection ~ 2525 5100
Wire Wire Line
	2525 5100 2525 5150
Wire Wire Line
	2875 5100 3250 5100
Wire Wire Line
	3250 5100 3250 5050
Connection ~ 2875 5100
Wire Wire Line
	3250 5100 3675 5100
Wire Wire Line
	3675 5100 3675 5050
Connection ~ 3250 5100
$Comp
L power:VCC #PWR?
U 1 1 5DC36262
P 2525 4650
AR Path="/60683562/5DC36262" Ref="#PWR?"  Part="1" 
AR Path="/60D239C2/5DC36262" Ref="#PWR?"  Part="1" 
AR Path="/610F7C3D/5DC36262" Ref="#PWR?"  Part="1" 
AR Path="/6157DD7B/5DC36262" Ref="#PWR?"  Part="1" 
AR Path="/6919BA95/5DC36262" Ref="#PWR?"  Part="1" 
AR Path="/6AA7D701/5DC36262" Ref="#PWR?"  Part="1" 
AR Path="/5DC0CA6E/5DC36262" Ref="#PWR0142"  Part="1" 
F 0 "#PWR0142" H 2525 4500 50  0001 C CNN
F 1 "VCC" H 2542 4823 50  0000 C CNN
F 2 "" H 2525 4650 50  0001 C CNN
F 3 "" H 2525 4650 50  0001 C CNN
	1    2525 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2525 4650 2525 4700
Wire Wire Line
	2525 4700 2875 4700
Wire Wire Line
	2875 4700 2875 4750
Connection ~ 2525 4700
Wire Wire Line
	2525 4700 2525 4750
Wire Wire Line
	2875 4700 3250 4700
Wire Wire Line
	3250 4700 3250 4750
Connection ~ 2875 4700
Wire Wire Line
	3250 4700 3675 4700
Wire Wire Line
	3675 4700 3675 4750
Connection ~ 3250 4700
Text HLabel 5475 3250 3    50   Input ~ 0
~OE1
Text HLabel 7225 3250 3    50   Input ~ 0
~OE2
Text HLabel 8975 3250 3    50   Input ~ 0
~OE3
$EndSCHEMATC
