EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:mySparkFunComponents
LIBS:ESP8266
LIBS:NextBusClockV1-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "NextBus Clock"
Date "2016-08-20"
Rev "0"
Comp "Chris Gillis"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L BARREL_JACK BJ1
U 1 1 57B8C805
P 1100 1400
F 0 "BJ1" H 1100 1650 50  0000 C CNN
F 1 "BARREL_JACK" H 1100 1200 50  0000 C CNN
F 2 "Connect:BARREL_JACK" H 1100 1400 50  0001 C CNN
F 3 "" H 1100 1400 50  0000 C CNN
	1    1100 1400
	1    0    0    -1  
$EndComp
$Comp
L CP1 C1
U 1 1 57B8D7E1
P 1650 1450
F 0 "C1" H 1675 1550 50  0000 L CNN
F 1 "10uF" H 1675 1350 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D7.5_L11.2_P2.5" H 1650 1450 50  0001 C CNN
F 3 "" H 1650 1450 50  0000 C CNN
	1    1650 1450
	1    0    0    -1  
$EndComp
$Comp
L LM7805 5V_REG1
U 1 1 57B8D804
P 2300 1350
F 0 "5V_REG1" H 2500 1150 50  0000 C CNN
F 1 "LM7805" H 2300 1550 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-220_Neutral123_Vertical" H 2300 1350 50  0001 C CNN
F 3 "" H 2300 1350 50  0000 C CNN
	1    2300 1350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 57B8D85B
P 2300 1650
F 0 "#PWR01" H 2300 1400 50  0001 C CNN
F 1 "GND" H 2300 1500 50  0000 C CNN
F 2 "" H 2300 1650 50  0000 C CNN
F 3 "" H 2300 1650 50  0000 C CNN
	1    2300 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1600 3900 1600
Wire Wire Line
	1400 1500 1400 1600
Connection ~ 1650 1600
Wire Wire Line
	1400 1400 1500 1400
Wire Wire Line
	1500 1400 1500 1600
Connection ~ 1500 1600
$Comp
L CP1 C2
U 1 1 57B8D8FA
P 2850 1450
F 0 "C2" H 2875 1550 50  0000 L CNN
F 1 "1uF" H 2875 1350 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D7.5_L11.2_P2.5" H 2850 1450 50  0001 C CNN
F 3 "" H 2850 1450 50  0000 C CNN
	1    2850 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1300 3100 1300
Wire Wire Line
	1400 1300 1900 1300
Connection ~ 1650 1300
$Comp
L R R1
U 1 1 57B8DABB
P 3250 1300
F 0 "R1" V 3330 1300 50  0000 C CNN
F 1 "1k" V 3250 1300 50  0000 C CNN
F 2 "Discret:R3-5" V 3180 1300 50  0001 C CNN
F 3 "" H 3250 1300 50  0000 C CNN
	1    3250 1300
	0    1    1    0   
$EndComp
$Comp
L LED D1
U 1 1 57B8DB14
P 3700 1300
F 0 "D1" H 3700 1400 50  0000 C CNN
F 1 "PWR_LED" H 3700 1200 50  0000 C CNN
F 2 "LEDs:LED-5MM" H 3700 1300 50  0001 C CNN
F 3 "" H 3700 1300 50  0000 C CNN
	1    3700 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3900 1600 3900 1300
Connection ~ 2850 1600
Wire Wire Line
	3500 1300 3400 1300
Connection ~ 2850 1300
Wire Wire Line
	3000 1300 3000 1050
Connection ~ 3000 1300
$Comp
L VCC #PWR02
U 1 1 57B8DD3A
P 1400 1300
F 0 "#PWR02" H 1400 1150 50  0001 C CNN
F 1 "VCC" H 1400 1450 50  0000 C CNN
F 2 "" H 1400 1300 50  0000 C CNN
F 3 "" H 1400 1300 50  0000 C CNN
	1    1400 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1600 2300 1650
