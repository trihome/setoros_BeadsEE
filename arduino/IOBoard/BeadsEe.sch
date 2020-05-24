EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Beads End Effector Driver for Arduino UNO"
Date "2020-05-24"
Rev "Rev.1.0"
Comp "Setouchi ROS"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "CC-BY-SA"
$EndDescr
Text Label 8950 1450 1    60   ~ 0
Vin
Text Label 9350 1450 1    60   ~ 0
IOREF
Text Label 8900 2500 0    60   ~ 0
A0
Text Label 8900 2600 0    60   ~ 0
A1
Text Label 8900 2700 0    60   ~ 0
A2
Text Label 8900 2800 0    60   ~ 0
A3
Text Label 8900 2900 0    60   ~ 0
A4(SDA)
Text Label 8900 3000 0    60   ~ 0
A5(SCL)
Text Label 10550 3000 0    60   ~ 0
0(Rx)
Text Label 10550 2800 0    60   ~ 0
2
Text Label 10550 2900 0    60   ~ 0
1(Tx)
Text Label 10550 2700 0    60   ~ 0
3(**)
Text Label 10550 2600 0    60   ~ 0
4
Text Label 10550 2500 0    60   ~ 0
5(**)
Text Label 10550 2400 0    60   ~ 0
6(**)
Text Label 10550 2300 0    60   ~ 0
7
Text Label 10550 2100 0    60   ~ 0
8
Text Label 10550 2000 0    60   ~ 0
9(**)
Text Label 10550 1900 0    60   ~ 0
10(**/SS)
Text Label 10550 1800 0    60   ~ 0
11(**/MOSI)
Text Label 10550 1700 0    60   ~ 0
12(MISO)
Text Label 10550 1600 0    60   ~ 0
13(SCK)
Text Label 10550 1400 0    60   ~ 0
AREF
NoConn ~ 9400 1600
Text Label 10550 1300 0    60   ~ 0
A4(SDA)
Text Label 10550 1200 0    60   ~ 0
A5(SCL)
Text Notes 10850 1000 0    60   ~ 0
Holes
Text Notes 8550 750  0    60   ~ 0
Shield for Arduino that uses\nthe same pin disposition\nlike "Uno" board Rev 3.
$Comp
L Connector_Generic:Conn_01x08 P1
U 1 1 56D70129
P 9600 1900
F 0 "P1" H 9600 2350 50  0000 C CNN
F 1 "Power" V 9700 1900 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 9750 1900 20  0000 C CNN
F 3 "" H 9600 1900 50  0000 C CNN
	1    9600 1900
	1    0    0    -1  
$EndComp
Text Label 8650 1800 0    60   ~ 0
Reset
$Comp
L power:+3.3V #PWR018
U 1 1 56D70538
P 9150 1450
F 0 "#PWR018" H 9150 1300 50  0001 C CNN
F 1 "+3.3V" V 9150 1700 50  0000 C CNN
F 2 "" H 9150 1450 50  0000 C CNN
F 3 "" H 9150 1450 50  0000 C CNN
	1    9150 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR017
U 1 1 56D707BB
P 9050 1350
F 0 "#PWR017" H 9050 1200 50  0001 C CNN
F 1 "+5V" V 9050 1550 50  0000 C CNN
F 2 "" H 9050 1350 50  0000 C CNN
F 3 "" H 9050 1350 50  0000 C CNN
	1    9050 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 56D70CC2
P 9300 3150
F 0 "#PWR020" H 9300 2900 50  0001 C CNN
F 1 "GND" H 9300 3000 50  0000 C CNN
F 2 "" H 9300 3150 50  0000 C CNN
F 3 "" H 9300 3150 50  0000 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 56D70CFF
P 10300 3150
F 0 "#PWR022" H 10300 2900 50  0001 C CNN
F 1 "GND" H 10300 3000 50  0000 C CNN
F 2 "" H 10300 3150 50  0000 C CNN
F 3 "" H 10300 3150 50  0000 C CNN
	1    10300 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 P2
U 1 1 56D70DD8
P 9600 2700
F 0 "P2" H 9600 2300 50  0000 C CNN
F 1 "Analog" V 9700 2700 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x06" V 9750 2750 20  0000 C CNN
F 3 "" H 9600 2700 50  0000 C CNN
	1    9600 2700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P5
