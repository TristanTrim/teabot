EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:teensy
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
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
L Teensy2.0 U1
U 1 1 5AD3845F
P 4700 2550
F 0 "U1" H 4700 3500 60  0000 C CNN
F 1 "Teensy2.0" H 4700 1600 60  0000 C CNN
F 2 "" H 4800 1500 60  0000 C CNN
F 3 "" H 4800 1500 60  0000 C CNN
	1    4700 2550
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR5
U 1 1 5AD385EB
P 5900 1150
F 0 "#PWR5" H 5900 1000 50  0001 C CNN
F 1 "+12V" H 5900 1290 50  0000 C CNN
F 2 "" H 5900 1150 50  0001 C CNN
F 3 "" H 5900 1150 50  0001 C CNN
	1    5900 1150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR3
U 1 1 5AD38601
P 5500 1150
F 0 "#PWR3" H 5500 1000 50  0001 C CNN
F 1 "+5V" H 5500 1290 50  0000 C CNN
F 2 "" H 5500 1150 50  0001 C CNN
F 3 "" H 5500 1150 50  0001 C CNN
	1    5500 1150
	1    0    0    -1  
$EndComp
$Comp
L Motor_DC M1
U 1 1 5AD38748
P 8200 2500
F 0 "M1" H 8300 2600 71  0000 L CNN
F 1 "Motor_DC" H 8300 2300 50  0000 L TNN
F 2 "" H 8200 2410 50  0001 C CNN
F 3 "" H 8200 2410 50  0001 C CNN
F 4 ".51W" H 8200 2500 60  0001 C CNN "Power"
	1    8200 2500
	1    0    0    -1  
$EndComp
$Comp
L Heater R1
U 1 1 5AD38A9D
P 6950 4600
F 0 "R1" V 7030 4600 50  0000 C CNN
F 1 "Heater" V 6870 4600 50  0000 C CNN
F 2 "" V 6880 4600 50  0001 C CNN
F 3 "" H 6950 4600 50  0001 C CNN
	1    6950 4600
	0    -1   -1   0   
$EndComp
$Comp
L G5Q-1A K1
U 1 1 5AD38C3C
P 5500 4400
F 0 "K1" V 6200 4450 50  0000 L CNN
F 1 "G5Q-1A" V 6100 4450 50  0000 L CNN
F 2 "Relays_THT:Relay_SPST-NO_OMRON-G5Q" H 6050 4550 50  0001 L CNN
F 3 "" H 6600 4100 50  0001 C CNN
	1    5500 4400
	1    0    0    -1  
$EndComp
$Comp
L 2N3906 Q1
U 1 1 5AD3913E
P 5400 4800
F 0 "Q1" H 5600 4875 50  0000 L CNN
F 1 "2N3906" H 5600 4800 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 5600 4725 50  0001 L CIN
F 3 "" H 5400 4800 50  0001 L CNN
	1    5400 4800
	1    0    0    1   
$EndComp
$Comp
L IRLZ44N Q3
U 1 1 5AD3938B
P 6500 3200
F 0 "Q3" H 6750 3275 50  0000 L CNN
F 1 "IRLZ44N" H 6750 3200 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 6750 3125 50  0001 L CIN
F 3 "" H 6500 3200 50  0001 L CNN
	1    6500 3200
	1    0    0    -1  
$EndComp
$Comp
L IRLZ44N Q5
U 1 1 5AD394AA
P 7400 3200
F 0 "Q5" H 7650 3275 50  0000 L CNN
F 1 "IRLZ44N" H 7650 3200 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 7650 3125 50  0001 L CIN
F 3 "" H 7400 3200 50  0001 L CNN
	1    7400 3200
	1    0    0    -1  
$EndComp
$Comp
L IRLZ44N Q2
U 1 1 5AD396DC
P 6500 1900
F 0 "Q2" H 6750 1975 50  0000 L CNN
F 1 "IRLZ44N" H 6750 1900 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 6750 1825 50  0001 L CIN
F 3 "" H 6500 1900 50  0001 L CNN
	1    6500 1900
	1    0    0    -1  
$EndComp
$Comp
L IRLZ44N Q4
U 1 1 5AD396E2
P 7400 1900
F 0 "Q4" H 7650 1975 50  0000 L CNN
F 1 "IRLZ44N" H 7650 1900 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Vertical" H 7650 1825 50  0001 L CIN
F 3 "" H 7400 1900 50  0001 L CNN
	1    7400 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1150 5500 3900
