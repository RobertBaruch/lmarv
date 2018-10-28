EESchema Schematic File Version 4
LIBS:tester_v2-cache
EELAYER 26 0
EELAYER END
$Descr A2 23386 16535
encoding utf-8
Sheet 1 1
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
L lmarv:FT232H_BREAKOUT A1
U 1 1 5BCF188C
P 2800 6850
F 0 "A1" H 2650 7900 50  0000 R CNN
F 1 "FT232H_BREAKOUT" V 2800 7200 50  0000 R CNN
F 2 "lmarv:ADAFRUIT-FT232H" H 1950 6700 50  0001 C CNN
F 3 "https://learn.adafruit.com/adafruit-ft232h-breakout/downloads" H 1950 6700 50  0001 C CNN
	1    2800 6850
	1    0    0    -1  
$EndComp
$Comp
L lmarv:PCA9698DDG U1
U 1 1 5BCF18E8
P 5975 6800
F 0 "U1" H 5550 9350 50  0000 C CNN
F 1 "PCA9698DDG" H 6400 9350 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-56_6.1x14mm_Pitch0.5mm" H 6125 6800 50  0001 C CNN
F 3 "https://www.nxp.com/docs/en/data-sheet/PCA9698.pdf" H 6125 6800 50  0001 C CNN
	1    5975 6800
	1    0    0    -1  
$EndComp
$Comp
L lmarv:PCA9698DDG U2
U 1 1 5BCF1934
P 8550 6775
F 0 "U2" H 8125 9325 50  0000 C CNN
F 1 "PCA9698DDG" H 8975 9325 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-56_6.1x14mm_Pitch0.5mm" H 8700 6775 50  0001 C CNN
F 3 "https://www.nxp.com/docs/en/data-sheet/PCA9698.pdf" H 8700 6775 50  0001 C CNN
	1    8550 6775
	1    0    0    -1  
$EndComp
$Comp
L lmarv:PCA9698DDG U3
U 1 1 5BCF1A7D
P 11150 6775
F 0 "U3" H 10725 9325 50  0000 C CNN
F 1 "PCA9698DDG" H 11575 9325 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-56_6.1x14mm_Pitch0.5mm" H 11300 6775 50  0001 C CNN
F 3 "https://www.nxp.com/docs/en/data-sheet/PCA9698.pdf" H 11300 6775 50  0001 C CNN
	1    11150 6775
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 7150 3375 7150
Wire Wire Line
	3375 7150 3375 7250
Wire Wire Line
	3375 7250 3300 7250
Wire Wire Line
	4400 7150 4400 4600
Wire Wire Line
	4400 4600 5275 4600
Connection ~ 3375 7150
Text Label 3950 7150 0    50   ~ 0
SDA
Wire Wire Line
	4675 7050 4675 4700
Wire Wire Line
	4675 4700 5275 4700
$Comp
L Device:R R3
U 1 1 5BCF1D32
P 4400 4350
F 0 "R3" V 4500 4300 50  0000 L CNN
F 1 "4k7" V 4400 4275 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 4330 4350 50  0001 C CNN
F 3 "~" H 4400 4350 50  0001 C CNN
	1    4400 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4675 4500 4675 4700
Connection ~ 4675 4700
Wire Wire Line
	4400 4500 4400 4600
Connection ~ 4400 4600
$Comp
L power:GNDREF #PWR0101
U 1 1 5BCF203E
P 2800 8050
F 0 "#PWR0101" H 2800 7800 50  0001 C CNN
F 1 "GNDREF" H 2805 7877 50  0001 C CNN
F 2 "" H 2800 8050 50  0001 C CNN
F 3 "" H 2800 8050 50  0001 C CNN
	1    2800 8050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0102
U 1 1 5BCF206D
P 5975 9700
F 0 "#PWR0102" H 5975 9450 50  0001 C CNN
F 1 "GNDREF" H 5980 9527 50  0001 C CNN
F 2 "" H 5975 9700 50  0001 C CNN
F 3 "" H 5975 9700 50  0001 C CNN
	1    5975 9700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5675 9600 5675 9700
Wire Wire Line
	5675 9700 5775 9700
Wire Wire Line
	6275 9700 6275 9600
Connection ~ 5975 9700
Wire Wire Line
	5975 9700 6075 9700
Wire Wire Line
	6175 9600 6175 9700
Connection ~ 6175 9700
Wire Wire Line
	6175 9700 6275 9700
Wire Wire Line
	6075 9600 6075 9700
Connection ~ 6075 9700
Wire Wire Line
	6075 9700 6175 9700
Wire Wire Line
	5875 9600 5875 9700
Connection ~ 5875 9700
Wire Wire Line
	5875 9700 5975 9700
Wire Wire Line
	5775 9600 5775 9700
Connection ~ 5775 9700
Wire Wire Line
	5775 9700 5875 9700
$Comp
L power:+3V3 #PWR0103
U 1 1 5BCF2693
P 5975 4025
F 0 "#PWR0103" H 5975 3875 50  0001 C CNN
F 1 "+3V3" H 5990 4198 50  0000 C CNN
F 2 "" H 5975 4025 50  0001 C CNN
F 3 "" H 5975 4025 50  0001 C CNN
	1    5975 4025
	1    0    0    -1  
$EndComp
Wire Wire Line
	5875 4100 5875 4025
Wire Wire Line
	5875 4025 5975 4025
Wire Wire Line
	6075 4025 6075 4100
Connection ~ 5975 4025
Wire Wire Line
	5975 4025 6075 4025
$Comp
L Device:R R4
U 1 1 5BCF2ABF
P 4675 4350
F 0 "R4" V 4775 4300 50  0000 L CNN
F 1 "4k7" V 4675 4275 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 4605 4350 50  0001 C CNN
F 3 "~" H 4675 4350 50  0001 C CNN
	1    4675 4350
	1    0    0    -1  
$EndComp
Text Label 3950 5950 0    50   ~ 0
~OE
Wire Wire Line
	4900 4900 5275 4900
Text Label 4975 4900 0    50   ~ 0
~OE
Wire Wire Line
	7475 4875 7850 4875
Text Label 7550 4875 0    50   ~ 0
~OE
Wire Wire Line
	10075 4875 10450 4875
Text Label 10150 4875 0    50   ~ 0
~OE
Wire Wire Line
	7850 4575 7475 4575
Wire Wire Line
	7850 4675 7475 4675
Text Label 7550 4675 0    50   ~ 0
SCL
Text Label 7550 4575 0    50   ~ 0
SDA
Wire Wire Line
	10450 4575 10075 4575
Wire Wire Line
	10450 4675 10075 4675
Text Label 10150 4675 0    50   ~ 0
SCL
Text Label 10150 4575 0    50   ~ 0
SDA
Wire Wire Line
	3300 6050 3600 6050
Text Label 3950 6050 0    50   ~ 0
~RESET
Wire Wire Line
	4900 5000 5275 5000
Text Label 4975 5000 0    50   ~ 0
~RESET
Wire Wire Line
	7475 4975 7850 4975
Text Label 7550 4975 0    50   ~ 0
~RESET
Wire Wire Line
	10075 4975 10450 4975
Text Label 10150 4975 0    50   ~ 0
~RESET
$Comp
L power:GNDREF #PWR0104
U 1 1 5BCF5C88
P 8550 9675
F 0 "#PWR0104" H 8550 9425 50  0001 C CNN
F 1 "GNDREF" H 8555 9502 50  0001 C CNN
F 2 "" H 8550 9675 50  0001 C CNN
F 3 "" H 8550 9675 50  0001 C CNN
	1    8550 9675
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 9575 8250 9675
Wire Wire Line
	8250 9675 8350 9675
Wire Wire Line
	8850 9675 8850 9575
Connection ~ 8550 9675
Wire Wire Line
	8550 9675 8650 9675
Wire Wire Line
	8750 9575 8750 9675
Connection ~ 8750 9675
Wire Wire Line
	8750 9675 8850 9675
Wire Wire Line
	8650 9575 8650 9675
Connection ~ 8650 9675
Wire Wire Line
	8650 9675 8750 9675
Wire Wire Line
	8450 9575 8450 9675
Connection ~ 8450 9675
Wire Wire Line
	8450 9675 8550 9675
Wire Wire Line
	8350 9575 8350 9675
Connection ~ 8350 9675
Wire Wire Line
	8350 9675 8450 9675
$Comp
L power:GNDREF #PWR0105
U 1 1 5BCF65F7
P 11150 9675
F 0 "#PWR0105" H 11150 9425 50  0001 C CNN
F 1 "GNDREF" H 11155 9502 50  0001 C CNN
F 2 "" H 11150 9675 50  0001 C CNN
F 3 "" H 11150 9675 50  0001 C CNN
	1    11150 9675
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 9575 10850 9675
Wire Wire Line
	10850 9675 10950 9675
Wire Wire Line
	11450 9675 11450 9575
Connection ~ 11150 9675
Wire Wire Line
	11150 9675 11250 9675
Wire Wire Line
	11350 9575 11350 9675
Connection ~ 11350 9675
Wire Wire Line
	11350 9675 11450 9675
Wire Wire Line
	11250 9575 11250 9675
Connection ~ 11250 9675
Wire Wire Line
	11250 9675 11350 9675
Wire Wire Line
	11050 9575 11050 9675
Connection ~ 11050 9675
Wire Wire Line
	11050 9675 11150 9675
Wire Wire Line
	10950 9575 10950 9675
Connection ~ 10950 9675
Wire Wire Line
	10950 9675 11050 9675
$Comp
L power:+3V3 #PWR0106
U 1 1 5BCF747E
P 8550 4000
F 0 "#PWR0106" H 8550 3850 50  0001 C CNN
F 1 "+3V3" H 8565 4173 50  0000 C CNN
F 2 "" H 8550 4000 50  0001 C CNN
F 3 "" H 8550 4000 50  0001 C CNN
	1    8550 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 4075 8450 4000
Wire Wire Line
	8450 4000 8550 4000
Wire Wire Line
	8650 4000 8650 4075
Connection ~ 8550 4000
Wire Wire Line
	8550 4000 8650 4000
$Comp
L power:+3V3 #PWR0107
U 1 1 5BCF83F6
P 11150 4000
F 0 "#PWR0107" H 11150 3850 50  0001 C CNN
F 1 "+3V3" H 11165 4173 50  0000 C CNN
F 2 "" H 11150 4000 50  0001 C CNN
F 3 "" H 11150 4000 50  0001 C CNN
	1    11150 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	11050 4075 11050 4000
Wire Wire Line
	11050 4000 11150 4000
Wire Wire Line
	11250 4000 11250 4075
Connection ~ 11150 4000
Wire Wire Line
	11150 4000 11250 4000
$Comp
L power:GNDREF #PWR0108
U 1 1 5BCF9664
P 5200 5500
F 0 "#PWR0108" H 5200 5250 50  0001 C CNN
F 1 "GNDREF" H 5205 5327 50  0001 C CNN
F 2 "" H 5200 5500 50  0001 C CNN
F 3 "" H 5200 5500 50  0001 C CNN
	1    5200 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5500 5200 5400
Wire Wire Line
	5200 5200 5275 5200
Wire Wire Line
	5275 5300 5200 5300
Connection ~ 5200 5300
Wire Wire Line
	5200 5300 5200 5200
Wire Wire Line
	5275 5400 5200 5400
Connection ~ 5200 5400
Wire Wire Line
	5200 5400 5200 5300
Text Notes 5850 10175 0    50   ~ 0
I2C ADDR\n0x20
$Comp
L power:GNDREF #PWR0109
U 1 1 5BCFD25C
P 7775 5475
F 0 "#PWR0109" H 7775 5225 50  0001 C CNN
F 1 "GNDREF" H 7780 5302 50  0001 C CNN
F 2 "" H 7775 5475 50  0001 C CNN
F 3 "" H 7775 5475 50  0001 C CNN
	1    7775 5475
	1    0    0    -1  
$EndComp
Wire Wire Line
	7775 5475 7775 5375
Wire Wire Line
	7850 5275 7775 5275
Wire Wire Line
	7850 5375 7775 5375
Connection ~ 7775 5375
Wire Wire Line
	7775 5375 7775 5275
$Comp
L power:+3V3 #PWR0110
U 1 1 5BCFEB72
P 7650 5225
F 0 "#PWR0110" H 7650 5075 50  0001 C CNN
F 1 "+3V3" H 7665 5398 50  0000 C CNN
F 2 "" H 7650 5225 50  0001 C CNN
F 3 "" H 7650 5225 50  0001 C CNN
	1    7650 5225
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 5225 7775 5225
Wire Wire Line
	7775 5225 7775 5175
Wire Wire Line
	7775 5175 7850 5175