Connection ~ 2300 1600
$Comp
L PWR_FLAG #FLG03
U 1 1 57B8DEB6
P 10550 750
F 0 "#FLG03" H 10550 845 50  0001 C CNN
F 1 "PWR_FLAG" H 10550 930 50  0000 C CNN
F 2 "" H 10550 750 50  0000 C CNN
F 3 "" H 10550 750 50  0000 C CNN
	1    10550 750 
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 57B8DED6
P 10550 850
F 0 "#PWR04" H 10550 700 50  0001 C CNN
F 1 "VCC" H 10550 1000 50  0000 C CNN
F 2 "" H 10550 850 50  0000 C CNN
F 3 "" H 10550 850 50  0000 C CNN
	1    10550 850 
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG05
U 1 1 57B8DF0D
P 11000 750
F 0 "#FLG05" H 11000 845 50  0001 C CNN
F 1 "PWR_FLAG" H 11000 930 50  0000 C CNN
F 2 "" H 11000 750 50  0000 C CNN
F 3 "" H 11000 750 50  0000 C CNN
	1    11000 750 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 57B8DF3D
P 11000 850
F 0 "#PWR06" H 11000 600 50  0001 C CNN
F 1 "GND" H 11000 700 50  0000 C CNN
F 2 "" H 11000 850 50  0000 C CNN
F 3 "" H 11000 850 50  0000 C CNN
	1    11000 850 
	1    0    0    -1  
$EndComp
Text Label 3000 1150 0    60   ~ 0
5V_PWR
Wire Notes Line
	3950 950  3950 1900
Wire Notes Line
	3950 1900 700  1900
Wire Notes Line
	700  1900 700  950 
Wire Notes Line
	700  950  3950 950 
Text Notes 1900 900  0    60   ~ 0
5V POWER CIRCUIT
$Comp
L LD1117V33 33V_REG1
U 1 1 57B8F87B
P 4900 1400
F 0 "33V_REG1" H 5150 1250 60  0000 C CNN
F 1 "LD1117V33" H 4900 1650 60  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-220_Neutral123_Vertical" H 4900 1400 60  0001 C CNN
F 3 "" H 4900 1400 60  0000 C CNN
	1    4900 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 57B8F927
P 4900 1700
F 0 "#PWR07" H 4900 1450 50  0001 C CNN
F 1 "GND" H 4900 1550 50  0000 C CNN
F 2 "" H 4900 1700 50  0000 C CNN
F 3 "" H 4900 1700 50  0000 C CNN
	1    4900 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1600 4900 1700
$Comp
L C C3
U 1 1 57B8F9A6
P 4450 1450
F 0 "C3" H 4475 1550 50  0000 L CNN
F 1 "0.1uf" H 4475 1350 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L4_W2.5_P2.5" H 4488 1300 50  0001 C CNN
F 3 "" H 4450 1450 50  0000 C CNN
	1    4450 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1300 4500 1300
Connection ~ 4450 1300
Text Label 4150 1300 0    60   ~ 0
5V_PWR
$Comp
L CP1 C4
U 1 1 57B8FB91
P 5450 1450
F 0 "C4" H 5475 1550 50  0000 L CNN
F 1 "10uf" H 5475 1350 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D7.5_L11.2_P2.5" H 5450 1450 50  0001 C CNN
F 3 "" H 5450 1450 50  0000 C CNN
	1    5450 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1300 5950 1300
Connection ~ 5450 1300
Text Label 5600 1300 0    60   ~ 0
33V_PWR
Wire Notes Line
	4050 950  4050 1900
Wire Notes Line
	4050 1900 6050 1900
Wire Notes Line
	6050 1900 6050 950 
Wire Notes Line
	6050 950  4050 950 
Text Notes 4550 900  0    60   ~ 0
3.3V POWER CIRCUIT
$Comp
L ATMEGA328-P IC1
U 1 1 57B8FDB1
P 2250 3800
F 0 "IC1" H 1500 5050 50  0000 L BNN
F 1 "ATMEGA328-P" H 2650 2400 50  0000 L BNN
F 2 "Housings_DIP:DIP-28_W7.62mm" H 2250 3800 50  0000 C CIN
F 3 "" H 2250 3800 50  0000 C CNN
	1    2250 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  2700 1350 2700
Text Label 900  2700 0    60   ~ 0
5V_PWR
Wire Wire Line
	1350 3000 1200 3000
Wire Wire Line
	1200 3000 1200 2700
Connection ~ 1200 2700
Wire Wire Line
	1350 3300 1100 3300
Wire Wire Line
	1100 3300 1100 2700
Connection ~ 1100 2700
$Comp
L GND #PWR08
U 1 1 57B90255
P 1200 5100
F 0 "#PWR08" H 1200 4850 50  0001 C CNN
F 1 "GND" H 1200 4950 50  0000 C CNN
F 2 "" H 1200 5100 50  0000 C CNN
F 3 "" H 1200 5100 50  0000 C CNN
	1    1200 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 5000 1200 5000
