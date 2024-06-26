#ifndef Network_H_
#define Network_H_

#include <ESP8266WiFi.h>
#include <Firebase_ESP_Client.h>


class Network{
  private:
    FirebaseData fbdo;
    FirebaseAuth auth;
    FirebaseConfig config;

  public:
    Network();
    void initWiFi();
    void firebaseInit();
    void firestoreDataUpdate(String coPPM, String lightPercent, unsigned long timestamp);
};

#endif