$Comp
L power:GNDREF #PWR0111
U 1 1 5BD00671
P 10375 5475
F 0 "#PWR0111" H 10375 5225 50  0001 C CNN
F 1 "GNDREF" H 10380 5302 50  0001 C CNN
F 2 "" H 10375 5475 50  0001 C CNN
F 3 "" H 10375 5475 50  0001 C CNN
	1    10375 5475
	1    0    0    -1  
$EndComp
Wire Wire Line
	10375 5475 10375 5375
Wire Wire Line
	10450 5375 10375 5375
Connection ~ 10375 5375
$Comp
L power:+3V3 #PWR0112
U 1 1 5BD0067C
P 10250 5225
F 0 "#PWR0112" H 10250 5075 50  0001 C CNN
F 1 "+3V3" H 10265 5398 50  0000 C CNN
F 2 "" H 10250 5225 50  0001 C CNN
F 3 "" H 10250 5225 50  0001 C CNN
	1    10250 5225
	1    0    0    -1  
$EndComp
Wire Wire Line
	10375 5175 10450 5175
Wire Wire Line
	10375 5175 10375 5375
Wire Wire Line
	10450 5275 10250 5275
Wire Wire Line
	10250 5275 10250 5225
Text Notes 8425 10175 0    50   ~ 0
I2C ADDR\n0x21
Text Notes 11025 10175 0    50   ~ 0
I2C ADDR\n0x22
$Comp
L Device:R R1
U 1 1 5BD064D2
P 3600 6275
F 0 "R1" V 3700 6225 50  0000 L CNN
F 1 "4k7" V 3600 6200 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 3530 6275 50  0001 C CNN
F 3 "~" H 3600 6275 50  0001 C CNN
	1    3600 6275
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 6125 3600 6050
Connection ~ 3600 6050
Wire Wire Line
	3600 6050 4200 6050
Wire Wire Line
	3300 7050 4675 7050
Wire Wire Line
	3375 7150 4400 7150
$Comp
L power:GNDREF #PWR0113
U 1 1 5BD10B32
P 3600 6425
F 0 "#PWR0113" H 3600 6175 50  0001 C CNN
F 1 "GNDREF" H 3605 6252 50  0001 C CNN
F 2 "" H 3600 6425 50  0001 C CNN
F 3 "" H 3600 6425 50  0001 C CNN
	1    3600 6425
	1    0    0    -1  
$EndComp
Text Label 3950 7050 0    50   ~ 0
SCL
Text Notes 2450 8450 0    50   ~ 0
MUST BE CONFIGURED\nIN MPSSE MODE
$Comp
L power:+3V3 #PWR0114
U 1 1 5BD17874
P 3650 4450
F 0 "#PWR0114" H 3650 4300 50  0001 C CNN
F 1 "+3V3" H 3665 4623 50  0000 C CNN
F 2 "" H 3650 4450 50  0001 C CNN
F 3 "" H 3650 4450 50  0001 C CNN
	1    3650 4450
	1    0    0    -1  
$EndComp
$Comp
L lmarv:PCA9698DDG U4
U 1 1 5BEAE8CA
P 13650 6825
F 0 "U4" H 13225 9375 50  0000 C CNN
F 1 "PCA9698DDG" H 14075 9375 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-56_6.1x14mm_Pitch0.5mm" H 13800 6825 50  0001 C CNN
F 3 "https://www.nxp.com/docs/en/data-sheet/PCA9698.pdf" H 13800 6825 50  0001 C CNN
	1    13650 6825
	1    0    0    -1  
$EndComp
Wire Wire Line
	12575 4925 12950 4925
Text Label 12650 4925 0    50   ~ 0
~OE
Wire Wire Line
	12950 4625 12575 4625
Wire Wire Line
	12950 4725 12575 4725
Text Label 12650 4725 0    50   ~ 0
SCL
Text Label 12650 4625 0    50   ~ 0
SDA
Wire Wire Line
	12575 5025 12950 5025
Text Label 12650 5025 0    50   ~ 0
~RESET
$Comp
L power:GNDREF #PWR0115
U 1 1 5BEAE8D8
P 13650 9725
F 0 "#PWR0115" H 13650 9475 50  0001 C CNN
F 1 "GNDREF" H 13655 9552 50  0001 C CNN
F 2 "" H 13650 9725 50  0001 C CNN
F 3 "" H 13650 9725 50  0001 C CNN
	1    13650 9725
	1    0    0    -1  
$EndComp
Wire Wire Line
	13350 9625 13350 9725
Wire Wire Line
	13350 9725 13450 9725
Wire Wire Line
	13950 9725 13950 9625
Connection ~ 13650 9725
Wire Wire Line
	13650 9725 13750 9725
Wire Wire Line
	13850 9625 13850 9725
Connection ~ 13850 9725
Wire Wire Line
	13850 9725 13950 9725
Wire Wire Line
	13750 9625 13750 9725
Connection ~ 13750 9725
Wire Wire Line
	13750 9725 13850 9725
Wire Wire Line
	13550 9625 13550 9725
Connection ~ 13550 9725
Wire Wire Line
	13550 9725 13650 9725
Wire Wire Line
	13450 9625 13450 9725
Connection ~ 13450 9725
Wire Wire Line
	13450 9725 13550 9725
$Comp
L power:+3V3 #PWR0116
U 1 1 5BEAE8EF
P 13650 4050
F 0 "#PWR0116" H 13650 3900 50  0001 C CNN
F 1 "+3V3" H 13665 4223 50  0000 C CNN
F 2 "" H 13650 4050 50  0001 C CNN
F 3 "" H 13650 4050 50  0001 C CNN
	1    13650 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	13550 4125 13550 4050
Wire Wire Line
	13550 4050 13650 4050
Wire Wire Line
	13750 4050 13750 4125
Connection ~ 13650 4050
Wire Wire Line
	13650 4050 13750 4050
$Comp
L power:GNDREF #PWR0117
U 1 1 5BEAE8FA
P 12875 5525
F 0 "#PWR0117" H 12875 5275 50  0001 C CNN
F 1 "GNDREF" H 12880 5352 50  0001 C CNN
F 2 "" H 12875 5525 50  0001 C CNN
F 3 "" H 12875 5525 50  0001 C CNN
	1    12875 5525
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0118
U 1 1 5BEAE903
P 12750 5275
F 0 "#PWR0118" H 12750 5125 50  0001 C CNN
F 1 "+3V3" H 12765 5448 50  0000 C CNN
F 2 "" H 12750 5275 50  0001 C CNN
F 3 "" H 12750 5275 50  0001 C CNN
	1    12750 5275
	1    0    0    -1  
$EndComp
Wire Wire Line
	12875 5225 12950 5225
Wire Wire Line
	12950 5325 12750 5325
Wire Wire Line
	12750 5325 12750 5275
Text Notes 13525 10225 0    50   ~ 0
I2C ADDR\n0x23
Wire Wire Line
	12875 5225 12875 5525
Wire Wire Line
	12950 5425 12750 5425
Wire Wire Line
	12750 5425 12750 5325
Connection ~ 12750 5325
$Comp
L Device:R R2
U 1 1 5BEB8A39
P 3800 5725
F 0 "R2" V 3900 5675 50  0000 L CNN
F 1 "4k7" V 3800 5650 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 3730 5725 50  0001 C CNN
F 3 "~" H 3800 5725 50  0001 C CNN
	1    3800 5725
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 5950 3800 5950
$Comp
L power:+3V3 #PWR0119
U 1 1 5BEBC12C
P 3800 5575
F 0 "#PWR0119" H 3800 5425 50  0001 C CNN
F 1 "+3V3" H 3815 5748 50  0000 C CNN
F 2 "" H 3800 5575 50  0001 C CNN
F 3 "" H 3800 5575 50  0001 C CNN
	1    3800 5575
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 5875 3800 5950
Connection ~ 3800 5950
Wire Wire Line
	3800 5950 4200 5950
$Comp
L Connector_Specialized:Barrel_Jack J1
U 1 1 5BEC66D8
P 2500 2800
F 0 "J1" H 2578 3125 50  0000 C CNN
F 1 "Barrel_Jack" H 2578 3034 50  0000 C CNN
F 2 "lmarv:PWRJACK-3_14.4x9.0mm_P4.7mm+6.0mm" H 2550 2760 50  0001 C CNN
F 3 "~" H 2550 2760 50  0001 C CNN
	1    2500 2800
	1    0    0    -1  
$EndComp
$Comp
L lmarv:dual-pcie-cardedge_split P1
U 1 1 5BEC6863
P 16725 3425
F 0 "P1" H 16900 3375 60  0000 R CNN
F 1 "dual-pcie-cardedge_split" H 16448 5022 60  0001 R CNN
F 2 "lmarv:PCI-EXPRESS" H 15075 975 60  0001 C CNN
F 3 "" H 15075 975 60  0001 C CNN
	1    16725 3425
	-1   0    0    1   
$EndComp
$Comp
L lmarv:dual-pcie-cardedge_split P1
U 2 1 5BECA04A
P 16725 6900
F 0 "P1" H 16925 6850 60  0000 R CNN
F 1 "dual-pcie-cardedge_split" H 16448 8497 60  0001 R CNN
F 2 "lmarv:PCI-EXPRESS" H 15075 4450 60  0001 C CNN
F 3 "" H 15075 4450 60  0001 C CNN
	2    16725 6900
	-1   0    0    1   
$EndComp
$Comp
L lmarv:dual-pcie-cardedge_split P1
U 3 1 5BECD714
P 16525 10425
F 0 "P1" H 16618 10344 60  0000 C CNN
F 1 "dual-pcie-cardedge_split" H 16248 12022 60  0001 R CNN
F 2 "lmarv:PCI-EXPRESS" H 14875 7975 60  0001 C CNN
F 3 "" H 14875 7975 60  0001 C CNN
	3    16525 10425
	1    0    0    1   
$EndComp
$Comp
L lmarv:dual-pcie-cardedge_split P1
U 4 1 5BEDB45F
P 18850 3475
F 0 "P1" H 19025 3425 60  0000 R CNN
F 1 "dual-pcie-cardedge_split" H 18573 5072 60  0001 R CNN
F 2 "lmarv:PCI-EXPRESS" H 17200 1025 60  0001 C CNN
F 3 "" H 17200 1025 60  0001 C CNN
	4    18850 3475
	-1   0    0    1   
$EndComp
$Comp
L lmarv:dual-pcie-cardedge_split P1
U 5 1 5BEDB4F3
P 18850 4925
F 0 "P1" H 19025 4875 60  0000 R CNN
F 1 "dual-pcie-cardedge_split" H 18573 6522 60  0001 R CNN
F 2 "lmarv:PCI-EXPRESS" H 17200 2475 60  0001 C CNN
F 3 "" H 17200 2475 60  0001 C CNN
	5    18850 4925
	-1   0    0    -1  
$EndComp
$Comp
L lmarv:dual-pcie-cardedge_split P1
U 7 1 5BEDB7A9
P 18850 6075
F 0 "P1" H 19025 6950 60  0000 R CNN
F 1 "dual-pcie-cardedge_split" H 18573 7672 60  0001 R CNN
F 2 "lmarv:PCI-EXPRESS" H 17200 3625 60  0001 C CNN
F 3 "" H 17200 3625 60  0001 C CNN
	7    18850 6075
	-1   0    0    -1  
$EndComp
$Comp
L lmarv:dual-pcie-cardedge_split P1
U 8 1 5BEDBA2A
P 18800 7300
F 0 "P1" H 18900 7050 60  0000 R CNN
F 1 "dual-pcie-cardedge_split" H 18523 8897 60  0001 R CNN
F 2 "lmarv:PCI-EXPRESS" H 17150 4850 60  0001 C CNN
F 3 "" H 17150 4850 60  0001 C CNN
	8    18800 7300
	-1   0    0    1   
$EndComp
$Comp
L lmarv:dual-pcie-cardedge_split P1
U 9 1 5BEDBBF4
P 18800 8275
F 0 "P1" H 18925 8925 60  0000 R CNN
F 1 "dual-pcie-cardedge_split" H 18523 9872 60  0001 R CNN
F 2 "lmarv:PCI-EXPRESS" H 17150 5825 60  0001 C CNN
F 3 "" H 17150 5825 60  0001 C CNN
	9    18800 8275
	-1   0    0    -1  
$EndComp
$Comp
L lmarv:dual-pcie-cardedge_split P1
U 10 1 5BEE2C98
P 18850 9750
F 0 "P1" H 18975 10400 60  0000 R CNN
F 1 "dual-pcie-cardedge_split" H 18573 11347 60  0001 R CNN
F 2 "lmarv:PCI-EXPRESS" H 17200 7300 60  0001 C CNN
F 3 "" H 17200 7300 60  0001 C CNN
	10   18850 9750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	16325 3525 15950 3525
