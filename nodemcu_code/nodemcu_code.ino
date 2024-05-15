#include <SoftwareSerial.h>
EspSoftwareSerial::UART DataSerial;

String Data[4]={"0","0"};

void setup() {
  Serial.begin(115200);
  // DataSerial.begin(115200, EspSoftwareSerial::SWSERIAL_8N1, D7, D8, false, 95, 11);
  DataSerial.begin(115200, EspSoftwareSerial::SWSERIAL_8N1, D7, D8, false, 100, 100);
}

void loop() {
  Update_Data();
  Serial.println("LDR: " + Data[0] + "\tMQ-7: " + Data[1]);
  delay(500);
}

void Update_Data(){
  if(DataSerial.available() > 0){
    Data[0]="";
    Data[1]="";
    uint8_t state=0;
    while(DataSerial.available()){
      char c = DataSerial.read();
      if(c=='|') {
        // Serial.println(Data[state]);
        state++;
      }
      else Data[state]+=c;
    }
    // Debug
    // Serial.println("test");
    // Serial.println(Data[0]);
    // Serial.println(Data[1]);
  }
}