U 1 1 56D71177
P 10800 650
F 0 "P5" V 10900 650 50  0000 C CNN
F 1 "CONN_01X01" V 10900 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10721 724 20  0000 C CNN
F 3 "" H 10800 650 50  0000 C CNN
	1    10800 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P6
U 1 1 56D71274
P 10900 650
F 0 "P6" V 11000 650 50  0000 C CNN
F 1 "CONN_01X01" V 11000 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 10900 650 20  0001 C CNN
F 3 "" H 10900 650 50  0000 C CNN
	1    10900 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P7
U 1 1 56D712A8
P 11000 650
F 0 "P7" V 11100 650 50  0000 C CNN
F 1 "CONN_01X01" V 11100 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" V 11000 650 20  0001 C CNN
F 3 "" H 11000 650 50  0000 C CNN
	1    11000 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P8
U 1 1 56D712DB
P 11100 650
F 0 "P8" V 11200 650 50  0000 C CNN
F 1 "CONN_01X01" V 11200 650 50  0001 C CNN
F 2 "Socket_Arduino_Uno:Arduino_1pin" H 11024 572 20  0000 C CNN
F 3 "" H 11100 650 50  0000 C CNN
	1    11100 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 10800 850 
NoConn ~ 10900 850 
NoConn ~ 11000 850 
NoConn ~ 11100 850 
$Comp
L Connector_Generic:Conn_01x08 P4
U 1 1 56D7164F
P 10000 2600
F 0 "P4" H 10000 2100 50  0000 C CNN
F 1 "Digital" V 10100 2600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x08" V 10150 2550 20  0000 C CNN
F 3 "" H 10000 2600 50  0000 C CNN
	1    10000 2600
	-1   0    0    -1  
$EndComp
Wire Notes Line
	8525 825  9925 825 
Wire Notes Line
	9925 825  9925 475 
Wire Wire Line
	9350 1450 9350 1700
Wire Wire Line
	9350 1700 9400 1700
Wire Wire Line
	9400 1900 9150 1900
Wire Wire Line
	9400 2000 9050 2000
Wire Wire Line
	9400 2300 8950 2300
Wire Wire Line
	9400 2100 9300 2100
Wire Wire Line
	9400 2200 9300 2200
Connection ~ 9300 2200
Wire Wire Line
	8950 2300 8950 1450
Wire Wire Line
	9050 2000 9050 1350
Wire Wire Line
	9150 1900 9150 1450
Wire Wire Line
	9400 2500 8900 2500
Wire Wire Line
	9400 2600 8900 2600
Wire Wire Line
	9400 2700 8900 2700
Wire Wire Line
	9400 2800 8900 2800
Wire Wire Line
	9400 2900 8900 2900
Wire Wire Line
	9400 3000 8900 3000
$Comp
L Connector_Generic:Conn_01x10 P3
U 1 1 56D721E0
P 10000 1600
F 0 "P3" H 10000 2150 50  0000 C CNN
F 1 "Digital" V 10100 1600 50  0000 C CNN
F 2 "Socket_Arduino_Uno:Socket_Strip_Arduino_1x10" V 10150 1600 20  0000 C CNN
F 3 "" H 10000 1600 50  0000 C CNN
	1    10000 1600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10200 2100 10550 2100
Wire Wire Line
	10200 2000 10550 2000
Wire Wire Line
	10200 1900 10550 1900
Wire Wire Line
	10200 1800 10550 1800
Wire Wire Line
	10200 1700 10550 1700
Wire Wire Line
	10200 1600 10550 1600
Wire Wire Line
	10200 1400 10550 1400
Wire Wire Line
	10200 1300 10550 1300
Wire Wire Line
	10200 1200 10550 1200
Wire Wire Line
	10200 3000 10550 3000
Wire Wire Line
	10200 2900 10550 2900
Wire Wire Line
	10200 2800 10550 2800
Wire Wire Line
	10200 2700 10550 2700
Wire Wire Line
	10200 2600 10550 2600
Wire Wire Line
	10200 2500 10550 2500
Wire Wire Line
	10200 2400 10550 2400
Wire Wire Line
	10200 2300 10550 2300
Wire Wire Line
	10200 1500 10300 1500
Wire Wire Line
	10300 1500 10300 3150
Wire Wire Line
	9300 2100 9300 2200
Wire Wire Line
	9300 2200 9300 3150
Wire Notes Line
	8500 500  8500 3450
Wire Notes Line
	8500 3450 11200 3450
Wire Wire Line
	9400 1800 8650 1800