Text Label 16000 3525 0    50   ~ 0
rs1[0]
Wire Wire Line
	16325 3625 15950 3625
Text Label 16000 3625 0    50   ~ 0
rs1[1]
Wire Wire Line
	16325 3725 15950 3725
Text Label 16000 3725 0    50   ~ 0
rs1[2]
Wire Wire Line
	16325 3825 15950 3825
Text Label 16000 3825 0    50   ~ 0
rs1[3]
Wire Wire Line
	16325 3925 15950 3925
Text Label 16000 3925 0    50   ~ 0
rs1[4]
Wire Wire Line
	16325 4025 15950 4025
Text Label 16000 4025 0    50   ~ 0
rs1[5]
Wire Wire Line
	16325 4125 15950 4125
Text Label 16000 4125 0    50   ~ 0
rs1[6]
Wire Wire Line
	16325 4225 15950 4225
Text Label 16000 4225 0    50   ~ 0
rs1[7]
Wire Wire Line
	16325 4325 15950 4325
Text Label 16000 4325 0    50   ~ 0
rs1[8]
Wire Wire Line
	16325 4425 15950 4425
Text Label 16000 4425 0    50   ~ 0
rs1[9]
Wire Wire Line
	16325 4525 15950 4525
Text Label 16000 4525 0    50   ~ 0
rs1[10]
Wire Wire Line
	16325 4625 15950 4625
Text Label 16000 4625 0    50   ~ 0
rs1[11]
Wire Wire Line
	16325 4725 15950 4725
Text Label 16000 4725 0    50   ~ 0
rs1[12]
Wire Wire Line
	16325 4825 15950 4825
Text Label 16000 4825 0    50   ~ 0
rs1[13]
Wire Wire Line
	16325 4925 15950 4925
Text Label 16000 4925 0    50   ~ 0
rs1[14]
Wire Wire Line
	16325 5025 15950 5025
Text Label 16000 5025 0    50   ~ 0
rs1[15]
Wire Wire Line
	16325 5125 15950 5125
Text Label 16000 5125 0    50   ~ 0
rs1[16]
Wire Wire Line
	16325 5225 15950 5225
Text Label 16000 5225 0    50   ~ 0
rs1[17]
Wire Wire Line
	16325 5325 15950 5325
Text Label 16000 5325 0    50   ~ 0
rs1[18]
Wire Wire Line
	16325 5425 15950 5425
Text Label 16000 5425 0    50   ~ 0
rs1[19]
Wire Wire Line
	16325 5525 15950 5525
Text Label 16000 5525 0    50   ~ 0
rs1[20]
Wire Wire Line
	16325 5625 15950 5625
Text Label 16000 5625 0    50   ~ 0
rs1[21]
Wire Wire Line
	16325 5725 15950 5725
Text Label 16000 5725 0    50   ~ 0
rs1[22]
Wire Wire Line
	16325 5825 15950 5825
Text Label 16000 5825 0    50   ~ 0
rs1[23]
Wire Wire Line
	16325 5925 15950 5925
Text Label 16000 5925 0    50   ~ 0
rs1[24]
Wire Wire Line
	16325 6025 15950 6025
Text Label 16000 6025 0    50   ~ 0
rs1[25]
Wire Wire Line
	16325 6125 15950 6125
Text Label 16000 6125 0    50   ~ 0
rs1[26]
Wire Wire Line
	16325 6225 15950 6225
Text Label 16000 6225 0    50   ~ 0
rs1[27]
Wire Wire Line
	16325 6325 15950 6325
Text Label 16000 6325 0    50   ~ 0
rs1[28]
Wire Wire Line
	16325 6425 15950 6425
Text Label 16000 6425 0    50   ~ 0
rs1[29]
Wire Wire Line
	16325 6525 15950 6525
Text Label 16000 6525 0    50   ~ 0
rs1[30]
Wire Wire Line
	16325 6625 15950 6625
Text Label 16000 6625 0    50   ~ 0
rs1[31]
Wire Wire Line
	16325 7000 15950 7000
Text Label 16000 7000 0    50   ~ 0
rs2[0]
Wire Wire Line
	16325 7100 15950 7100
Text Label 16000 7100 0    50   ~ 0
rs2[1]
Wire Wire Line
	16325 7200 15950 7200
Text Label 16000 7200 0    50   ~ 0
rs2[2]
Wire Wire Line
	16325 7300 15950 7300
Text Label 16000 7300 0    50   ~ 0
rs2[3]
Wire Wire Line
	16325 7400 15950 7400
Text Label 16000 7400 0    50   ~ 0
rs2[4]
Wire Wire Line
	16325 7500 15950 7500
Text Label 16000 7500 0    50   ~ 0
rs2[5]
Wire Wire Line
	16325 7600 15950 7600
Text Label 16000 7600 0    50   ~ 0
rs2[6]
Wire Wire Line
	16325 7700 15950 7700
Text Label 16000 7700 0    50   ~ 0
rs2[7]
Wire Wire Line
	16325 7800 15950 7800
Text Label 16000 7800 0    50   ~ 0
rs2[8]
Wire Wire Line
	16325 7900 15950 7900
Text Label 16000 7900 0    50   ~ 0
rs2[9]
Wire Wire Line
	16325 8000 15950 8000
Text Label 16000 8000 0    50   ~ 0
rs2[10]
Wire Wire Line
	16325 8100 15950 8100
Text Label 16000 8100 0    50   ~ 0
rs2[11]
Wire Wire Line
	16325 8200 15950 8200
Text Label 16000 8200 0    50   ~ 0
rs2[12]
Wire Wire Line
	16325 8300 15950 8300
Text Label 16000 8300 0    50   ~ 0
rs2[13]
Wire Wire Line
	16325 8400 15950 8400
Text Label 16000 8400 0    50   ~ 0
rs2[14]
Wire Wire Line
	16325 8500 15950 8500
Text Label 16000 8500 0    50   ~ 0
rs2[15]
Wire Wire Line
	16325 8600 15950 8600
Text Label 16000 8600 0    50   ~ 0
rs2[16]
Wire Wire Line
	16325 8700 15950 8700
Text Label 16000 8700 0    50   ~ 0
rs2[17]
Wire Wire Line
	16325 8800 15950 8800
Text Label 16000 8800 0    50   ~ 0
rs2[18]
Wire Wire Line
	16325 8900 15950 8900
Text Label 16000 8900 0    50   ~ 0
rs2[19]
Wire Wire Line
	16325 9000 15950 9000
Text Label 16000 9000 0    50   ~ 0
rs2[20]
Wire Wire Line
	16325 9100 15950 9100
Text Label 16000 9100 0    50   ~ 0
rs2[21]
Wire Wire Line
	16325 9200 15950 9200
Text Label 16000 9200 0    50   ~ 0
rs2[22]
Wire Wire Line
	16325 9300 15950 9300
Text Label 16000 9300 0    50   ~ 0
rs2[23]
Wire Wire Line
	16325 9400 15950 9400
Text Label 16000 9400 0    50   ~ 0
rs2[24]
Wire Wire Line
	16325 9500 15950 9500
Text Label 16000 9500 0    50   ~ 0
rs2[25]
Wire Wire Line
	16325 9600 15950 9600
Text Label 16000 9600 0    50   ~ 0
rs2[26]
Wire Wire Line
	16325 9700 15950 9700
Text Label 16000 9700 0    50   ~ 0
rs2[27]
Wire Wire Line
	16325 9800 15950 9800
Text Label 16000 9800 0    50   ~ 0
rs2[28]
Wire Wire Line
	16325 9900 15950 9900
Text Label 16000 9900 0    50   ~ 0
rs2[29]
Wire Wire Line
	16325 10000 15950 10000
Text Label 16000 10000 0    50   ~ 0
rs2[30]
Wire Wire Line
	16325 10100 15950 10100
Text Label 16000 10100 0    50   ~ 0
rs2[31]
Wire Wire Line
	16325 10525 15950 10525
Text Label 16000 10525 0    50   ~ 0
rd[0]
Wire Wire Line
	16325 10625 15950 10625
Text Label 16000 10625 0    50   ~ 0
rd[1]
Wire Wire Line
	16325 10725 15950 10725
Text Label 16000 10725 0    50   ~ 0
rd[2]
Wire Wire Line
	16325 10825 15950 10825
Text Label 16000 10825 0    50   ~ 0
rd[3]
Wire Wire Line
	16325 10925 15950 10925
Text Label 16000 10925 0    50   ~ 0
rd[4]
Wire Wire Line
	16325 11025 15950 11025
Text Label 16000 11025 0    50   ~ 0
rd[5]
Wire Wire Line
	16325 11125 15950 11125
Text Label 16000 11125 0    50   ~ 0
rd[6]
Wire Wire Line
	16325 11225 15950 11225
Text Label 16000 11225 0    50   ~ 0
rd[7]
Wire Wire Line
	16325 11325 15950 11325
Text Label 16000 11325 0    50   ~ 0
rd[8]
Wire Wire Line
	16325 11425 15950 11425
Text Label 16000 11425 0    50   ~ 0
rd[9]
Wire Wire Line
	16325 11525 15950 11525
Text Label 16000 11525 0    50   ~ 0
rd[10]
Wire Wire Line
	16325 11625 15950 11625
Text Label 16000 11625 0    50   ~ 0
rd[11]
Wire Wire Line
	16325 11725 15950 11725
Text Label 16000 11725 0    50   ~ 0
rd[12]
Wire Wire Line
	16325 11825 15950 11825
Text Label 16000 11825 0    50   ~ 0
rd[13]
Wire Wire Line
	16325 11925 15950 11925
Text Label 16000 11925 0    50   ~ 0
rd[14]
Wire Wire Line
	16325 12025 15950 12025
Text Label 16000 12025 0    50   ~ 0
rd[15]
Wire Wire Line
	16325 12125 15950 12125
Text Label 16000 12125 0    50   ~ 0
rd[16]
Wire Wire Line
	16325 12225 15950 12225
Text Label 16000 12225 0    50   ~ 0
rd[17]
Wire Wire Line
	16325 12325 15950 12325
Text Label 16000 12325 0    50   ~ 0
rd[18]
Wire Wire Line
	16325 12425 15950 12425
Text Label 16000 12425 0    50   ~ 0
rd[19]
Wire Wire Line
	16325 12525 15950 12525
Text Label 16000 12525 0    50   ~ 0
rd[20]
Wire Wire Line
	16325 12625 15950 12625
Text Label 16000 12625 0    50   ~ 0
rd[21]
Wire Wire Line
	16325 12725 15950 12725
Text Label 16000 12725 0    50   ~ 0
rd[22]
Wire Wire Line
	16325 12825 15950 12825
Text Label 16000 12825 0    50   ~ 0
rd[23]
Wire Wire Line
	16325 12925 15950 12925
Text Label 16000 12925 0    50   ~ 0
rd[24]
Wire Wire Line
	16325 13025 15950 13025
Text Label 16000 13025 0    50   ~ 0
rd[25]
Wire Wire Line
	16325 13125 15950 13125
Text Label 16000 13125 0    50   ~ 0
rd[26]
Wire Wire Line
	16325 13225 15950 13225
Text Label 16000 13225 0    50   ~ 0
rd[27]
Wire Wire Line
	16325 13325 15950 13325
Text Label 16000 13325 0    50   ~ 0
rd[28]
Wire Wire Line
	16325 13425 15950 13425
Text Label 16000 13425 0    50   ~ 0
rd[29]
Wire Wire Line
	16325 13525 15950 13525
Text Label 16000 13525 0    50   ~ 0
rd[30]
Wire Wire Line
	16325 13625 15950 13625
Text Label 16000 13625 0    50   ~ 0
rd[31]
Wire Wire Line
	6675 4600 7050 4600
Text Label 7000 4600 2    50   ~ 0
rs1[0]
Wire Wire Line
	6675 4700 7050 4700
Text Label 7000 4700 2    50   ~ 0
rs1[1]
Wire Wire Line
	6675 4800 7050 4800
Text Label 7000 4800 2    50   ~ 0
rs1[2]
Wire Wire Line
	6675 4900 7050 4900
Text Label 7000 4900 2    50   ~ 0
rs1[3]
Wire Wire Line
	6675 5000 7050 5000
Text Label 7000 5000 2    50   ~ 0
rs1[4]
Wire Wire Line
	6675 5100 7050 5100
Text Label 7000 5100 2    50   ~ 0
rs1[5]
Wire Wire Line
	6675 5200 7050 5200
Text Label 7000 5200 2    50   ~ 0
rs1[6]
Wire Wire Line
	6675 5300 7050 5300
Text Label 7000 5300 2    50   ~ 0
rs1[7]
Wire Wire Line
	6675 5500 7050 5500