Wire Wire Line
	1200 4900 1200 5100
Wire Wire Line
	1350 4900 1200 4900
Connection ~ 1200 5000
$Comp
L R R2
U 1 1 57B90465
P 3900 4150
F 0 "R2" V 3980 4150 50  0000 C CNN
F 1 "10k" V 3900 4150 50  0000 C CNN
F 2 "Discret:R3-5" V 3830 4150 50  0001 C CNN
F 3 "" H 3900 4150 50  0000 C CNN
	1    3900 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 4150 3750 4150
Wire Wire Line
	4050 4150 4450 4150
Text Label 4100 4150 0    48   ~ 0
5V_PWR
$Comp
L SW_PUSH SW1
U 1 1 57B9073F
P 3900 3950
F 0 "SW1" H 4050 4060 50  0000 C CNN
F 1 "SW_PUSH" H 3900 3870 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH" H 3900 3950 50  0001 C CNN
F 3 "" H 3900 3950 50  0000 C CNN
	1    3900 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 57B907A4
P 4300 3950
F 0 "#PWR09" H 4300 3700 50  0001 C CNN
F 1 "GND" H 4300 3800 50  0000 C CNN
F 2 "" H 4300 3950 50  0000 C CNN
F 3 "" H 4300 3950 50  0000 C CNN
	1    4300 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 3950 3600 4150
Connection ~ 3600 4150
Wire Wire Line
	4200 3950 4300 3950
$Comp
L Crystal Y1
U 1 1 57B908C1
P 3750 3400
F 0 "Y1" H 3750 3550 50  0000 C CNN
F 1 "16MHz" H 3750 3250 50  0000 C CNN
F 2 "Crystals:Crystal_HC49-U_Vertical" H 3750 3400 50  0001 C CNN
F 3 "" H 3750 3400 50  0000 C CNN
	1    3750 3400
	0    1    1    0   
$EndComp
$Comp
L C C6
U 1 1 57B90A63
P 4000 3250
F 0 "C6" H 4025 3350 50  0000 L CNN
F 1 "22pF" H 3800 3150 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L4_W2.5_P2.5" H 4038 3100 50  0001 C CNN
F 3 "" H 4000 3250 50  0000 C CNN
	1    4000 3250
	0    1    1    0   
$EndComp
$Comp
L C C5
U 1 1 57B90AAA
P 4000 3550
F 0 "C5" H 4025 3650 50  0000 L CNN
F 1 "22pF" H 4025 3450 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L4_W2.5_P2.5" H 4038 3400 50  0001 C CNN
F 3 "" H 4000 3550 50  0000 C CNN
	1    4000 3550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR010
U 1 1 57B90C08
P 4300 3250
F 0 "#PWR010" H 4300 3000 50  0001 C CNN
F 1 "GND" H 4300 3100 50  0000 C CNN
F 2 "" H 4300 3250 50  0000 C CNN
F 3 "" H 4300 3250 50  0000 C CNN
	1    4300 3250
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR011
U 1 1 57B90C47
P 4300 3550
F 0 "#PWR011" H 4300 3300 50  0001 C CNN
F 1 "GND" H 4300 3400 50  0000 C CNN
F 2 "" H 4300 3550 50  0000 C CNN
F 3 "" H 4300 3550 50  0000 C CNN
	1    4300 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3250 4300 3800 4300
Wire Wire Line
	3250 4400 3800 4400
Text Label 3250 4300 0    60   ~ 0
ESP_TX
Text Label 3250 4400 0    60   ~ 0
ESP_RX
Wire Wire Line
	3250 2700 3800 2700
Text Label 3300 2700 0    60   ~ 0
SR_LATCH
Wire Wire Line
	3250 3100 3800 3100
Text Label 3300 3100 0    60   ~ 0
SR_CLOCK
Wire Wire Line
	3250 3000 3800 3000