Text Notes 9700 1600 0    60   ~ 0
1
Wire Notes Line
	11200 1000 10700 1000
Wire Notes Line
	10700 1000 10700 500 
$Comp
L Device:R R1
U 1 1 5EC9B754
P 1950 1500
F 0 "R1" V 1743 1500 50  0000 C CNN
F 1 "4.7k" V 1834 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 1880 1500 50  0001 C CNN
F 3 "~" H 1950 1500 50  0001 C CNN
	1    1950 1500
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5EC9C684
P 2450 1500
F 0 "D1" H 2443 1245 50  0000 C CNN
F 1 "LED Yellow" H 2443 1336 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 2450 1500 50  0001 C CNN
F 3 "~" H 2450 1500 50  0001 C CNN
	1    2450 1500
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_BCE Q1
U 1 1 5EC9CFB7
P 2200 4100
F 0 "Q1" V 2435 4100 50  0000 C CNN
F 1 "C1815" V 2526 4100 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92L_Inline_Wide" H 2400 4200 50  0001 C CNN
F 3 "~" H 2200 4100 50  0001 C CNN
	1    2200 4100
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J4
U 1 1 5EC9EA30
P 9500 5300
F 0 "J4" H 9550 5617 50  0000 C CNN
F 1 "I2C" H 9550 5526 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Horizontal" H 9500 5300 50  0001 C CNN
F 3 "~" H 9500 5300 50  0001 C CNN
	1    9500 5300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 5EC9F610
P 7000 4000
F 0 "J3" H 7080 4042 50  0000 L CNN
F 1 "Supply Select" H 7080 3951 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_Pad1.0x1.5mm_NumberLabels" H 7000 4000 50  0001 C CNN
F 3 "~" H 7000 4000 50  0001 C CNN
	1    7000 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5ECA17DC
P 2800 2000
F 0 "#PWR05" H 2800 1750 50  0001 C CNN
F 1 "GND" H 2805 1827 50  0000 C CNN
F 2 "" H 2800 2000 50  0001 C CNN
F 3 "" H 2800 2000 50  0001 C CNN
	1    2800 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5ECA538E
P 6700 5000
F 0 "#PWR015" H 6700 4750 50  0001 C CNN
F 1 "GND" H 6705 4827 50  0000 C CNN
F 2 "" H 6700 5000 50  0001 C CNN
F 3 "" H 6700 5000 50  0001 C CNN
	1    6700 5000
	1    0    0    -1  
$EndComp
Text Notes 2900 1550 0    50   ~ 0
Axis Z
Text Label 1200 1500 0    50   ~ 0
7
Wire Wire Line
	1800 1500 1200 1500
$Comp
L Device:R R2
U 1 1 5ECB1BE5
P 1950 1900
F 0 "R2" V 1743 1900 50  0000 C CNN
F 1 "4.7k" V 1834 1900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 1880 1900 50  0001 C CNN
F 3 "~" H 1950 1900 50  0001 C CNN
	1    1950 1900
	0    1    1    0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5ECB1BEB
P 2450 1900
F 0 "D2" H 2443 1645 50  0000 C CNN
F 1 "LED Green" H 2443 1736 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 2450 1900 50  0001 C CNN
F 3 "~" H 2450 1900 50  0001 C CNN
	1    2450 1900
	-1   0    0    1   
$EndComp
Text Label 1200 1900 0    50   ~ 0
6(**)
Wire Wire Line
	1800 1900 1200 1900
Text Notes 2900 1950 0    50   ~ 0
Axis A
Wire Wire Line
	2100 1500 2300 1500
Wire Wire Line
	2100 1900 2300 1900
Wire Wire Line
	2600 1500 2800 1500
Wire Wire Line
	2800 1500 2800 1900
Wire Wire Line
	2600 1900 2800 1900
Connection ~ 2800 1900
Wire Wire Line
	2800 1900 2800 2000
Text Notes 1300 6200 0    50   ~ 0
Ref:\nhttps://lipoyang.hatenablog.com/entry/20180224/p1
Wire Wire Line
	2000 4200 1300 4200
$Comp
L power:+5V #PWR01
U 1 1 5ECBF32E
P 2200 3400
F 0 "#PWR01" H 2200 3250 50  0001 C CNN
F 1 "+5V" H 2215 3573 50  0000 C CNN
F 2 "" H 2200 3400 50  0001 C CNN
F 3 "" H 2200 3400 50  0001 C CNN
	1    2200 3400
	1    0    0    -1  
