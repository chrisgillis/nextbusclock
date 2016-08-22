//pre mem opt: 1232b available
// post mem opt: 1430b
#include <SoftwareSerial.h>

#define SSID "HOME-9DBD"
#define PASS "BE862EA2CA5EBCE4"

SoftwareSerial dbgSerial(5, 6); // RX, TX

int minsTilNextBus = 99;

int sr1Data = 11;
int sr1Clock = 12;
int sr1Latch = 8;

byte nums[10];
byte mask[8];
byte needToCheckBus = 1;
byte digit1 = 9;
byte digit2 = 9;

unsigned long lastBusCheckMillis = 0;

  boolean connectWiFi()
  {
    Serial.println(F("AT+CWMODE=1"));
    dbgSerial.println(F("AT+CWJAP=\"HOME-9DBD\",\"BE862EA2CA5EBCE4\""));
    Serial.println(F("AT+CWJAP=\"HOME-9DBD\",\"BE862EA2CA5EBCE4\""));
    delay(2000);
    if(Serial.find("OK")) {
      dbgSerial.println(F("OK, Connected to WiFi."));
      return true;
    } else {
      dbgSerial.println(F("Can not connect to the WiFi."));
      return false;
    }
  }
   
   void setup()
   {
     pinMode(sr1Latch, OUTPUT);
     pinMode(sr1Clock, OUTPUT);
     pinMode(sr1Data, OUTPUT);

     // Clear the shift registers
     digitalWrite(sr1Latch, LOW);
     shiftOut(sr1Data, sr1Clock, MSBFIRST, 0b00000000);
     shiftOut(sr1Data, sr1Clock, MSBFIRST, 0b00000000);
     digitalWrite(sr1Latch, HIGH);
     
     nums[0] = 0b11111101;
     nums[1] = 0b01000100;
     nums[2] = 0b01111010;
     nums[3] = 0b01101110;
     nums[4] = 0b01000111;
     nums[5] = 0b00101111;
     nums[6] = 0b10111111;
     nums[7] = 0b11100100;
     nums[8] = 0b11111111;
     nums[9] = 0b11101111;

     mask[0] = 0b00000001;
     mask[1] = 0b00000010;
     mask[2] = 0b00000100;
     mask[3] = 0b00001000;
     mask[4] = 0b00010000;
     mask[5] = 0b00100000;
     mask[6] = 0b01000000;
     mask[7] = 0b10000000;

     delay(2000); // give the wifi chip a bit to boot
    
     // Open serial communications and wait for port to open:
     Serial.begin(115200);
     Serial.setTimeout(5000);
     dbgSerial.begin(115200); //can't be faster than 19200 for softserial
     dbgSerial.println(F("ESP8266 Demo"));

     //test if the module is ready
     Serial.println(F("AT+RST"));
       
     if(Serial.find("ready")) {
       dbgSerial.println(F("Module is ready"));
     } else {
       dbgSerial.println(F("Module have no response."));
       while(1);
     }
     
     delay(1000);
     
     //connect to the wifi
     boolean connected=false;
     for(int i=0;i<5;i++)
     {
       if(connectWiFi())
       {
         connected = true;
         break;
       }
     }
     
     if (!connected) {
       while(1);
     }
     
     delay(1000);
     
     //set the single connection mode
     Serial.println("AT+CIPMUX=0");
   }
   
   void loop()
   { 
     Serial.println(F("AT+CIPSTART=\"TCP\",\"162.208.48.154\",80"));
     dbgSerial.println(F("AT+CIPSTART=\"TCP\",\"162.208.48.154\",80"));
     if(Serial.find("Error")) return;
     String cmd = "GET /bus.php HTTP/1.0\r\n\r\n";
     Serial.print("AT+CIPSEND=");
     Serial.println(cmd.length());
     if(Serial.find(">")) {
       dbgSerial.print(">");
     } else {
       Serial.println(F("AT+CIPCLOSE"));
       dbgSerial.println(F("connect timeout"));
       delay(1000);
       return;
     }
       
     Serial.print(cmd);
       
     int tmr = 0;
     String rstResp = "";

     while(tmr<100) {
       if(Serial.available()) {
         char c = Serial.read();
         rstResp += c;
         tmr=0;
       } else {
         ++tmr;
         delay(10);
       }
     }
       
     int i = rstResp.indexOf("!");
     dbgSerial.print(F("MINUTESINDEX="));
     dbgSerial.println(i);
       
     int attempts = 0;
     if(i > 0) {
       String minutes = "";
       i = i + 1;
       for( ; rstResp[i] != '*'; i++) {
         if (attempts > 4) {
           break;
         }
         minutes += rstResp[i]; 
         attempts++;
       }

      dbgSerial.print(F("MINUTES_STR="));
      dbgSerial.println(minutes);

      int minutesInt = minutes.toInt();
      dbgSerial.print(F("MINUTES_INT="));
      dbgSerial.println(minutesInt);
        
      if(minutesInt != 0) {
        if(minutesInt >= 99) {
          minsTilNextBus = 99;
        } else {
          minsTilNextBus = minutesInt;
        }
      }

      dbgSerial.print(F("MINUTES_NEXT_BUS="));
      dbgSerial.println(minsTilNextBus);
      rstResp = "";

      byte nextBusMins = minsTilNextBus;
      byte digitCounter = 0;
      while (digitCounter <= 1) {
        byte digit = nextBusMins % 10;
        nextBusMins = nextBusMins / 10;

        if (digitCounter == 0) {
          digit2 = digit;
        }

        if (digitCounter == 1) {
          digit1 = digit;
        }
        
        digitCounter++;
      }
    } 

    lastBusCheckMillis = millis();
    while(millis() - lastBusCheckMillis < 10000) {
      for (byte j = 0; j <= 7; j++) {
        digitalWrite(sr1Latch, LOW);
        shiftOut(sr1Data, sr1Clock, MSBFIRST, nums[digit2] & mask[j]);
        shiftOut(sr1Data, sr1Clock, MSBFIRST, nums[digit1] & mask[j]);
        digitalWrite(sr1Latch, HIGH);
      }
    } 
  }
