#include "Network.h"
#include <addons/TokenHelper.h>

/*Define these value match to yours*/
#define WIFI_SSID "SWP_MET14_2.4G"
#define WIFI_PASSWORD "nitimet14"

#define API_KEY "AIzaSyCg0ztemq1zeGhu2GA3MiZHQjHws4n7qUo"
#define FIREBASE_PROJECT_ID "embedsyslabproj"
#define USER_EMAIL "6430376521@student.chula.ac.th" // you can add your email on firebase authentication
#define USER_PASSWORD "TesterPa$$word" // Not your email password, you can set on firebase authentication

static Network *instance = NULL;

Network::Network(){
  instance = this;
}

void Network::initWiFi(){
  //WiFi.disconnect();
  // Serial.println("1");
  WiFi.begin(WIFI_SSID, WIFI_PASSWORD);
  // Serial.println("2");
  Serial.println("Connecting to Wi-Fi");
  // Serial.println("3");
  unsigned long ms = millis();
  // Serial.println("4");
  while (WiFi.status() != WL_CONNECTED)
  {
    Serial.println("h");
    delay(500);
  }
  // while (1) {
  //   Serial.println("hello");
  //   delay(500);
  // }
  Serial.println();
  Serial.print("Connected with IP: ");
  Serial.println(WiFi.localIP());
  Serial.println();
}

void Network::firebaseInit(){
  Serial.printf("Firebase Client v%s\n\n", FIREBASE_CLIENT_VERSION);

  /* Assign the api key (required) */
  config.api_key = API_KEY;
  //Serial.println(48);
  /* Assign the user sign in credentials */
  auth.user.email = USER_EMAIL;
  auth.user.password = USER_PASSWORD;
  //Serial.println(52);
  /* Assign the callback function for the long running token generation task */
  config.token_status_callback = tokenStatusCallback; // see addons/TokenHelper.h
  //Serial.println(55);
  // In ESP8266 required for BearSSL rx/tx buffer for large data handle, increase Rx size as needed.
  fbdo.setBSSLBufferSize(2048 /* Rx buffer size in bytes from 512 - 16384 */, 2048 /* Tx buffer size in bytes from 512 - 16384 */);
  //Serial.println(58);
  // Limit the size of response payload to be collected in FirebaseData
  fbdo.setResponseSize(2048);
  //Serial.println(61);
  Firebase.begin(&config, &auth);

  // Comment or pass false value when WiFi reconnection will control by your code or third party library
  Firebase.reconnectWiFi(true);
  //Firebase.reconnectNetwork(true);
  //Serial.println(66);
}

void Network::firestoreDataUpdate(String coPPM, String lightPercent, unsigned long timestamp){
  if(WiFi.status() == WL_CONNECTED && Firebase.ready()){
    String documentPath = "data/";
    documentPath += String(timestamp);

    FirebaseJson content;

    content.set("fields/coPPM/integerValue", coPPM.c_str());
    content.set("fields/lightPercent/integerValue", lightPercent.c_str());
    content.set("fields/timestamp/integerValue", String(timestamp).c_str());
    //Serial.println(79);
    if(Firebase.Firestore.patchDocument(&fbdo, FIREBASE_PROJECT_ID, "", documentPath.c_str(), content.raw(), "coPPM,lightPercent,timestamp")){
      Serial.printf("ok\n%s\n\n", fbdo.payload().c_str());
      //Serial.println(82);
      return;
    }else{
      Serial.println(fbdo.errorReason());
      //Serial.println(86);
    }

    if(Firebase.Firestore.createDocument(&fbdo, FIREBASE_PROJECT_ID, "", documentPath.c_str(), content.raw())){
      Serial.printf("ok\n%s\n\n", fbdo.payload().c_str());
      //.println(91);
      return;
    }else{
      Serial.println(fbdo.errorReason());
      //Serial.println(95);
    }
  }
}