$EndComp
$Comp
L power:VS #PWR03
U 1 1 5ECBFDEA
P 2600 3400
F 0 "#PWR03" H 2400 3250 50  0001 C CNN
F 1 "VS" H 2615 3573 50  0000 C CNN
F 2 "" H 2600 3400 50  0001 C CNN
F 3 "" H 2600 3400 50  0001 C CNN
	1    2600 3400
	1    0    0    -1  
$EndComp
Text Label 2800 4200 0    50   ~ 0
ServoSig_Z
Wire Wire Line
	2400 4200 2600 4200
$Comp
L Device:R R3
U 1 1 5ECC521E
P 2200 3650
F 0 "R3" H 2270 3696 50  0000 L CNN
F 1 "4.7k" H 2270 3605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 2130 3650 50  0001 C CNN
F 3 "~" H 2200 3650 50  0001 C CNN
	1    2200 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5ECCD29F
P 2600 3650
F 0 "R5" H 2670 3696 50  0000 L CNN
F 1 "470" H 2670 3605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 2530 3650 50  0001 C CNN
F 3 "~" H 2600 3650 50  0001 C CNN
	1    2600 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5ECCE4A8
P 1800 3650
F 0 "C1" H 1915 3696 50  0000 L CNN
F 1 "0.1u" H 1915 3605 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1838 3500 50  0001 C CNN
F 3 "~" H 1800 3650 50  0001 C CNN
	1    1800 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 3800 2200 3800
Wire Wire Line
	2200 3800 2200 3900
Connection ~ 2200 3800
Wire Wire Line
	2200 3400 2200 3500
Wire Wire Line
	1800 3500 2200 3500
Connection ~ 2200 3500
Wire Wire Line
	2600 3400 2600 3500
Wire Wire Line
	2600 3800 2600 4200
Connection ~ 2600 4200
Wire Wire Line
	2600 4200 2800 4200
$Comp
L power:VS #PWR013
U 1 1 5ECDAD50
P 6500 3400
F 0 "#PWR013" H 6300 3250 50  0001 C CNN
F 1 "VS" H 6515 3573 50  0000 C CNN
F 2 "" H 6500 3400 50  0001 C CNN
F 3 "" H 6500 3400 50  0001 C CNN
	1    6500 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR014
U 1 1 5ECDD970
P 6700 3400
F 0 "#PWR014" H 6700 3250 50  0001 C CNN
F 1 "+5V" H 6715 3573 50  0000 C CNN
F 2 "" H 6700 3400 50  0001 C CNN
F 3 "" H 6700 3400 50  0001 C CNN
	1    6700 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3400 6700 3900
Wire Wire Line
	6700 3900 6800 3900
Wire Wire Line
	6500 3400 6500 4000
Wire Wire Line
	6500 4000 6800 4000
Wire Wire Line
	6800 4100 6700 4100
Wire Wire Line
	6700 4100 6700 4400
Wire Wire Line
	6700 4600 6700 4900
Text Notes 1000 1000 0    100  ~ 0
Status LED
Text Notes 1000 3000 0    100  ~ 0
Level Converter for Servo
$Comp
L Device:Q_NPN_BCE Q2
U 1 1 5ECFD3FE
P 2200 5500
F 0 "Q2" V 2435 5500 50  0000 C CNN
F 1 "C1815" V 2526 5500 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92L_Inline_Wide" H 2400 5600 50  0001 C CNN
F 3 "~" H 2200 5500 50  0001 C CNN
	1    2200 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 5600 1300 5600
$Comp
L power:+5V #PWR02
U 1 1 5ECFD406
P 2200 4800
F 0 "#PWR02" H 2200 4650 50  0001 C CNN
F 1 "+5V" H 2215 4973 50  0000 C CNN
F 2 "" H 2200 4800 50  0001 C CNN
F 3 "" H 2200 4800 50  0001 C CNN
	1    2200 4800
	1    0    0    -1  
$EndComp
$Comp
L power:VS #PWR04
U 1 1 5ECFD40C
P 2600 4800
F 0 "#PWR04" H 2400 4650 50  0001 C CNN
F 1 "VS" H 2615 4973 50  0000 C CNN
F 2 "" H 2600 4800 50  0001 C CNN
F 3 "" H 2600 4800 50  0001 C CNN
	1    2600 4800
	1    0    0    -1  