Wire Wire Line
	5500 2100 5400 2100
Connection ~ 5500 2100
Wire Wire Line
	5500 4500 5500 4600
$Comp
L GND #PWR4
U 1 1 5AD3A759
P 5500 5150
F 0 "#PWR4" H 5500 4900 50  0001 C CNN
F 1 "GND" H 5500 5000 50  0000 C CNN
F 2 "" H 5500 5150 50  0001 C CNN
F 3 "" H 5500 5150 50  0001 C CNN
	1    5500 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2200 3700 2200
Wire Wire Line
	3700 2200 3700 4800
Wire Wire Line
	3700 4800 5200 4800
Wire Wire Line
	5900 1150 5900 3900
Wire Wire Line
	5900 4600 6800 4600
Wire Wire Line
	7500 3400 7500 5150
$Comp
L GND #PWR6
U 1 1 5AD3AAB6
P 7500 5150
F 0 "#PWR6" H 7500 4900 50  0001 C CNN
F 1 "GND" H 7500 5000 50  0000 C CNN
F 2 "" H 7500 5150 50  0001 C CNN
F 3 "" H 7500 5150 50  0001 C CNN
	1    7500 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1500 7500 1500
Wire Wire Line
	7500 1500 7500 1700
Connection ~ 5900 1500
Wire Wire Line
	6600 1700 6600 1500
Connection ~ 6600 1500
Wire Wire Line
	7500 2100 7500 3000
Wire Wire Line
	6600 3400 6600 3550
Wire Wire Line
	6600 3550 7500 3550
Connection ~ 7500 3550
Wire Wire Line
	8200 2900 8200 2800
Wire Wire Line
	8200 2300 8200 2200
Wire Wire Line
	8200 2200 7500 2200
Connection ~ 7500 2200
Wire Wire Line
	3200 1800 4000 1800
$Comp
L GND #PWR1
U 1 1 5AD3ACEC
P 3200 5150
F 0 "#PWR1" H 3200 4900 50  0001 C CNN
F 1 "GND" H 3200 5000 50  0000 C CNN
F 2 "" H 3200 5150 50  0001 C CNN
F 3 "" H 3200 5150 50  0001 C CNN
	1    3200 5150
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 5AD3AD48
P 3450 2250
F 0 "SW1" H 3500 2350 50  0000 L CNN
F 1 "SW_Push" H 3450 2190 50  0000 C CNN
F 2 "" H 3450 2450 50  0001 C CNN
F 3 "" H 3450 2450 50  0001 C CNN
	1    3450 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3450 1900 3450 2050
Wire Wire Line
	3450 2450 3450 5150
Wire Wire Line
	7200 1900 7200 2200
Wire Wire Line
	6150 3700 3800 3700
Wire Wire Line
	4000 2300 3800 2300
Wire Wire Line
	3800 2300 3800 3700
Wire Wire Line
	4000 2400 3900 2400
Wire Wire Line
	3900 2400 3900 3600
Wire Wire Line
	6050 3600 3900 3600
Wire Wire Line
	6050 1900 6050 3600
Wire Wire Line
	7200 3200 7200 2800
Connection ~ 6050 2800
Wire Wire Line
	6150 2200 6150 3700
Connection ~ 6150 3200
Wire Wire Line
	6050 1900 6300 1900
Wire Wire Line
	7200 2800 6050 2800
Wire Wire Line
	7200 2200 6150 2200
Wire Wire Line
	6300 3200 6150 3200
Wire Wire Line
	6600 2100 6600 3000
Wire Wire Line
	7800 2900 8200 2900
Wire Wire Line
	7800 2900 7800 2400
Wire Wire Line
	7800 2400 6600 2400
Connection ~ 6600 2400
Connection ~ 7500 4600
Wire Wire Line
	7500 4600 7100 4600
Wire Wire Line
	5900 4500 5900 4600
Wire Wire Line
	5500 5000 5500 5150
Wire Wire Line
	3200 1800 3200 5150
Wire Wire Line
	3450 1900 4000 1900
$Comp
L GND #PWR2
U 1 1 5AD3C61C
P 3450 5150
F 0 "#PWR2" H 3450 4900 50  0001 C CNN
F 1 "GND" H 3450 5000 50  0000 C CNN
F 2 "" H 3450 5150 50  0001 C CNN
F 3 "" H 3450 5150 50  0001 C CNN
	1    3450 5150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