Text Label 3300 3000 0    60   ~ 0
SR_DATA
NoConn ~ 3250 2800
NoConn ~ 3250 2900
NoConn ~ 3250 3200
NoConn ~ 3250 3550
NoConn ~ 3250 3650
NoConn ~ 3250 3750
NoConn ~ 3250 3850
NoConn ~ 3250 3950
NoConn ~ 3250 4050
NoConn ~ 3250 4500
NoConn ~ 3250 4600
NoConn ~ 3250 4700
NoConn ~ 3250 4800
NoConn ~ 3250 4900
NoConn ~ 3250 5000
Wire Wire Line
	3500 3250 3850 3250
Wire Wire Line
	3500 3550 3850 3550
Wire Wire Line
	4150 3250 4300 3250
Wire Wire Line
	4150 3550 4300 3550
Wire Wire Line
	3500 3250 3500 3300
Wire Wire Line
	3500 3300 3250 3300
Connection ~ 3750 3250
Wire Wire Line
	3500 3550 3500 3400
Wire Wire Line
	3500 3400 3250 3400
Connection ~ 3750 3550
Text Notes 2100 2700 0    60   ~ 0
DP8
Text Notes 2100 3000 0    60   ~ 0
DP11
Text Notes 2100 3100 0    60   ~ 0
DP12
Text Notes 2300 4300 0    60   ~ 0
DP0
Text Notes 2300 4400 0    60   ~ 0
DP1
Wire Notes Line
	700  2400 700  5400
Wire Notes Line
	700  5400 4600 5400
Wire Notes Line
	4600 5400 4600 2400
Wire Notes Line
	4600 2400 700  2400
Text Notes 1900 2350 0    60   ~ 0
ARDUINO CIRCUIT
$Comp
L LTS-6980HR DIG1
U 1 1 57B9232C
P 8050 3050
F 0 "DIG1" H 8050 3600 50  0000 C CNN
F 1 "LTS-6980HR" H 8050 2600 50  0000 C CNN
F 2 "Displays_7-Segment:7SegmentLED_LTS6760_LTS6780" H 8050 3050 50  0001 C CNN
F 3 "" H 8050 3050 50  0000 C CNN
	1    8050 3050
	1    0    0    -1  
$EndComp
$Comp
L LTS-6980HR DIG2
U 1 1 57B92376
P 8050 4500
F 0 "DIG2" H 8050 5050 50  0000 C CNN
F 1 "LTS-6980HR" H 8050 4050 50  0000 C CNN
F 2 "Displays_7-Segment:7SegmentLED_LTS6760_LTS6780" H 8050 4500 50  0001 C CNN
F 3 "" H 8050 4500 50  0000 C CNN
	1    8050 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 2650 7450 2650
Wire Wire Line
	7000 2750 7450 2750
Wire Wire Line
	7000 2850 7450 2850
Wire Wire Line
	7000 2950 7450 2950
Wire Wire Line
	7000 3050 7450 3050
Wire Wire Line
	7000 3150 7450 3150
Wire Wire Line
	7000 3250 7450 3250
Wire Wire Line
	7000 4100 7450 4100
Wire Wire Line
	7000 4200 7450 4200
Wire Wire Line
	7000 4300 7450 4300
Wire Wire Line
	7000 4400 7450 4400
Wire Wire Line
	7000 4500 7450 4500
Wire Wire Line
	7000 4600 7450 4600
Wire Wire Line
	7000 4700 7450 4700
$Comp
L R R3
U 1 1 57B92C27
P 8900 2600
F 0 "R3" V 8800 2600 50  0000 C CNN
F 1 "470" V 8900 2600 50  0000 C CNN
F 2 "Discret:R3-5" V 8830 2600 50  0001 C CNN
F 3 "" H 8900 2600 50  0000 C CNN
	1    8900 2600
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 57B92D08
P 8900 2700
F 0 "R4" V 9000 2700 50  0000 C CNN
F 1 "470" V 8900 2700 50  0000 C CNN
F 2 "Discret:R3-5" V 8830 2700 50  0001 C CNN
F 3 "" H 8900 2700 50  0000 C CNN
	1    8900 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 2600 8750 2600
Wire Wire Line
	8650 2700 8750 2700
$Comp
L GND #PWR012
U 1 1 57B93163
P 9200 2550
F 0 "#PWR012" H 9200 2300 50  0001 C CNN
F 1 "GND" H 9200 2400 50  0000 C CNN
F 2 "" H 9200 2550 50  0000 C CNN
F 3 "" H 9200 2550 50  0000 C CNN
	1    9200 2550
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR013
U 1 1 57B931B4
P 9200 2750
F 0 "#PWR013" H 9200 2500 50  0001 C CNN
F 1 "GND" H 9200 2600 50  0000 C CNN
F 2 "" H 9200 2750 50  0000 C CNN
F 3 "" H 9200 2750 50  0000 C CNN
	1    9200 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9050 2600 9100 2600