$EndComp
Text Label 2800 5600 0    50   ~ 0
ServoSig_A
Wire Wire Line
	2400 5600 2600 5600
$Comp
L Device:R R4
U 1 1 5ECFD414
P 2200 5050
F 0 "R4" H 2270 5096 50  0000 L CNN
F 1 "4.7k" H 2270 5005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 2130 5050 50  0001 C CNN
F 3 "~" H 2200 5050 50  0001 C CNN
	1    2200 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5ECFD41A
P 2600 5050
F 0 "R6" H 2670 5096 50  0000 L CNN
F 1 "470" H 2670 5005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 2530 5050 50  0001 C CNN
F 3 "~" H 2600 5050 50  0001 C CNN
	1    2600 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5ECFD420
P 1800 5050
F 0 "C2" H 1915 5096 50  0000 L CNN
F 1 "0.1u" H 1915 5005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1838 4900 50  0001 C CNN
F 3 "~" H 1800 5050 50  0001 C CNN
	1    1800 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 5200 2200 5200
Wire Wire Line
	2200 5200 2200 5300
Connection ~ 2200 5200
Wire Wire Line
	2200 4800 2200 4900
Wire Wire Line
	1800 4900 2200 4900
Connection ~ 2200 4900
Wire Wire Line
	2600 4800 2600 4900
Wire Wire Line
	2600 5200 2600 5600
Connection ~ 2600 5600
Wire Wire Line
	2600 5600 2800 5600
Text Label 1300 4200 0    60   ~ 0
10(**/SS)
Text Label 1300 5600 0    60   ~ 0
11(**/MOSI)
Text Notes 6000 3000 0    100  ~ 0
Servo Power
Text Notes 4000 5150 0    50   ~ 0
<Axis Z>(Upper)\n1:VCC\n3:GND\n5:Sig
Text Notes 4000 5550 0    50   ~ 0
<Axis A>(Lower)\n2:VCC\n4:GND\n6:Sig
Wire Wire Line
	4200 4200 3500 4200
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J1
U 1 1 5EC9E3D9
P 4400 4100
F 0 "J1" H 4450 4417 50  0000 C CNN
F 1 "Servo Conn" H 4450 4326 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Horizontal" H 4400 4100 50  0001 C CNN
F 3 "~" H 4400 4100 50  0001 C CNN
	1    4400 4100
	1    0    0    -1  
$EndComp
Text Label 3500 4200 0    50   ~ 0
ServoSig_Z
$Comp
L power:VS #PWR07
U 1 1 5ED371D4
P 4000 3400
F 0 "#PWR07" H 3800 3250 50  0001 C CNN
F 1 "VS" H 4015 3573 50  0000 C CNN
F 2 "" H 4000 3400 50  0001 C CNN
F 3 "" H 4000 3400 50  0001 C CNN
	1    4000 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4100 4000 4100
Wire Wire Line
	4000 3400 4000 4100
$Comp
L power:VS #PWR012
U 1 1 5ED6F690
P 4900 3400
F 0 "#PWR012" H 4700 3250 50  0001 C CNN
F 1 "VS" H 4915 3573 50  0000 C CNN
F 2 "" H 4900 3400 50  0001 C CNN
F 3 "" H 4900 3400 50  0001 C CNN
	1    4900 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3400 4900 4100
Wire Wire Line
	4700 4100 4900 4100
Text Label 5000 4200 0    50   ~ 0
ServoSig_A
Wire Wire Line
	4700 4200 5000 4200
$Comp
L power:GND #PWR08
U 1 1 5ED79786
P 4100 4400
F 0 "#PWR08" H 4100 4150 50  0001 C CNN
F 1 "GND" H 4105 4227 50  0000 C CNN
F 2 "" H 4100 4400 50  0001 C CNN
F 3 "" H 4100 4400 50  0001 C CNN
	1    4100 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5ED7BA86
P 4800 4400
F 0 "#PWR010" H 4800 4150 50  0001 C CNN
F 1 "GND" H 4805 4227 50  0000 C CNN
F 2 "" H 4800 4400 50  0001 C CNN
F 3 "" H 4800 4400 50  0001 C CNN
	1    4800 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4000 4100 4000
Wire Wire Line
	4100 4000 4100 4400
Wire Wire Line
	4700 4000 4800 4000
Wire Wire Line
	4800 4000 4800 4400
