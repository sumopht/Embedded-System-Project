#include <Arduino.h>
#include <ESP8266WiFi.h>
#include "Network.h"

#include <NTPClient.h>
#include <WiFiUdp.h>

#include <SoftwareSerial.h>
#include <string>

Network *network;
unsigned long dataMillis = 0;
unsigned long updateMillis = 0;
int last1 = 0;
int last2 = 0;

WiFiUDP ntpUp;
NTPClient timeClient(ntpUp, "pool.ntp.org");

EspSoftwareSerial::UART DataSerial;

String Data[2]={"0","0"};

int size(String str) {
  int size = 0;
  size_t Size = strlen(str.c_str());
  return Size;
}

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  DataSerial.begin(115200, EspSoftwareSerial::SWSERIAL_8N1, D7, D8, false, 100, 100);
  //Serial.println("hello");
  initNetwork();
  
}

void loop() {
  // Serial.println("Connection status: " + WiFi.status());
  // put your main code here, to run repeatedly:
  //Serial.println("hello2");
  if (millis()- updateMillis > 1000 || updateMillis == 0){
    updateMillis = millis();
    Update_Data();
  }
  //Upload to fire store every 10 minute
  if (Firebase.ready() && (millis() - dataMillis > 5000 || dataMillis == 0)){ // change to 120000
    dataMillis = millis();
    timeClient.update();
    unsigned long now = timeClient.getEpochTime();
    network->firestoreDataUpdate(Data[0], Data[1], now);
  }
}

void initNetwork(){
  network = new Network();
  network->initWiFi();
  network->firebaseInit();
}

//Send from nucleo-f411re via UART1 in format "coPPM|lightPercent"
void Update_Data(){
  
  if(DataSerial.available() > 0){
    Serial.println("Data updated");
    Data[0]="";
    Data[1]="";
    uint8_t state=0;
    while(DataSerial.available()){
      char c = DataSerial.read();
      if(c=='|') state++;
      else {
        Serial.println("Data updated2");
        Data[state]+=c;
      }
    }
    //Uncomment those lines below to check the value of data after update
    if (size(Data[0]) != 3) {
      char buffer[4];
      Data[0] = itoa((last1 + last2) / 2,buffer,10);
    }
    Serial.println(Data[0]);
    Serial.println(Data[1]);
    last1 = last2;
    last2 = atoi(Data[0].c_str());
  }
}