Text Label 7000 5500 2    50   ~ 0
rs1[8]
Wire Wire Line
	6675 5600 7050 5600
Text Label 7000 5600 2    50   ~ 0
rs1[9]
Wire Wire Line
	6675 5700 7050 5700
Text Label 7000 5700 2    50   ~ 0
rs1[10]
Wire Wire Line
	6675 5800 7050 5800
Text Label 7000 5800 2    50   ~ 0
rs1[11]
Wire Wire Line
	6675 5900 7050 5900
Text Label 7000 5900 2    50   ~ 0
rs1[12]
Wire Wire Line
	6675 6000 7050 6000
Text Label 7000 6000 2    50   ~ 0
rs1[13]
Wire Wire Line
	6675 6100 7050 6100
Text Label 7000 6100 2    50   ~ 0
rs1[14]
Wire Wire Line
	6675 6200 7050 6200
Text Label 7000 6200 2    50   ~ 0
rs1[15]
Wire Wire Line
	11850 4575 12225 4575
Text Label 12175 4575 2    50   ~ 0
rs1[16]
Wire Wire Line
	11850 4675 12225 4675
Text Label 12175 4675 2    50   ~ 0
rs1[17]
Wire Wire Line
	11850 4775 12225 4775
Text Label 12175 4775 2    50   ~ 0
rs1[18]
Wire Wire Line
	11850 4875 12225 4875
Text Label 12175 4875 2    50   ~ 0
rs1[19]
Wire Wire Line
	11850 4975 12225 4975
Text Label 12175 4975 2    50   ~ 0
rs1[20]
Wire Wire Line
	11850 5075 12225 5075
Text Label 12175 5075 2    50   ~ 0
rs1[21]
Wire Wire Line
	11850 5175 12225 5175
Text Label 12175 5175 2    50   ~ 0
rs1[22]
Wire Wire Line
	11850 5275 12225 5275
Text Label 12175 5275 2    50   ~ 0
rs1[23]
Wire Wire Line
	11850 5475 12225 5475
Text Label 12175 5475 2    50   ~ 0
rs1[24]
Wire Wire Line
	11850 5575 12225 5575
Text Label 12175 5575 2    50   ~ 0
rs1[25]
Wire Wire Line
	11850 5675 12225 5675
Text Label 12175 5675 2    50   ~ 0
rs1[26]
Wire Wire Line
	11850 5775 12225 5775
Text Label 12175 5775 2    50   ~ 0
rs1[27]
Wire Wire Line
	11850 5875 12225 5875
Text Label 12175 5875 2    50   ~ 0
rs1[28]
Wire Wire Line
	11850 5975 12225 5975
Text Label 12175 5975 2    50   ~ 0
rs1[29]
Wire Wire Line
	11850 6075 12225 6075
Text Label 12175 6075 2    50   ~ 0
rs1[30]
Wire Wire Line
	11850 6175 12225 6175
Text Label 12175 6175 2    50   ~ 0
rs1[31]
Wire Wire Line
	9250 4575 9625 4575
Text Label 9575 4575 2    50   ~ 0
rs2[0]
Wire Wire Line
	9250 4675 9625 4675
Text Label 9575 4675 2    50   ~ 0
rs2[1]
Wire Wire Line
	9250 4775 9625 4775
Text Label 9575 4775 2    50   ~ 0
rs2[2]
Wire Wire Line
	9250 4875 9625 4875
Text Label 9575 4875 2    50   ~ 0
rs2[3]
Wire Wire Line
	9250 4975 9625 4975
Text Label 9575 4975 2    50   ~ 0
rs2[4]
Wire Wire Line
	9250 5075 9625 5075
Text Label 9575 5075 2    50   ~ 0
rs2[5]
Wire Wire Line
	9250 5175 9625 5175
Text Label 9575 5175 2    50   ~ 0
rs2[6]
Wire Wire Line
	9250 5275 9625 5275
Text Label 9575 5275 2    50   ~ 0
rs2[7]
Wire Wire Line
	9250 5475 9625 5475
Text Label 9575 5475 2    50   ~ 0
rs2[8]
Wire Wire Line
	9250 5575 9625 5575
Text Label 9575 5575 2    50   ~ 0
rs2[9]
Wire Wire Line
	9250 5675 9625 5675
Text Label 9575 5675 2    50   ~ 0
rs2[10]
Wire Wire Line
	9250 5775 9625 5775
Text Label 9575 5775 2    50   ~ 0
rs2[11]
Wire Wire Line
	9250 5875 9625 5875
Text Label 9575 5875 2    50   ~ 0
rs2[12]
Wire Wire Line
	9250 5975 9625 5975
Text Label 9575 5975 2    50   ~ 0
rs2[13]
Wire Wire Line
	9250 6075 9625 6075
Text Label 9575 6075 2    50   ~ 0
rs2[14]
Wire Wire Line
	9250 6175 9625 6175
Text Label 9575 6175 2    50   ~ 0
rs2[15]
Wire Wire Line
	14350 4625 14725 4625
Text Label 14675 4625 2    50   ~ 0
rs2[16]
Wire Wire Line
	14350 4725 14725 4725
Text Label 14675 4725 2    50   ~ 0
rs2[17]
Wire Wire Line
	14350 4825 14725 4825
Text Label 14675 4825 2    50   ~ 0
rs2[18]
Wire Wire Line
	14350 4925 14725 4925
Text Label 14675 4925 2    50   ~ 0
rs2[19]
Wire Wire Line
	14350 5025 14725 5025
Text Label 14675 5025 2    50   ~ 0
rs2[20]
Wire Wire Line
	14350 5125 14725 5125
Text Label 14675 5125 2    50   ~ 0
rs2[21]
Wire Wire Line
	14350 5225 14725 5225
Text Label 14675 5225 2    50   ~ 0
rs2[22]
Wire Wire Line
	14350 5325 14725 5325
Text Label 14675 5325 2    50   ~ 0
rs2[23]
Wire Wire Line
	14350 5525 14725 5525
Text Label 14675 5525 2    50   ~ 0
rs2[24]
Wire Wire Line
	14350 5625 14725 5625
Text Label 14675 5625 2    50   ~ 0
rs2[25]
Wire Wire Line
	14350 5725 14725 5725
Text Label 14675 5725 2    50   ~ 0
rs2[26]
Wire Wire Line
	14350 5825 14725 5825
Text Label 14675 5825 2    50   ~ 0
rs2[27]
Wire Wire Line
	14350 5925 14725 5925
Text Label 14675 5925 2    50   ~ 0
rs2[28]
Wire Wire Line
	14350 6025 14725 6025
Text Label 14675 6025 2    50   ~ 0
rs2[29]
Wire Wire Line
	14350 6125 14725 6125
Text Label 14675 6125 2    50   ~ 0
rs2[30]
Wire Wire Line
	14350 6225 14725 6225
Text Label 14675 6225 2    50   ~ 0
rs2[31]
Wire Wire Line
	6675 6400 7050 6400
Text Label 7000 6400 2    50   ~ 0
rd[0]
Wire Wire Line
	6675 6500 7050 6500
Text Label 7000 6500 2    50   ~ 0
rd[1]
Wire Wire Line
	6675 6600 7050 6600
Text Label 7000 6600 2    50   ~ 0
rd[2]
Wire Wire Line
	6675 6700 7050 6700
Text Label 7000 6700 2    50   ~ 0
rd[3]
Wire Wire Line
	6675 6800 7050 6800
Text Label 7000 6800 2    50   ~ 0
rd[4]
Wire Wire Line
	6675 6900 7050 6900
Text Label 7000 6900 2    50   ~ 0
rd[5]
Wire Wire Line
	6675 7000 7050 7000
Text Label 7000 7000 2    50   ~ 0
rd[6]
Wire Wire Line
	6675 7100 7050 7100
Text Label 7000 7100 2    50   ~ 0
rd[7]
Wire Wire Line
	6675 7300 7050 7300
Text Label 7000 7300 2    50   ~ 0
rd[8]
Wire Wire Line
	6675 7400 7050 7400
Text Label 7000 7400 2    50   ~ 0
rd[9]
Wire Wire Line
	6675 7500 7050 7500
Text Label 7000 7500 2    50   ~ 0
rd[10]
Wire Wire Line
	6675 7600 7050 7600
Text Label 7000 7600 2    50   ~ 0
rd[11]
Wire Wire Line
	6675 7700 7050 7700
Text Label 7000 7700 2    50   ~ 0
rd[12]
Wire Wire Line
	6675 7800 7050 7800
Text Label 7000 7800 2    50   ~ 0
rd[13]
Wire Wire Line
	6675 7900 7050 7900
Text Label 7000 7900 2    50   ~ 0
rd[14]
Wire Wire Line
	6675 8000 7050 8000
Text Label 7000 8000 2    50   ~ 0
rd[15]
Wire Wire Line
	11850 6375 12225 6375
Text Label 12175 6375 2    50   ~ 0
rd[16]
Wire Wire Line
	11850 6475 12225 6475
Text Label 12175 6475 2    50   ~ 0
rd[17]
Wire Wire Line
	11850 6575 12225 6575
Text Label 12175 6575 2    50   ~ 0
rd[18]
Wire Wire Line
	11850 6675 12225 6675
Text Label 12175 6675 2    50   ~ 0
rd[19]
Wire Wire Line
	11850 6775 12225 6775
Text Label 12175 6775 2    50   ~ 0
rd[20]
Wire Wire Line
	11850 6875 12225 6875
Text Label 12175 6875 2    50   ~ 0
rd[21]
Wire Wire Line
	11850 6975 12225 6975
Text Label 12175 6975 2    50   ~ 0
rd[22]
Wire Wire Line
	11850 7075 12225 7075
Text Label 12175 7075 2    50   ~ 0
rd[23]
Wire Wire Line
	11850 7275 12225 7275
Text Label 12175 7275 2    50   ~ 0
rd[24]
Wire Wire Line
	11850 7375 12225 7375
Text Label 12175 7375 2    50   ~ 0
rd[25]
Wire Wire Line
	11850 7475 12225 7475
Text Label 12175 7475 2    50   ~ 0
rd[26]
Wire Wire Line
	11850 7575 12225 7575
Text Label 12175 7575 2    50   ~ 0
rd[27]
Wire Wire Line
	11850 7675 12225 7675
Text Label 12175 7675 2    50   ~ 0
rd[28]
Wire Wire Line
	11850 7775 12225 7775
Text Label 12175 7775 2    50   ~ 0
rd[29]
Wire Wire Line
	11850 7875 12225 7875
Text Label 12175 7875 2    50   ~ 0
rd[30]
Wire Wire Line
	11850 7975 12225 7975
Text Label 12175 7975 2    50   ~ 0
rd[31]
Text Label 17925 3575 0    50   ~ 0
~BOOT_WR
Text Label 17925 3675 0    50   ~ 0
~BOOT_RST
Text Label 17925 3775 0    50   ~ 0
BOOT_CLK
Text Label 17925 3875 0    50   ~ 0
~BOOT_ALU_EN
Wire Wire Line
	17875 3575 18450 3575
Wire Wire Line
	17875 3875 18450 3875
Wire Wire Line
	17875 3775 18450 3775
Wire Wire Line
	17875 3675 18450 3675
Text Label 17925 4825 0    50   ~ 0
f[3]
Text Label 17925 4725 0    50   ~ 0
f[2]
Text Label 17925 4625 0    50   ~ 0
f[1]
Text Label 17925 4525 0    50   ~ 0
f[0]
Wire Wire Line
	17875 4825 18450 4825
Wire Wire Line
	17875 4525 18450 4525
Wire Wire Line
	17875 4625 18450 4625
Wire Wire Line
	17875 4725 18450 4725
Text Label 17925 4425 0    50   ~ 0
~alu_oe
Text Label 17925 4325 0    50   ~ 0
~shift_oe
Wire Wire Line
	17875 4325 18450 4325
Wire Wire Line
	17875 4425 18450 4425
Text Label 17925 5675 0    50   ~ 0
rs1a[3]
Text Label 17925 5575 0    50   ~ 0
rs1a[2]
Text Label 17925 5475 0    50   ~ 0
rs1a[1]
Text Label 17925 5375 0    50   ~ 0
rs1a[0]
Wire Wire Line
	17875 5675 18450 5675
Wire Wire Line
	17875 5375 18450 5375
Wire Wire Line
	17875 5475 18450 5475
Wire Wire Line
	17875 5575 18450 5575
Text Label 17925 5775 0    50   ~ 0
rs1a[4]
Wire Wire Line
	17875 5775 18450 5775
