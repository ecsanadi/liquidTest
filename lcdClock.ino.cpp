#include <Arduino.h>
#line 1 "/home/ecsanadi/Projects/liquidTest/lcdClock/lcdClock.ino"
#line 1 "/home/ecsanadi/Projects/liquidTest/lcdClock/lcdClock.ino"

#include <Wire.h>  // Comes with Arduino IDE
#include <LiquidCrystal_I2C.h>

int buttonPlus = 7;
int buttonMinus = 8;
int buttonSet = 9;

LiquidCrystal_I2C lcd(0x27, 2, 1, 0, 4, 5, 6, 7, 3, POSITIVE);  // Set the LCD I2C address (black pcb)

#line 11 "/home/ecsanadi/Projects/liquidTest/lcdClock/lcdClock.ino"
void setup();
#line 37 "/home/ecsanadi/Projects/liquidTest/lcdClock/lcdClock.ino"
void loop();
#line 11 "/home/ecsanadi/Projects/liquidTest/lcdClock/lcdClock.ino"
int led1 = LED_BUILTIN; // put your setup code here, to run once void setup() { pinMode(led1 , OUTPUT); }
void setup()  
{
//  Serial.begin(9600);  // Used to type in characters
//  lcd.begin(16,2);   // initialize the lcd for 16 chars 2 lines, turn on backlight
//  Wire.begin();
//  
//  
//  // Starting animation (blink backlight)
//  lcd.backlight(); 
//
//  // Starting animation (Hello)
//  lcd.setCursor(0,0); //Start at character 4 on line 0
//  lcd.print("Hello, Eniko!");
//  delay(1000);
//  lcd.setCursor(0,1);
//  lcd.print("Have a nice day!");
//  delay(8000);    
//
//  // Setup buttons
//  pinMode(buttonPlus, INPUT);
//  pinMode(buttonMinus, INPUT);
//  pinMode(buttonSet, INPUT);
pinMode(led1 , OUTPUT); 
}/*--(end setup )---*/



void loop()   
{
//  lcd.setCursor(0,0);
//  lcd.write("JAN ");
//  delay(200);
  digitalWrite(led1 , HIGH); delay(2000); digitalWrite(led1 , LOW); delay(2000);
}