Text Label 8700 5400 0    60   ~ 0
A4(SDA)
Text Label 8700 5300 0    60   ~ 0
A5(SCL)
Wire Wire Line
	9300 5400 8700 5400
Wire Wire Line
	9300 5300 8700 5300
$Comp
L power:GND #PWR019
U 1 1 5ED8C8DF
P 9200 5700
F 0 "#PWR019" H 9200 5450 50  0001 C CNN
F 1 "GND" H 9205 5527 50  0000 C CNN
F 2 "" H 9200 5700 50  0001 C CNN
F 3 "" H 9200 5700 50  0001 C CNN
	1    9200 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 5200 9200 5700
Wire Wire Line
	9200 5200 9300 5200
$Comp
L power:GND #PWR021
U 1 1 5ED91CFF
P 9900 5700
F 0 "#PWR021" H 9900 5450 50  0001 C CNN
F 1 "GND" H 9905 5527 50  0000 C CNN
F 2 "" H 9900 5700 50  0001 C CNN
F 3 "" H 9900 5700 50  0001 C CNN
	1    9900 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 5200 9900 5700
Wire Wire Line
	9900 5200 9800 5200
Text Label 10100 5400 0    60   ~ 0
A4(SDA)
Text Label 10100 5300 0    60   ~ 0
A5(SCL)
Wire Wire Line
	9800 5400 10100 5400
Wire Wire Line
	9800 5300 10100 5300
Text Notes 7000 4550 0    50   ~ 0
Jumper\n 1-2: from Arduino board\n 2-3: from DC Adapter
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5EDB9F43
P 6100 3400
F 0 "#FLG01" H 6100 3475 50  0001 C CNN
F 1 "PWR_FLAG" H 6100 3573 50  0000 C CNN
F 2 "" H 6100 3400 50  0001 C CNN
F 3 "~" H 6100 3400 50  0001 C CNN
	1    6100 3400
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5EDBA7E0
P 7100 3400
F 0 "#FLG02" H 7100 3475 50  0001 C CNN
F 1 "PWR_FLAG" H 7100 3573 50  0000 C CNN
F 2 "" H 7100 3400 50  0001 C CNN
F 3 "~" H 7100 3400 50  0001 C CNN
	1    7100 3400
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5EDBACC5
P 7100 4900
F 0 "#FLG03" H 7100 4975 50  0001 C CNN
F 1 "PWR_FLAG" H 7100 5073 50  0000 C CNN
F 2 "" H 7100 4900 50  0001 C CNN
F 3 "~" H 7100 4900 50  0001 C CNN
	1    7100 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3400 6500 3400
Connection ~ 6500 3400
Wire Wire Line
	6700 3400 7100 3400
Connection ~ 6700 3400
Wire Wire Line
	6700 4900 7100 4900
Connection ~ 6700 4900
Wire Wire Line
	6700 4900 6700 5000
NoConn ~ 9400 2800
NoConn ~ 9400 2700
NoConn ~ 9400 2600
NoConn ~ 9400 2500
NoConn ~ 9400 2300
NoConn ~ 9400 1800
NoConn ~ 9400 1700
NoConn ~ 10200 1400
NoConn ~ 10200 1600
NoConn ~ 10200 1700
NoConn ~ 10200 2500
NoConn ~ 10200 2600
NoConn ~ 10200 2700
NoConn ~ 10200 2800
NoConn ~ 10200 2900
NoConn ~ 10200 3000
$Comp
L power:+3.3V #PWR016
U 1 1 5EDFD1A8
P 9000 4000
F 0 "#PWR016" H 9000 3850 50  0001 C CNN
F 1 "+3.3V" H 9015 4173 50  0000 C CNN
F 2 "" H 9000 4000 50  0001 C CNN
F 3 "" H 9000 4000 50  0001 C CNN
	1    9000 4000
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG04
U 1 1 5EDFE63A
P 9400 4000
F 0 "#FLG04" H 9400 4075 50  0001 C CNN
F 1 "PWR_FLAG" H 9400 4173 50  0000 C CNN
F 2 "" H 9400 4000 50  0001 C CNN
F 3 "~" H 9400 4000 50  0001 C CNN
	1    9400 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 4000 9400 4000