Text Label 17925 6175 0    50   ~ 0
rs2a[3]
Text Label 17925 6075 0    50   ~ 0
rs2a[2]
Text Label 17925 5975 0    50   ~ 0
rs2a[1]
Text Label 17925 5875 0    50   ~ 0
rs2a[0]
Wire Wire Line
	17875 6175 18450 6175
Wire Wire Line
	17875 5875 18450 5875
Wire Wire Line
	17875 5975 18450 5975
Wire Wire Line
	17875 6075 18450 6075
Text Label 17925 6275 0    50   ~ 0
rs2a[4]
Wire Wire Line
	17875 6275 18450 6275
Text Label 17925 6675 0    50   ~ 0
rda[3]
Text Label 17925 6575 0    50   ~ 0
rda[2]
Text Label 17925 6475 0    50   ~ 0
rda[1]
Text Label 17925 6375 0    50   ~ 0
rda[0]
Wire Wire Line
	17875 6675 18450 6675
Wire Wire Line
	17875 6375 18450 6375
Wire Wire Line
	17875 6475 18450 6475
Wire Wire Line
	17875 6575 18450 6575
Text Label 17925 6775 0    50   ~ 0
rda[4]
Wire Wire Line
	17875 6775 18450 6775
Text Label 17925 7200 0    50   ~ 0
~rs1_rd
Wire Wire Line
	17875 7300 18450 7300
Wire Wire Line
	17875 7200 18450 7200
Text Label 17925 7400 0    50   ~ 0
~rd_wr
Wire Wire Line
	17875 7400 18450 7400
Text Label 17925 7300 0    50   ~ 0
~rs2_rd
Text Label 17925 7775 0    50   ~ 0
nc0
Wire Wire Line
	17875 7775 18450 7775
Text Label 17925 7875 0    50   ~ 0
nc1
Wire Wire Line
	17875 7875 18450 7875
Text Label 17925 7975 0    50   ~ 0
nc2
Wire Wire Line
	17875 7975 18450 7975
Text Label 17925 8075 0    50   ~ 0
nc3
Wire Wire Line
	17875 8075 18450 8075
Text Label 17925 8175 0    50   ~ 0
nc4
Wire Wire Line
	17875 8175 18450 8175
Text Label 17925 8275 0    50   ~ 0
nc5
Wire Wire Line
	17875 8275 18450 8275
Text Label 17925 8375 0    50   ~ 0
nc6
Wire Wire Line
	17875 8375 18450 8375
Text Label 17925 8475 0    50   ~ 0
nc7
Wire Wire Line
	17875 8475 18450 8475
Text Label 17925 8575 0    50   ~ 0
nc8
Wire Wire Line
	17875 8575 18450 8575
Text Label 17925 8675 0    50   ~ 0
nc9
Wire Wire Line
	17875 8675 18450 8675
Text Label 17925 8775 0    50   ~ 0
nc10
Wire Wire Line
	17875 8775 18450 8775
Text Label 17925 8875 0    50   ~ 0
nc11
Wire Wire Line
	17875 8875 18450 8875
Text Label 17925 9250 0    50   ~ 0
nc12
Wire Wire Line
	17875 9250 18450 9250
Text Label 17925 9350 0    50   ~ 0
nc13
Wire Wire Line
	17875 9350 18450 9350
Text Label 17925 9450 0    50   ~ 0
nc14
Wire Wire Line
	17875 9450 18450 9450
Text Label 17925 9550 0    50   ~ 0
nc15
Wire Wire Line
	17875 9550 18450 9550
Text Label 17925 9650 0    50   ~ 0
nc16
Wire Wire Line
	17875 9650 18450 9650
Text Label 17925 9750 0    50   ~ 0
nc17
Wire Wire Line
	17875 9750 18450 9750
Text Label 17925 9850 0    50   ~ 0
nc18
Wire Wire Line
	17875 9850 18450 9850
Text Label 17925 9950 0    50   ~ 0
nc19
Wire Wire Line
	17875 9950 18450 9950
Text Label 17925 10050 0    50   ~ 0
nc20
Wire Wire Line
	17875 10050 18450 10050
Text Label 17925 10150 0    50   ~ 0
nc21
Wire Wire Line
	17875 10150 18450 10150
Text Label 17925 10250 0    50   ~ 0
nc22
Wire Wire Line
	17875 10250 18450 10250
Text Label 17925 10350 0    50   ~ 0
nc23
Wire Wire Line
	17875 10350 18450 10350
Text Label 14675 7325 2    50   ~ 0
nc0
Wire Wire Line
	14725 7325 14350 7325
Text Label 14675 7425 2    50   ~ 0
nc1
Wire Wire Line
	14725 7425 14350 7425
Text Label 14675 7525 2    50   ~ 0
nc2
Wire Wire Line
	14725 7525 14350 7525
Text Label 14675 7625 2    50   ~ 0
nc3
Wire Wire Line
	14725 7625 14350 7625
Text Label 14675 7725 2    50   ~ 0
nc4
Wire Wire Line
	14725 7725 14350 7725
Text Label 14675 7825 2    50   ~ 0
nc5
Wire Wire Line
	14725 7825 14350 7825
Text Label 14675 7925 2    50   ~ 0
nc6
Wire Wire Line
	14725 7925 14350 7925
Text Label 14675 8025 2    50   ~ 0
nc7
Wire Wire Line
	14725 8025 14350 8025
Text Label 9575 7275 2    50   ~ 0
nc8
Wire Wire Line
	9625 7275 9250 7275
Text Label 9575 7375 2    50   ~ 0
nc9
Wire Wire Line
	9625 7375 9250 7375
Text Label 9575 7475 2    50   ~ 0
nc10
Wire Wire Line
	9625 7475 9250 7475
Text Label 9575 7575 2    50   ~ 0
nc11
Wire Wire Line
	9625 7575 9250 7575
Text Label 9575 7675 2    50   ~ 0
nc12
Wire Wire Line
	9625 7675 9250 7675
Text Label 9575 7775 2    50   ~ 0
nc13
Wire Wire Line
	9625 7775 9250 7775
Text Label 9575 7875 2    50   ~ 0
nc14
Wire Wire Line
	9625 7875 9250 7875
Text Label 9575 7975 2    50   ~ 0
nc15
Wire Wire Line
	9625 7975 9250 7975
Text Label 14675 6425 2    50   ~ 0
nc16
Wire Wire Line
	14725 6425 14350 6425
Text Label 14675 6525 2    50   ~ 0
nc17
Wire Wire Line
	14725 6525 14350 6525
Text Label 14675 6625 2    50   ~ 0
nc18
Wire Wire Line
	14725 6625 14350 6625
Text Label 14675 6725 2    50   ~ 0
nc19
Wire Wire Line
	14725 6725 14350 6725
Text Label 14675 6825 2    50   ~ 0
nc20
Wire Wire Line
	14725 6825 14350 6825
Text Label 14675 6925 2    50   ~ 0
nc21
Wire Wire Line
	14725 6925 14350 6925
Text Label 14675 7025 2    50   ~ 0
nc22
Wire Wire Line
	14725 7025 14350 7025
Text Label 14675 7125 2    50   ~ 0
nc23
Wire Wire Line
	14725 7125 14350 7125
Text Label 7000 8500 2    50   ~ 0
rs1a[3]
Text Label 7000 8400 2    50   ~ 0
rs1a[2]
Text Label 7000 8300 2    50   ~ 0
rs1a[1]
Text Label 7000 8200 2    50   ~ 0
rs1a[0]
Wire Wire Line
	7050 8500 6675 8500
Wire Wire Line
	7050 8200 6675 8200
Wire Wire Line
	7050 8300 6675 8300
Wire Wire Line
	7050 8400 6675 8400
Text Label 7000 8600 2    50   ~ 0
rs1a[4]
Wire Wire Line
	7050 8600 6675 8600
Text Label 14675 8525 2    50   ~ 0
rs2a[3]
Text Label 14675 8425 2    50   ~ 0
rs2a[2]
Text Label 14675 8325 2    50   ~ 0
rs2a[1]
Text Label 14675 8225 2    50   ~ 0
rs2a[0]
Wire Wire Line
	14725 8525 14350 8525
Wire Wire Line
	14725 8225 14350 8225
Wire Wire Line
	14725 8325 14350 8325
Wire Wire Line
	14725 8425 14350 8425
Text Label 14675 8625 2    50   ~ 0
rs2a[4]
Wire Wire Line
	14725 8625 14350 8625
Text Label 12175 8475 2    50   ~ 0
rda[3]
Text Label 12175 8375 2    50   ~ 0
rda[2]
Text Label 12175 8275 2    50   ~ 0
rda[1]
Text Label 12175 8175 2    50   ~ 0
rda[0]
Wire Wire Line
	12225 8475 11850 8475
Wire Wire Line
	12225 8175 11850 8175
Wire Wire Line
	12225 8275 11850 8275
Wire Wire Line
	12225 8375 11850 8375
Text Label 12175 8575 2    50   ~ 0
rda[4]
Wire Wire Line
	12225 8575 11850 8575
Text Label 7000 8700 2    50   ~ 0
~rs1_rd
Wire Wire Line
	9625 8675 9250 8675
Text Label 12175 8675 2    50   ~ 0
~rd_wr
Wire Wire Line
	12225 8675 11850 8675
Text Label 9575 8675 2    50   ~ 0
~rs2_rd
Wire Wire Line
	6675 8700 7050 8700
Text Label 9775 6375 2    50   ~ 0
~BOOT_WR
Text Label 9775 6475 2    50   ~ 0
~BOOT_RST
Text Label 9775 6575 2    50   ~ 0
BOOT_CLK
Text Label 9775 6675 2    50   ~ 0
~BOOT_ALU_EN
Wire Wire Line
	9975 6375 9250 6375
Wire Wire Line
	9975 6675 9250 6675
Wire Wire Line
	9975 6575 9250 6575
Wire Wire Line
	9975 6475 9250 6475
Text Label 9575 8475 2    50   ~ 0
f[3]
Text Label 9575 8375 2    50   ~ 0
f[2]
Text Label 9575 8275 2    50   ~ 0
f[1]
Text Label 9575 8175 2    50   ~ 0
f[0]
Wire Wire Line
	9625 8475 9250 8475
Wire Wire Line
	9625 8175 9250 8175
Wire Wire Line
	9625 8275 9250 8275
Wire Wire Line
	9625 8375 9250 8375
Text Label 9775 6875 2    50   ~ 0
~alu_oe
Text Label 9775 6775 2    50   ~ 0
~shift_oe
Wire Wire Line
	9975 6775 9250 6775
Wire Wire Line
	9975 6875 9250 6875
Entry Wire Line
	7150 8600 7050 8700
Entry Wire Line
	7150 8500 7050 8600
Entry Wire Line
	7150 8400 7050 8500
Entry Wire Line
	7150 8300 7050 8400
Entry Wire Line
	7150 8200 7050 8300
Entry Wire Line
	7150 8100 7050 8200
Entry Wire Line
	7150 7900 7050 8000
Entry Wire Line
	7150 7800 7050 7900
Entry Wire Line
	7150 7700 7050 7800
Entry Wire Line
	7150 7600 7050 7700
Entry Wire Line
	7150 7500 7050 7600
Entry Wire Line
	7150 7400 7050 7500
Entry Wire Line
	7150 7300 7050 7400
Entry Wire Line
	7150 7200 7050 7300
Entry Wire Line
	7150 7000 7050 7100
Entry Wire Line
	7150 6900 7050 7000
Entry Wire Line
	7150 6800 7050 6900
Entry Wire Line
	7150 6700 7050 6800
Entry Wire Line
	7150 6600 7050 6700
Entry Wire Line
	7150 6500 7050 6600
Entry Wire Line
	7150 6400 7050 6500
Entry Wire Line
	7150 6300 7050 6400
Entry Wire Line
	7150 6100 7050 6200
Entry Wire Line
	7150 6000 7050 6100
Entry Wire Line
	7150 5900 7050 6000
Entry Wire Line
	7150 5800 7050 5900
Entry Wire Line
	7150 5700 7050 5800
Entry Wire Line
	7150 5600 7050 5700
Entry Wire Line
	7150 5500 7050 5600
Entry Wire Line
	7150 5400 7050 5500
Entry Wire Line
	7150 5200 7050 5300
Entry Wire Line
	7150 5100 7050 5200
Entry Wire Line
	7150 5000 7050 5100
Entry Wire Line
	7150 4900 7050 5000
Entry Wire Line
	7150 4800 7050 4900
Entry Wire Line
	7150 4700 7050 4800
Entry Wire Line
	7150 4600 7050 4700
Entry Wire Line
	7150 4500 7050 4600
Entry Wire Line
	9725 8575 9625 8675
Entry Wire Line
	9725 8475 9625 8575
Entry Wire Line
	9725 8375 9625 8475