Wire Wire Line
	9100 2600 9100 2550
Wire Wire Line
	9100 2550 9200 2550
Wire Wire Line
	9050 2700 9100 2700
Wire Wire Line
	9100 2700 9100 2750
Wire Wire Line
	9100 2750 9200 2750
$Comp
L 74HC595 SR1
U 1 1 57B938BD
P 6300 3100
F 0 "SR1" H 6450 3700 50  0000 C CNN
F 1 "74HC595" H 6300 2500 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 6300 3100 50  0001 C CNN
F 3 "" H 6300 3100 50  0000 C CNN
	1    6300 3100
	1    0    0    -1  
$EndComp
$Comp
L 74HC595 SR2
U 1 1 57B93A34
P 6300 4550
F 0 "SR2" H 6450 5150 50  0000 C CNN
F 1 "74HC595" H 6300 3950 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm" H 6300 4550 50  0001 C CNN
F 3 "" H 6300 4550 50  0000 C CNN
	1    6300 4550
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 57B93C92
P 8900 4050
F 0 "R5" V 8800 4050 50  0000 C CNN
F 1 "470" V 8900 4050 50  0000 C CNN
F 2 "Discret:R3-5" V 8830 4050 50  0001 C CNN
F 3 "" H 8900 4050 50  0000 C CNN
	1    8900 4050
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 57B93C98
P 8900 4150
F 0 "R6" V 9000 4150 50  0000 C CNN
F 1 "470" V 8900 4150 50  0000 C CNN
F 2 "Discret:R3-5" V 8830 4150 50  0001 C CNN
F 3 "" H 8900 4150 50  0000 C CNN
	1    8900 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	8650 4050 8750 4050
Wire Wire Line
	8650 4150 8750 4150
$Comp
L GND #PWR014
U 1 1 57B93CA0
P 9200 4000
F 0 "#PWR014" H 9200 3750 50  0001 C CNN
F 1 "GND" H 9200 3850 50  0000 C CNN
F 2 "" H 9200 4000 50  0000 C CNN
F 3 "" H 9200 4000 50  0000 C CNN
	1    9200 4000
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR015
U 1 1 57B93CA6
P 9200 4200
F 0 "#PWR015" H 9200 3950 50  0001 C CNN
F 1 "GND" H 9200 4050 50  0000 C CNN
F 2 "" H 9200 4200 50  0000 C CNN
F 3 "" H 9200 4200 50  0000 C CNN
	1    9200 4200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9050 4050 9100 4050
Wire Wire Line
	9100 4050 9100 4000
Wire Wire Line
	9100 4000 9200 4000
Wire Wire Line
	9050 4150 9100 4150
Wire Wire Line
	9100 4150 9100 4200
Wire Wire Line
	9100 4200 9200 4200
Wire Wire Line
	7000 3800 7000 3550
Wire Wire Line
	5550 3800 7000 3800
Wire Wire Line
	5600 2650 4900 2650
Text Label 4950 2650 0    60   ~ 0
SR_DATA
Wire Wire Line
	4900 2850 5600 2850
Text Label 4950 2850 0    60   ~ 0
SR_CLOCK
Wire Wire Line
	4900 3150 5600 3150
Text Label 4950 3150 0    60   ~ 0
SR_LATCH
Wire Wire Line
	5600 2950 4900 2950
Text Label 4950 2950 0    60   ~ 0
5V_PWR
$Comp
L GND #PWR016
U 1 1 57B94DE2
P 5500 3250
F 0 "#PWR016" H 5500 3000 50  0001 C CNN
F 1 "GND" H 5500 3100 50  0000 C CNN
F 2 "" H 5500 3250 50  0000 C CNN
F 3 "" H 5500 3250 50  0000 C CNN
	1    5500 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 3250 5500 3250
Wire Wire Line
	4900 4100 5600 4100
Text Label 4950 4100 0    60   ~ 0
SR_DATA
Wire Wire Line
	4900 4300 5600 4300
Text Label 4950 4300 0    60   ~ 0
SR_CLOCK
Wire Wire Line
	4900 4600 5600 4600