Text Notes 8500 4800 0    100  ~ 0
I2C Bus (Future expansion)
$Comp
L Switch:SW_Push SW1
U 1 1 5EE96B03
P 4300 1500
F 0 "SW1" H 4300 1785 50  0000 C CNN
F 1 "ACT" H 4300 1694 50  0000 C CNN
F 2 "_my_kicad_symbol:TactileSwitch_TS-0606" H 4300 1700 50  0001 C CNN
F 3 "~" H 4300 1700 50  0001 C CNN
	1    4300 1500
	1    0    0    -1  
$EndComp
Text Notes 4000 1000 0    100  ~ 0
Pressing buttons
$Comp
L Device:R R7
U 1 1 5EEB04E3
P 4600 2250
F 0 "R7" H 4670 2296 50  0000 L CNN
F 1 "10k" H 4670 2205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4530 2250 50  0001 C CNN
F 3 "~" H 4600 2250 50  0001 C CNN
	1    4600 2250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5EEB3EB7
P 4300 2000
F 0 "SW2" H 4300 2285 50  0000 C CNN
F 1 "RET" H 4300 2194 50  0000 C CNN
F 2 "_my_kicad_symbol:TactileSwitch_TS-0606" H 4300 2200 50  0001 C CNN
F 3 "~" H 4300 2200 50  0001 C CNN
	1    4300 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5EEBDAB3
P 4900 2250
F 0 "R8" H 4970 2296 50  0000 L CNN
F 1 "10k" H 4970 2205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4830 2250 50  0001 C CNN
F 3 "~" H 4900 2250 50  0001 C CNN
	1    4900 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 5EEC439F
P 4000 1400
F 0 "#PWR06" H 4000 1250 50  0001 C CNN
F 1 "+5V" H 4015 1573 50  0000 C CNN
F 2 "" H 4000 1400 50  0001 C CNN
F 3 "" H 4000 1400 50  0001 C CNN
	1    4000 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1400 4000 1500
Wire Wire Line
	4100 1500 4000 1500
Connection ~ 4000 1500
Wire Wire Line
	4000 1500 4000 2000
Wire Wire Line
	4000 2000 4100 2000
Wire Wire Line
	4500 2000 4900 2000
Wire Wire Line
	4500 1500 4600 1500
Wire Wire Line
	4600 2100 4600 1500
Connection ~ 4600 1500
Wire Wire Line
	4600 1500 5100 1500
Wire Wire Line
	4900 2100 4900 2000
Connection ~ 4900 2000
Wire Wire Line
	4900 2000 5100 2000
Text Label 5100 2000 0    60   ~ 0
8
Text Label 5100 1500 0    60   ~ 0
9(**)
$Comp
L power:GND #PWR09
U 1 1 5EF14A5F
P 4600 2500
F 0 "#PWR09" H 4600 2250 50  0001 C CNN
F 1 "GND" H 4605 2327 50  0000 C CNN
F 2 "" H 4600 2500 50  0001 C CNN
F 3 "" H 4600 2500 50  0001 C CNN
	1    4600 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5EF18540
P 4900 2500
F 0 "#PWR011" H 4900 2250 50  0001 C CNN
F 1 "GND" H 4905 2327 50  0000 C CNN
F 2 "" H 4900 2500 50  0001 C CNN
F 3 "" H 4900 2500 50  0001 C CNN
	1    4900 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2400 4600 2500
Wire Wire Line
	4900 2400 4900 2500
$Comp
L Mechanical:MountingHole H1
U 1 1 5EF26934
P 5000 7000
F 0 "H1" H 5100 7046 50  0000 L CNN
F 1 "MountingHole" H 5100 6955 50  0000 L CNN
F 2 "Symbol:OSHW-Logo2_7.3x6mm_SilkScreen" H 5000 7000 50  0001 C CNN
F 3 "~" H 5000 7000 50  0001 C CNN
	1    5000 7000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5EF278EE
P 5000 7200
F 0 "H2" H 5100 7246 50  0000 L CNN
F 1 "MountingHole" H 5100 7155 50  0000 L CNN
F 2 "_my_kicad_symbol:CC-BY-SA" H 5000 7200 50  0001 C CNN
F 3 "~" H 5000 7200 50  0001 C CNN
	1    5000 7200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Barrel_Jack_Switch J2
U 1 1 5EF304E8
P 6400 4500
F 0 "J2" H 6457 4817 50  0000 C CNN
F 1 "Servo Pow" H 6457 4726 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 6450 4460 50  0001 C CNN
F 3 "~" H 6450 4460 50  0001 C CNN
	1    6400 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 4500 6700 4600