Entry Wire Line
	9725 8275 9625 8375
Entry Wire Line
	9725 8175 9625 8275
Entry Wire Line
	9725 8075 9625 8175
Entry Wire Line
	9725 7875 9625 7975
Entry Wire Line
	9725 7775 9625 7875
Entry Wire Line
	9725 7675 9625 7775
Entry Wire Line
	9725 7575 9625 7675
Entry Wire Line
	9725 7475 9625 7575
Entry Wire Line
	9725 7375 9625 7475
Entry Wire Line
	9725 7275 9625 7375
Entry Wire Line
	9725 7175 9625 7275
Entry Wire Line
	10075 6775 9975 6875
Entry Wire Line
	10075 6675 9975 6775
Entry Wire Line
	10075 6575 9975 6675
Entry Wire Line
	10075 6475 9975 6575
Entry Wire Line
	10075 6375 9975 6475
Entry Wire Line
	10075 6275 9975 6375
Entry Wire Line
	9725 6075 9625 6175
Entry Wire Line
	9725 5975 9625 6075
Entry Wire Line
	9725 5875 9625 5975
Entry Wire Line
	9725 5775 9625 5875
Entry Wire Line
	9725 5675 9625 5775
Entry Wire Line
	9725 5575 9625 5675
Entry Wire Line
	9725 5475 9625 5575
Entry Wire Line
	9725 5375 9625 5475
Entry Wire Line
	9725 5175 9625 5275
Entry Wire Line
	9725 5075 9625 5175
Entry Wire Line
	9725 4975 9625 5075
Entry Wire Line
	9725 4875 9625 4975
Entry Wire Line
	9725 4775 9625 4875
Entry Wire Line
	9725 4675 9625 4775
Entry Wire Line
	9725 4575 9625 4675
Entry Wire Line
	9725 4475 9625 4575
Entry Wire Line
	12325 8575 12225 8675
Entry Wire Line
	12325 8475 12225 8575
Entry Wire Line
	12325 8375 12225 8475
Entry Wire Line
	12325 8275 12225 8375
Entry Wire Line
	12325 8175 12225 8275
Entry Wire Line
	12325 8075 12225 8175
Entry Wire Line
	12325 7875 12225 7975
Entry Wire Line
	12325 7775 12225 7875
Entry Wire Line
	12325 7675 12225 7775
Entry Wire Line
	12325 7575 12225 7675
Entry Wire Line
	12325 7475 12225 7575
Entry Wire Line
	12325 7375 12225 7475
Entry Wire Line
	12325 7275 12225 7375
Entry Wire Line
	12325 7175 12225 7275
Entry Wire Line
	12325 6975 12225 7075
Entry Wire Line
	12325 6875 12225 6975
Entry Wire Line
	12325 6775 12225 6875
Entry Wire Line
	12325 6675 12225 6775
Entry Wire Line
	12325 6575 12225 6675
Entry Wire Line
	12325 6475 12225 6575
Entry Wire Line
	12325 6375 12225 6475
Entry Wire Line
	12325 6275 12225 6375
Entry Wire Line
	12325 6075 12225 6175
Entry Wire Line
	12325 5975 12225 6075
Entry Wire Line
	12325 5875 12225 5975
Entry Wire Line
	12325 5775 12225 5875
Entry Wire Line
	12325 5675 12225 5775
Entry Wire Line
	12325 5575 12225 5675
Entry Wire Line
	12325 5475 12225 5575
Entry Wire Line
	12325 5375 12225 5475
Entry Wire Line
	12325 5175 12225 5275
Entry Wire Line
	12325 5075 12225 5175
Entry Wire Line
	12325 4975 12225 5075
Entry Wire Line
	12325 4875 12225 4975
Entry Wire Line
	12325 4775 12225 4875
Entry Wire Line
	12325 4675 12225 4775
Entry Wire Line
	12325 4575 12225 4675
Entry Wire Line
	12325 4475 12225 4575
Entry Wire Line
	14825 7025 14725 7125
Entry Wire Line
	14825 6925 14725 7025
Entry Wire Line
	14825 6825 14725 6925
Entry Wire Line
	14825 6725 14725 6825
Entry Wire Line
	14825 6625 14725 6725
Entry Wire Line
	14825 6525 14725 6625
Entry Wire Line
	14825 6425 14725 6525
Entry Wire Line
	14825 6325 14725 6425
Entry Wire Line
	14825 6125 14725 6225
Entry Wire Line
	14825 6025 14725 6125
Entry Wire Line
	14825 5925 14725 6025
Entry Wire Line
	14825 5825 14725 5925
Entry Wire Line
	14825 5725 14725 5825
Entry Wire Line
	14825 5625 14725 5725
Entry Wire Line
	14825 5525 14725 5625
Entry Wire Line
	14825 5425 14725 5525
Entry Wire Line
	14825 5225 14725 5325
Entry Wire Line
	14825 5125 14725 5225
Entry Wire Line
	14825 5025 14725 5125
Entry Wire Line
	14825 4925 14725 5025
Entry Wire Line
	14825 4825 14725 4925
Entry Wire Line
	14825 4725 14725 4825
Entry Wire Line
	14825 4625 14725 4725
Entry Wire Line
	14825 4525 14725 4625
Entry Wire Line
	14825 7625 14725 7725
Entry Wire Line
	14825 7525 14725 7625
Entry Wire Line
	14825 7425 14725 7525
Entry Wire Line
	14825 7325 14725 7425
Entry Wire Line
	14825 7225 14725 7325
Entry Wire Line
	14825 8425 14725 8525
Entry Wire Line
	14825 8325 14725 8425
Entry Wire Line
	14825 7725 14725 7825
Entry Wire Line
	14825 8225 14725 8325
Entry Wire Line
	14825 8125 14725 8225
Entry Wire Line
	15850 4125 15950 4225
Entry Wire Line
	15850 4025 15950 4125
Entry Wire Line
	15850 3925 15950 4025
Entry Wire Line
	15850 3825 15950 3925
Entry Wire Line
	15850 3725 15950 3825
Entry Wire Line
	15850 3625 15950 3725
Entry Wire Line
	15850 3525 15950 3625
Entry Wire Line
	15850 3425 15950 3525
Entry Wire Line
	15850 4925 15950 5025
Entry Wire Line
	15850 4825 15950 4925
Entry Wire Line
	15850 4725 15950 4825
Entry Wire Line
	15850 4625 15950 4725
Entry Wire Line
	15850 4525 15950 4625
Entry Wire Line
	15850 4425 15950 4525
Entry Wire Line
	15850 4325 15950 4425
Entry Wire Line
	15850 4225 15950 4325
Entry Wire Line
	15850 5725 15950 5825
Entry Wire Line
	15850 5625 15950 5725
Entry Wire Line
	15850 5525 15950 5625
Entry Wire Line
	15850 5425 15950 5525
Entry Wire Line
	15850 5325 15950 5425
Entry Wire Line
	15850 5225 15950 5325
Entry Wire Line
	15850 5125 15950 5225
Entry Wire Line
	15850 5025 15950 5125
Entry Wire Line
	15850 6525 15950 6625
Entry Wire Line
	15850 6425 15950 6525
Entry Wire Line
	15850 6325 15950 6425
Entry Wire Line
	15850 6225 15950 6325
Entry Wire Line
	15850 6125 15950 6225
Entry Wire Line
	15850 6025 15950 6125
Entry Wire Line
	15850 5925 15950 6025
Entry Wire Line
	15850 5825 15950 5925
Entry Wire Line
	15850 7600 15950 7700
Entry Wire Line
	15850 7500 15950 7600
Entry Wire Line
	15850 7400 15950 7500
Entry Wire Line
	15850 7300 15950 7400
Entry Wire Line
	15850 7200 15950 7300
Entry Wire Line
	15850 7100 15950 7200
Entry Wire Line
	15850 7000 15950 7100
Entry Wire Line
	15850 6900 15950 7000
Entry Wire Line
	15850 8400 15950 8500
Entry Wire Line
	15850 8300 15950 8400
Entry Wire Line
	15850 8200 15950 8300
Entry Wire Line
	15850 8100 15950 8200
Entry Wire Line
	15850 8000 15950 8100
Entry Wire Line
	15850 7900 15950 8000
Entry Wire Line
	15850 7800 15950 7900
Entry Wire Line
	15850 7700 15950 7800
Entry Wire Line
	15850 9200 15950 9300
Entry Wire Line
	15850 9100 15950 9200
Entry Wire Line
	15850 9000 15950 9100
Entry Wire Line
	15850 8900 15950 9000
Entry Wire Line
	15850 8800 15950 8900
Entry Wire Line
	15850 8700 15950 8800
Entry Wire Line
	15850 8600 15950 8700
Entry Wire Line
	15850 8500 15950 8600
Entry Wire Line
	15850 10000 15950 10100
Entry Wire Line
	15850 9900 15950 10000
Entry Wire Line
	15850 9800 15950 9900
Entry Wire Line
	15850 9700 15950 9800
Entry Wire Line
	15850 9600 15950 9700
Entry Wire Line
	15850 9500 15950 9600
Entry Wire Line
	15850 9400 15950 9500
Entry Wire Line
	15850 9300 15950 9400
Entry Wire Line
	15850 11125 15950 11225
Entry Wire Line
	15850 11025 15950 11125
Entry Wire Line
	15850 10925 15950 11025
Entry Wire Line
	15850 10825 15950 10925
Entry Wire Line
	15850 10725 15950 10825
Entry Wire Line
	15850 10625 15950 10725
Entry Wire Line
	15850 10525 15950 10625
Entry Wire Line
	15850 10425 15950 10525
Entry Wire Line
	15850 11925 15950 12025
Entry Wire Line
	15850 11825 15950 11925
Entry Wire Line
	15850 11725 15950 11825
Entry Wire Line
	15850 11625 15950 11725
Entry Wire Line
	15850 11525 15950 11625
Entry Wire Line
	15850 11425 15950 11525
Entry Wire Line
	15850 11325 15950 11425
Entry Wire Line
	15850 11225 15950 11325
Entry Wire Line
	15850 12725 15950 12825
Entry Wire Line
	15850 12625 15950 12725
Entry Wire Line
	15850 12525 15950 12625
Entry Wire Line
	15850 12425 15950 12525
Entry Wire Line
	15850 12325 15950 12425
Entry Wire Line
	15850 12225 15950 12325
Entry Wire Line
	15850 12125 15950 12225
Entry Wire Line
	15850 12025 15950 12125
Entry Wire Line
	15850 13525 15950 13625
Entry Wire Line
	15850 13425 15950 13525
Entry Wire Line
	15850 13325 15950 13425
Entry Wire Line
	15850 13225 15950 13325
Entry Wire Line
	15850 13125 15950 13225
Entry Wire Line
	15850 13025 15950 13125
Entry Wire Line
	15850 12925 15950 13025
Entry Wire Line
	15850 12825 15950 12925
Entry Wire Line
	17775 3775 17875 3875
Entry Wire Line
	17775 3675 17875 3775
Entry Wire Line
	17775 3575 17875 3675
Entry Wire Line
	17775 3475 17875 3575
Entry Wire Line
	17775 4725 17875 4825
Entry Wire Line
	17775 4625 17875 4725
Entry Wire Line
	17775 4525 17875 4625
Entry Wire Line
	17775 4425 17875 4525
Entry Wire Line
	17775 4325 17875 4425
Entry Wire Line
	17775 4225 17875 4325
Entry Wire Line
	17775 5975 17875 6075
Entry Wire Line
	17775 5875 17875 5975
Entry Wire Line
	17775 5775 17875 5875
Entry Wire Line
	17775 5675 17875 5775
Entry Wire Line
	17775 5575 17875 5675
Entry Wire Line
	17775 5475 17875 5575
Entry Wire Line
	17775 5375 17875 5475
Entry Wire Line
	17775 5275 17875 5375
Entry Wire Line
	17775 6475 17875 6575
Entry Wire Line
	17775 6375 17875 6475
Entry Wire Line
	17775 6275 17875 6375
Entry Wire Line
	17775 6175 17875 6275
Entry Wire Line
	17775 6075 17875 6175
Entry Wire Line
	17775 6675 17875 6775
Entry Wire Line
	17775 6575 17875 6675
Entry Wire Line
	17775 7100 17875 7200
Entry Wire Line
	17775 7300 17875 7400
Entry Wire Line
	17775 7200 17875 7300
Entry Wire Line
	17775 8175 17875 8275
Entry Wire Line
	17775 8075 17875 8175
Entry Wire Line
	17775 7975 17875 8075
Entry Wire Line
	17775 7875 17875 7975
Entry Wire Line
	17775 7775 17875 7875
Entry Wire Line
	17775 7675 17875 7775