Text Label 4950 4600 0    60   ~ 0
SR_LATCH
Wire Wire Line
	5600 4400 4900 4400
Text Label 4950 4400 0    60   ~ 0
5V_PWR
$Comp
L GND #PWR017
U 1 1 57B95296
P 5500 4700
F 0 "#PWR017" H 5500 4450 50  0001 C CNN
F 1 "GND" H 5500 4550 50  0000 C CNN
F 2 "" H 5500 4700 50  0000 C CNN
F 3 "" H 5500 4700 50  0000 C CNN
	1    5500 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 4700 5500 4700
Wire Wire Line
	5550 3800 5550 4100
Connection ~ 5550 4100
Wire Wire Line
	5500 2850 5500 4300
Connection ~ 5500 4300
Connection ~ 5500 2850
Wire Wire Line
	5450 3150 5450 4600
Connection ~ 5450 4600
Connection ~ 5450 3150
NoConn ~ 8650 3300
NoConn ~ 8650 4750
Wire Notes Line
	4800 2400 4800 5400
Wire Notes Line
	4800 5400 9500 5400
Wire Notes Line
	9500 5400 9500 2400
Wire Notes Line
	9500 2400 4800 2400
Text Notes 6750 2300 0    60   ~ 0
DISPLAY CIRCUIT
$Comp
L ESP-01v090 ESP1
U 1 1 57B95E8E
P 3250 6450
F 0 "ESP1" H 3250 6350 50  0000 C CNN
F 1 "ESP-01" H 3250 6550 50  0000 C CNN
F 2 "ESPLIB:ESP-01" H 3250 6450 50  0001 C CNN
F 3 "" H 3250 6450 50  0001 C CNN
	1    3250 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 6600 1650 6600
Text Label 1700 6600 0    60   ~ 0
33V_PWR
$Comp
L GND #PWR018
U 1 1 57B964FD
P 4350 6300
F 0 "#PWR018" H 4350 6050 50  0001 C CNN
F 1 "GND" H 4350 6150 50  0000 C CNN
F 2 "" H 4350 6300 50  0000 C CNN
F 3 "" H 4350 6300 50  0000 C CNN
	1    4350 6300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 6300 4350 6300
Wire Wire Line
	4200 6600 4700 6600
Text Label 4250 6600 0    60   ~ 0
ESP_RX
Wire Wire Line
	2300 6300 1650 6300
Text Label 1700 6300 0    60   ~ 0
ESP_TX
$Comp
L R R7
U 1 1 57B971B6
P 4850 6500
F 0 "R7" V 4930 6500 50  0000 C CNN
F 1 "10k" V 4850 6500 50  0000 C CNN
F 2 "Discret:R3-5" V 4780 6500 50  0001 C CNN
F 3 "" H 4850 6500 50  0000 C CNN
	1    4850 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 6500 4700 6500
Wire Wire Line
	5000 6500 5350 6500
Text Label 5000 6500 0    60   ~ 0
33V_PWR
NoConn ~ 4200 6400
$Comp
L R R8
U 1 1 57B97778
P 1550 6500
F 0 "R8" V 1630 6500 50  0000 C CNN
F 1 "10k" V 1550 6500 50  0000 C CNN
F 2 "Discret:R3-5" V 1480 6500 50  0001 C CNN
F 3 "" H 1550 6500 50  0000 C CNN
	1    1550 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 6500 2300 6500
Wire Wire Line
	1400 6500 1050 6500
Text Label 1050 6500 0    60   ~ 0
33V_PWR
Wire Wire Line
	2300 6400 1650 6400
Text Label 1700 6400 0    60   ~ 0
33V_PWR
Wire Notes Line
	700  6000 700  6900
Wire Notes Line
	700  6900 5500 6900
Wire Notes Line
	5500 6900 5500 6000
Wire Notes Line
	5500 6000 700  6000
Text Notes 2900 5900 0    60   ~ 0
ESP8266 CIRCUIT
NoConn ~ 7000 4800
NoConn ~ 7000 3350
NoConn ~ 7000 5000
Wire Wire Line
	10550 750  10550 850 
Wire Wire Line
	11000 750  11000 850 
Wire Wire Line
	4450 1600 4450 1650
Wire Wire Line
	4450 1650 5450 1650
Connection ~ 4900 1650
Wire Wire Line
	5450 1650 5450 1600
$EndSCHEMATC