Connection ~ 6700 4600
$Comp
L Device:R R9
U 1 1 5EF91437
P 7800 3550
F 0 "R9" H 7730 3504 50  0000 R CNN
F 1 "4.7k" H 7730 3595 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7730 3550 50  0001 C CNN
F 3 "~" H 7800 3550 50  0001 C CNN
	1    7800 3550
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 5EF9143D
P 7800 3850
F 0 "D3" V 7839 3732 50  0000 R CNN
F 1 "LED Red" V 7748 3732 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 7800 3850 50  0001 C CNN
F 3 "~" H 7800 3850 50  0001 C CNN
	1    7800 3850
	0    -1   -1   0   
$EndComp
$Comp
L power:VS #PWR0101
U 1 1 5EF996B8
P 7800 3400
F 0 "#PWR0101" H 7600 3250 50  0001 C CNN
F 1 "VS" H 7815 3573 50  0000 C CNN
F 2 "" H 7800 3400 50  0001 C CNN
F 3 "" H 7800 3400 50  0001 C CNN
	1    7800 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5EFAB0A6
P 7800 4100
F 0 "#PWR0102" H 7800 3850 50  0001 C CNN
F 1 "GND" H 7805 3927 50  0000 C CNN
F 2 "" H 7800 4100 50  0001 C CNN
F 3 "" H 7800 4100 50  0001 C CNN
	1    7800 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 4000 7800 4100
Text Label 6700 4400 0    50   ~ 0
SvPow
$Comp
L Connector:TestPoint TP1
U 1 1 5EFE568D
P 6200 6000
F 0 "TP1" H 6258 6118 50  0000 L CNN
F 1 "TestPoint" H 6258 6027 50  0000 L CNN
F 2 "TestPoint:TestPoint_Bridge_Pitch2.54mm_Drill0.7mm" H 6400 6000 50  0001 C CNN
F 3 "~" H 6400 6000 50  0001 C CNN
	1    6200 6000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR023
U 1 1 5EFEC601
P 6000 6000
F 0 "#PWR023" H 6000 5850 50  0001 C CNN
F 1 "+5V" H 6015 6173 50  0000 C CNN
F 2 "" H 6000 6000 50  0001 C CNN
F 3 "" H 6000 6000 50  0001 C CNN
	1    6000 6000
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 5EFF5550
P 6200 6300
F 0 "TP2" H 6258 6418 50  0000 L CNN
F 1 "TestPoint" H 6258 6327 50  0000 L CNN
F 2 "TestPoint:TestPoint_Bridge_Pitch2.54mm_Drill0.7mm" H 6400 6300 50  0001 C CNN
F 3 "~" H 6400 6300 50  0001 C CNN
	1    6200 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR024
U 1 1 5EFFD232
P 6000 6300
F 0 "#PWR024" H 6000 6150 50  0001 C CNN
F 1 "+3.3V" H 6015 6473 50  0000 C CNN
F 2 "" H 6000 6300 50  0001 C CNN
F 3 "" H 6000 6300 50  0001 C CNN
	1    6000 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 5F0010FF
P 6000 6600
F 0 "#PWR025" H 6000 6350 50  0001 C CNN
F 1 "GND" H 6005 6427 50  0000 C CNN
F 2 "" H 6000 6600 50  0001 C CNN
F 3 "" H 6000 6600 50  0001 C CNN
	1    6000 6600
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 5F004E11
P 6200 6600
F 0 "TP3" H 6258 6718 50  0000 L CNN
F 1 "TestPoint" H 6258 6627 50  0000 L CNN
F 2 "TestPoint:TestPoint_Bridge_Pitch2.54mm_Drill0.7mm" H 6400 6600 50  0001 C CNN
F 3 "~" H 6400 6600 50  0001 C CNN
	1    6200 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 6000 6200 6000
Wire Wire Line
	6000 6300 6200 6300
Wire Wire Line
	6000 6600 6200 6600
$Comp
L Connector:TestPoint TP4
U 1 1 5F01D946
P 6200 6900
F 0 "TP4" H 6258 7018 50  0000 L CNN
F 1 "TestPoint" H 6258 6927 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_D1.5mm_Drill0.7mm" H 6400 6900 50  0001 C CNN
F 3 "~" H 6400 6900 50  0001 C CNN
	1    6200 6900
	1    0    0    -1  
$EndComp
NoConn ~ 6200 6900
$EndSCHEMATC