Entry Wire Line
	17775 8675 17875 8775
Entry Wire Line
	17775 8575 17875 8675
Entry Wire Line
	17775 8475 17875 8575
Entry Wire Line
	17775 8375 17875 8475
Entry Wire Line
	17775 8275 17875 8375
Entry Wire Line
	17775 8775 17875 8875
Entry Wire Line
	17775 9650 17875 9750
Entry Wire Line
	17775 9550 17875 9650
Entry Wire Line
	17775 9450 17875 9550
Entry Wire Line
	17775 9350 17875 9450
Entry Wire Line
	17775 9250 17875 9350
Entry Wire Line
	17775 9150 17875 9250
Entry Wire Line
	17775 10150 17875 10250
Entry Wire Line
	17775 10050 17875 10150
Entry Wire Line
	17775 9950 17875 10050
Entry Wire Line
	17775 9850 17875 9950
Entry Wire Line
	17775 9750 17875 9850
Entry Wire Line
	17775 10250 17875 10350
Wire Bus Line
	7150 3300 9725 3300
Connection ~ 9725 3300
Wire Bus Line
	9725 3300 12325 3300
Connection ~ 12325 3300
Wire Bus Line
	12325 3300 14825 3300
Connection ~ 14825 3300
Wire Bus Line
	14825 3300 15850 3300
Wire Bus Line
	15850 3300 17775 3300
Connection ~ 15850 3300
$Comp
L power:+3V3 #PWR0120
U 1 1 5D83B030
P 19400 11275
F 0 "#PWR0120" H 19400 11125 50  0001 C CNN
F 1 "+3V3" H 19415 11448 50  0000 C CNN
F 2 "" H 19400 11275 50  0001 C CNN
F 3 "" H 19400 11275 50  0001 C CNN
	1    19400 11275
	1    0    0    -1  
$EndComp
Wire Wire Line
	18650 11375 18650 11275
Wire Wire Line
	18650 11275 18750 11275
Wire Wire Line
	20150 11275 20150 11375
Connection ~ 19400 11275
Wire Wire Line
	19400 11275 19450 11275
Wire Wire Line
	20050 11275 20050 11375
Connection ~ 20050 11275
Wire Wire Line
	20050 11275 20150 11275
Wire Wire Line
	19950 11275 19950 11375
Wire Wire Line
	19850 11275 19850 11375
Connection ~ 19850 11275
Wire Wire Line
	19850 11275 19950 11275
Connection ~ 19950 11275
Wire Wire Line
	19950 11275 20050 11275
Wire Wire Line
	19750 11275 19750 11375
Wire Wire Line
	19650 11275 19650 11375
Wire Wire Line
	19550 11275 19550 11375
Wire Wire Line
	19450 11275 19450 11375
Connection ~ 19450 11275
Wire Wire Line
	19450 11275 19550 11275
Connection ~ 19550 11275
Wire Wire Line
	19550 11275 19650 11275
Connection ~ 19650 11275
Wire Wire Line
	19650 11275 19750 11275
Connection ~ 19750 11275
Wire Wire Line
	19750 11275 19850 11275
Wire Wire Line
	19350 11275 19350 11375
Wire Wire Line
	19250 11275 19250 11375
Wire Wire Line
	19150 11275 19150 11375
Wire Wire Line
	19050 11275 19050 11375
Wire Wire Line
	18950 11275 18950 11375
Wire Wire Line
	18850 11275 18850 11375
Wire Wire Line
	18750 11275 18750 11375
Connection ~ 18750 11275
Wire Wire Line
	18750 11275 18850 11275
Connection ~ 18850 11275
Wire Wire Line
	18850 11275 18950 11275
Connection ~ 18950 11275
Wire Wire Line
	18950 11275 19050 11275
Connection ~ 19050 11275
Wire Wire Line
	19050 11275 19150 11275
Connection ~ 19150 11275
Wire Wire Line
	19150 11275 19250 11275
Connection ~ 19250 11275
Wire Wire Line
	19250 11275 19350 11275
Connection ~ 19350 11275
Wire Wire Line
	19350 11275 19400 11275
$Comp
L power:GNDREF #PWR0121
U 1 1 5DA427CE
P 19400 12275
F 0 "#PWR0121" H 19400 12025 50  0001 C CNN
F 1 "GNDREF" H 19405 12102 50  0001 C CNN
F 2 "" H 19400 12275 50  0001 C CNN
F 3 "" H 19400 12275 50  0001 C CNN
	1    19400 12275
	1    0    0    -1  
$EndComp
Wire Wire Line
	19450 12175 19450 12275
Wire Wire Line
	19450 12275 19400 12275
Wire Wire Line
	19350 12275 19350 12175
Connection ~ 19400 12275
Wire Wire Line
	19400 12275 19350 12275
Wire Wire Line
	19650 12175 19650 12275
Wire Wire Line
	19550 12275 19550 12175
Wire Wire Line
	19850 12175 19850 12275
Wire Wire Line
	19750 12275 19750 12175
Wire Wire Line
	20050 12175 20050 12275
Wire Wire Line
	19950 12275 19950 12175
Wire Wire Line
	20250 12175 20250 12275
Wire Wire Line
	20150 12275 20150 12175
Wire Wire Line
	20450 12175 20450 12275
Wire Wire Line
	20350 12275 20350 12175
Wire Wire Line
	20650 12175 20650 12275
Wire Wire Line
	20550 12275 20550 12175
Wire Wire Line
	20850 12175 20850 12275
Wire Wire Line
	20750 12275 20750 12175
Wire Wire Line
	20950 12175 20950 12275
Wire Wire Line
	17950 12175 17950 12275
Wire Wire Line
	17850 12275 17850 12175
Wire Wire Line
	18150 12175 18150 12275
Wire Wire Line
	18050 12275 18050 12175
Wire Wire Line
	18350 12175 18350 12275
Wire Wire Line
	18250 12275 18250 12175
Wire Wire Line
	18550 12175 18550 12275
Wire Wire Line
	18450 12275 18450 12175
Wire Wire Line
	18750 12175 18750 12275
Wire Wire Line
	18650 12275 18650 12175
Wire Wire Line
	18950 12175 18950 12275
Wire Wire Line
	18850 12275 18850 12175
Wire Wire Line
	19150 12175 19150 12275
Wire Wire Line
	19050 12275 19050 12175
Wire Wire Line
	19250 12175 19250 12275
$Comp
L lmarv:dual-pcie-cardedge_split P1
U 6 1 5BEDB5C9
P 19500 11775
F 0 "P1" H 19675 11725 60  0000 R CNN
F 1 "dual-pcie-cardedge_split" H 19223 13372 60  0001 R CNN
F 2 "lmarv:PCI-EXPRESS" H 17850 9325 60  0001 C CNN
F 3 "" H 17850 9325 60  0001 C CNN
	6    19500 11775
	1    0    0    -1  
$EndComp
Wire Wire Line
	17850 12275 17950 12275
Connection ~ 17950 12275
Wire Wire Line
	17950 12275 18050 12275
Connection ~ 18050 12275
Wire Wire Line
	18050 12275 18150 12275
Connection ~ 18150 12275
Wire Wire Line
	18150 12275 18250 12275
Connection ~ 18250 12275
Wire Wire Line
	18250 12275 18350 12275
Connection ~ 18350 12275
Wire Wire Line
	18350 12275 18450 12275
Connection ~ 18450 12275
Wire Wire Line
	18450 12275 18550 12275
Connection ~ 18550 12275
Wire Wire Line
	18550 12275 18650 12275
Connection ~ 18650 12275
Wire Wire Line
	18650 12275 18750 12275
Connection ~ 18750 12275
Wire Wire Line
	18750 12275 18850 12275
Connection ~ 18850 12275
Wire Wire Line
	18850 12275 18950 12275
Connection ~ 18950 12275
Wire Wire Line
	18950 12275 19050 12275
Connection ~ 19050 12275
Wire Wire Line
	19050 12275 19150 12275
Connection ~ 19150 12275
Wire Wire Line
	19150 12275 19250 12275
Connection ~ 19250 12275
Wire Wire Line
	19250 12275 19350 12275
Connection ~ 19350 12275
Connection ~ 19450 12275
Wire Wire Line
	19450 12275 19550 12275
Connection ~ 19550 12275
Wire Wire Line
	19550 12275 19650 12275
Connection ~ 19650 12275
Wire Wire Line
	19650 12275 19750 12275
Connection ~ 19750 12275
Wire Wire Line
	19750 12275 19850 12275
Connection ~ 19850 12275
Wire Wire Line
	19850 12275 19950 12275
Connection ~ 19950 12275
Wire Wire Line
	19950 12275 20050 12275
Connection ~ 20050 12275
Wire Wire Line
	20050 12275 20150 12275
Connection ~ 20150 12275
Wire Wire Line
	20150 12275 20250 12275
Connection ~ 20250 12275
Wire Wire Line
	20250 12275 20350 12275
Connection ~ 20350 12275
Wire Wire Line
	20350 12275 20450 12275
Connection ~ 20450 12275
Wire Wire Line
	20450 12275 20550 12275
Connection ~ 20550 12275
Wire Wire Line
	20550 12275 20650 12275
Connection ~ 20650 12275
Wire Wire Line
	20650 12275 20750 12275
Connection ~ 20750 12275
Wire Wire Line
	20750 12275 20850 12275
Connection ~ 20850 12275
Wire Wire Line
	20850 12275 20950 12275
$Comp
L Device:C C5
U 1 1 5DD8D3CE
P 6925 11575
F 0 "C5" H 7040 11621 50  0000 L CNN
F 1 "100n" H 7040 11530 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6963 11425 50  0001 C CNN
F 3 "~" H 6925 11575 50  0001 C CNN
	1    6925 11575
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5DDE5B89
P 7400 11575
F 0 "C6" H 7515 11621 50  0000 L CNN
F 1 "100n" H 7515 11530 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7438 11425 50  0001 C CNN
F 3 "~" H 7400 11575 50  0001 C CNN
	1    7400 11575
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5DDE5C0B
P 6450 11575
F 0 "C4" H 6565 11621 50  0000 L CNN
F 1 "100n" H 6565 11530 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6488 11425 50  0001 C CNN
F 3 "~" H 6450 11575 50  0001 C CNN
	1    6450 11575
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5DE3E248
P 7875 11575
F 0 "C7" H 7990 11621 50  0000 L CNN
F 1 "100n" H 7990 11530 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7913 11425 50  0001 C CNN
F 3 "~" H 7875 11575 50  0001 C CNN
	1    7875 11575
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0122
U 1 1 5DE9690C
P 6925 11725
F 0 "#PWR0122" H 6925 11475 50  0001 C CNN
F 1 "GNDREF" H 6930 11552 50  0001 C CNN
F 2 "" H 6925 11725 50  0001 C CNN
F 3 "" H 6925 11725 50  0001 C CNN
	1    6925 11725
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 11725 6925 11725
Connection ~ 6925 11725
Wire Wire Line
	6925 11725 7400 11725
Connection ~ 7400 11725
Wire Wire Line
	7400 11725 7875 11725
$Comp
L power:+3V3 #PWR0123
U 1 1 5DEEFBA2
P 7175 11425
F 0 "#PWR0123" H 7175 11275 50  0001 C CNN
F 1 "+3V3" H 7190 11598 50  0000 C CNN
F 2 "" H 7175 11425 50  0001 C CNN
F 3 "" H 7175 11425 50  0001 C CNN
	1    7175 11425
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 11425 6925 11425
Connection ~ 6925 11425
Wire Wire Line
	6925 11425 7175 11425
Connection ~ 7175 11425
Wire Wire Line
	7175 11425 7400 11425
Connection ~ 7400 11425
Wire Wire Line
	7400 11425 7875 11425
Wire Wire Line
	3300 6750 4200 6750
Wire Wire Line
	3300 6850 4200 6850
Text Label 3950 6750 0    50   ~ 0
LED_R
Text Label 3950 6850 0    50   ~ 0
LED_G
NoConn ~ 4200 6750
NoConn ~ 4200 6850
NoConn ~ 3300 6150
NoConn ~ 3300 6250
NoConn ~ 3300 6350
NoConn ~ 3300 6450
NoConn ~ 3300 6550
NoConn ~ 3300 6650
NoConn ~ 3300 7350
NoConn ~ 3300 7450
NoConn ~ 3300 7550
NoConn ~ 3300 7650
NoConn ~ 3300 7750
NoConn ~ 6675 8800
NoConn ~ 6675 8900
NoConn ~ 6675 9100
NoConn ~ 9250 8775
NoConn ~ 9250 8875
NoConn ~ 9250 9075
NoConn ~ 11850 8775
NoConn ~ 11850 8875
NoConn ~ 11850 9075
NoConn ~ 14350 8725
NoConn ~ 14350 8825
NoConn ~ 14350 8925
NoConn ~ 14350 9125
Text Notes 2075 3375 0    50   ~ 0
DC IN: 3.45 - 17V\n(12V 1A TYP)\nCENTER POSITIVE\n5.5MM OD, 2.0MM ID
$Comp
L lmarv:RPM3.3-3.0 A2
U 1 1 5ECD2BE4
P 4675 3000
F 0 "A2" H 3950 3650 50  0000 C CNN
F 1 "RPM3.3-3.0" H 5250 3650 50  0000 C CNN
F 2 "lmarv:LGA-25_12.19x12.19mm_Layout5x5_P2.29mm_Pad1.0mm" H 3725 1750 50  0001 C CNN
F 3 "https://www.recom-power.com/pdf/Innoline/RPM-3.0.pdf" H 3725 1750 50  0001 C CNN
	1    4675 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5675 2600 5900 2600
Wire Wire Line
	5900 2600 5900 2500
Wire Wire Line
	5675 2500 5900 2500
Connection ~ 5900 2500
Wire Wire Line
	5900 2500 5900 2400
$Comp
L power:+3V3 #PWR0126
U 1 1 5EDEDEC3
P 5900 2400
F 0 "#PWR0126" H 5900 2250 50  0001 C CNN
F 1 "+3V3" H 5915 2573 50  0000 C CNN
F 2 "" H 5900 2400 50  0001 C CNN
F 3 "" H 5900 2400 50  0001 C CNN
	1    5900 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0127
U 1 1 5EDEE572
P 4675 3600
F 0 "#PWR0127" H 4675 3350 50  0001 C CNN
F 1 "GNDREF" H 4680 3427 50  0001 C CNN
F 2 "" H 4675 3600 50  0001 C CNN
F 3 "" H 4675 3600 50  0001 C CNN
	1    4675 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3975 3600 4075 3600
Connection ~ 4075 3600
Wire Wire Line
	4075 3600 4175 3600
Connection ~ 4175 3600
Wire Wire Line
	4175 3600 4275 3600
Connection ~ 4275 3600
Wire Wire Line
	4275 3600 4375 3600
Connection ~ 4375 3600
Wire Wire Line
	4375 3600 4475 3600
Connection ~ 4475 3600
Wire Wire Line
	4475 3600 4575 3600
Connection ~ 4575 3600
Wire Wire Line
	4575 3600 4675 3600
Connection ~ 4675 3600
Wire Wire Line
	4675 3600 4775 3600
Connection ~ 4775 3600
Wire Wire Line
	4775 3600 4875 3600
Connection ~ 4875 3600
Wire Wire Line
	4875 3600 4975 3600
Connection ~ 4975 3600
Wire Wire Line
	4975 3600 5075 3600
Connection ~ 5075 3600
Wire Wire Line
	5075 3600 5175 3600
Connection ~ 5175 3600
Wire Wire Line
	5175 3600 5275 3600
Connection ~ 5275 3600
Wire Wire Line
	5275 3600 5375 3600
Wire Wire Line
	3675 2500 3675 2600
Wire Wire Line
	2800 2700 3175 2700
Wire Wire Line
	3175 2700 3175 2600
Wire Wire Line
	3175 2600 3675 2600
Connection ~ 3675 2600
Text Label 3375 2600 0    50   ~ 0
VIN
NoConn ~ 5675 2900
Wire Wire Line
	5675 2800 5900 2800
Wire Wire Line
	5900 2800 5900 2600
Connection ~ 5900 2600
NoConn ~ 3675 2900
NoConn ~ 3675 2800
NoConn ~ 5675 3100
Wire Wire Line
	5900 2800 5900 2900
Connection ~ 5900 2800
$Comp
L power:GNDREF #PWR0128
U 1 1 5F205EC5
P 5900 3200
F 0 "#PWR0128" H 5900 2950 50  0001 C CNN
F 1 "GNDREF" H 5905 3027 50  0001 C CNN
F 2 "" H 5900 3200 50  0001 C CNN
F 3 "" H 5900 3200 50  0001 C CNN
	1    5900 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3175 2700 3175 2825
Connection ~ 3175 2700
$Comp
L power:GNDREF #PWR0129
U 1 1 5F2DA956
P 3175 3125
F 0 "#PWR0129" H 3175 2875 50  0001 C CNN
F 1 "GNDREF" H 3180 2952 50  0001 C CNN
F 2 "" H 3175 3125 50  0001 C CNN
F 3 "" H 3175 3125 50  0001 C CNN
	1    3175 3125
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 5F2DB180
P 3350 4250
F 0 "J2" V 3450 4275 50  0000 R CNN
F 1 "Conn_01x03" V 3225 4062 50  0001 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 3350 4250 50  0001 C CNN
F 3 "~" H 3350 4250 50  0001 C CNN
	1    3350 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3450 4450 3650 4450
Wire Wire Line
	2800 5650 2800 4450
Wire Wire Line
	2800 4450 3250 4450
Text Label 3075 4450 0    50   ~ 0
5V
Wire Wire Line
	4400 4200 4400 4150
Wire Wire Line
	4400 4150 4675 4150
Wire Wire Line
	4675 4150 4675 4200
Wire Wire Line
	4400 4150 4050 4150
Wire Wire Line
	4050 4150 4050 4600
Wire Wire Line
	4050 4600 3350 4600
Wire Wire Line
	3350 4600 3350 4450
Connection ~ 4400 4150
Text Label 3600 4600 0    50   ~ 0
I2C_PU
Wire Wire Line
	2800 2800 3000 2800
Wire Wire Line
	3000 3125 3175 3125
Wire Wire Line
	3000 2800 3000 2900
Wire Wire Line
	2800 2900 3000 2900
Connection ~ 3000 2900
Wire Wire Line
	3000 2900 3000 3125
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F72B078
P 3175 2600
F 0 "#FLG0101" H 3175 2675 50  0001 C CNN
F 1 "PWR_FLAG" H 3175 2774 50  0000 C CNN
F 2 "" H 3175 2600 50  0001 C CNN
F 3 "~" H 3175 2600 50  0001 C CNN
	1    3175 2600
	1    0    0    -1  
$EndComp
Connection ~ 3175 2600
$Comp
L power:GNDREF #PWR0124
U 1 1 5F79C84E
P 3175 3500
F 0 "#PWR0124" H 3175 3250 50  0001 C CNN
F 1 "GNDREF" H 3180 3327 50  0001 C CNN
F 2 "" H 3175 3500 50  0001 C CNN
F 3 "" H 3175 3500 50  0001 C CNN
	1    3175 3500
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5F79C891
P 3175 3500
F 0 "#FLG0103" H 3175 3575 50  0001 C CNN
F 1 "PWR_FLAG" H 3175 3674 50  0000 C CNN
F 2 "" H 3175 3500 50  0001 C CNN
F 3 "~" H 3175 3500 50  0001 C CNN
	1    3175 3500
	1    0    0    -1  
$EndComp
Wire Notes Line
	15475 2775 21275 2775
Wire Notes Line
	21275 2775 21275 14025
Wire Notes Line
	21275 14025 15475 14025
Wire Notes Line
	15475 14025 15475 2775
Text Notes 17925 2750 0    50   ~ 0
CARD EDGE CONNECTOR
Text Notes 4325 2050 0    50   ~ 0
DC-DC CONVERTER
$Comp
L Device:C C2
U 1 1 5BE64432
P 5900 3050
F 0 "C2" H 6015 3096 50  0000 L CNN
F 1 "22u 10v" H 6015 3005 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 5938 2900 50  0001 C CNN
F 3 "~" H 5900 3050 50  0001 C CNN
	1    5900 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5BE64764
P 3175 2975
F 0 "C1" H 3290 3021 50  0000 L CNN
F 1 "10u 25v" H 3290 2930 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210" H 3213 2825 50  0001 C CNN
F 3 "~" H 3175 2975 50  0001 C CNN
	1    3175 2975
	1    0    0    -1  
$EndComp
Connection ~ 3175 3125
$Comp
L Device:R R5
U 1 1 5BE64DC5
P 6150 2500
F 0 "R5" V 6250 2450 50  0000 L CNN
F 1 "220R" V 6150 2400 50  0000 L CNN
F 2 "Resistors_SMD:R_0805" V 6080 2500 50  0001 C CNN
F 3 "~" H 6150 2500 50  0001 C CNN
	1    6150 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 2500 6000 2500
$Comp
L Device:LED D1
U 1 1 5BED62F8
P 6625 2700
F 0 "D1" V 6663 2583 50  0000 R CNN
F 1 "LED" V 6572 2583 50  0000 R CNN
F 2 "LEDs:LED_0805" H 6625 2700 50  0001 C CNN
F 3 "~" H 6625 2700 50  0001 C CNN
	1    6625 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6625 2500 6625 2550
$Comp
L power:GNDREF #PWR01
U 1 1 5BF48434
P 6625 3200
F 0 "#PWR01" H 6625 2950 50  0001 C CNN
F 1 "GNDREF" H 6630 3027 50  0001 C CNN
F 2 "" H 6625 3200 50  0001 C CNN
F 3 "" H 6625 3200 50  0001 C CNN
	1    6625 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6625 2850 6625 3200
Text Notes 6750 3100 0    50   ~ 0
POWER INDICATOR\n(GREEN)\n2.2VF@5MA
Text Notes 3075 4075 0    50   ~ 0
I2C PULLUP\nVOLTAGE SELECT
Text Label 6300 2500 0    50   ~ 0
PWR_LED
Wire Wire Line
	6300 2500 6625 2500
Entry Wire Line
	14825 8525 14725 8625
Entry Wire Line
	14825 7825 14725 7925
Entry Wire Line
	14825 7925 14725 8025
Wire Bus Line
	9725 6175 10075 6175
Wire Bus Line
	10075 7175 9725 7175
NoConn ~ 9250 6975
NoConn ~ 9250 7075
NoConn ~ 9250 8575
$Comp
L Device:C C8
U 1 1 5BD9CEAA
P 6925 12300
F 0 "C8" H 7040 12346 50  0000 L CNN
F 1 "100n" H 7040 12255 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6963 12150 50  0001 C CNN
F 3 "~" H 6925 12300 50  0001 C CNN
	1    6925 12300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5BD9CEB0
P 7400 12300
F 0 "C9" H 7515 12346 50  0000 L CNN
F 1 "100n" H 7515 12255 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7438 12150 50  0001 C CNN
F 3 "~" H 7400 12300 50  0001 C CNN
	1    7400 12300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5BD9CEB6
P 6450 12300
F 0 "C3" H 6565 12346 50  0000 L CNN
F 1 "100n" H 6565 12255 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6488 12150 50  0001 C CNN
F 3 "~" H 6450 12300 50  0001 C CNN
	1    6450 12300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5BD9CEBC
P 7875 12300
F 0 "C10" H 7990 12346 50  0000 L CNN
F 1 "100n" H 7990 12255 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7913 12150 50  0001 C CNN
F 3 "~" H 7875 12300 50  0001 C CNN
	1    7875 12300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR02
U 1 1 5BD9CEC2
P 6925 12450
F 0 "#PWR02" H 6925 12200 50  0001 C CNN
F 1 "GNDREF" H 6930 12277 50  0001 C CNN
F 2 "" H 6925 12450 50  0001 C CNN
F 3 "" H 6925 12450 50  0001 C CNN
	1    6925 12450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 12450 6925 12450
Connection ~ 6925 12450
Wire Wire Line
	6925 12450 7400 12450
Connection ~ 7400 12450
Wire Wire Line
	7400 12450 7875 12450
$Comp
L power:+3V3 #PWR03
U 1 1 5BD9CECD
P 7175 12150
F 0 "#PWR03" H 7175 12000 50  0001 C CNN
F 1 "+3V3" H 7190 12323 50  0000 C CNN
F 2 "" H 7175 12150 50  0001 C CNN
F 3 "" H 7175 12150 50  0001 C CNN
	1    7175 12150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 12150 6925 12150
Connection ~ 6925 12150
Wire Wire Line
	6925 12150 7175 12150
Connection ~ 7175 12150
Wire Wire Line
	7175 12150 7400 12150
Connection ~ 7400 12150
Wire Wire Line
	7400 12150 7875 12150
Wire Bus Line
	10075 6175 10075 7175
Wire Bus Line
	9725 7175 9725 8675
Wire Bus Line
	9725 3300 9725 6175
Wire Bus Line
	14825 3300 14825 8625
Wire Bus Line
	7150 3300 7150 8700
Wire Bus Line
	12325 3300 12325 8675
Wire Bus Line
	17775 3300 17775 10350
Wire Bus Line
	15850 3300 15850 13625
$EndSCHEMATC
