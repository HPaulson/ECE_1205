// Use this template for adding additional sensors
// see Payload_BME280_MPU6050_XS_Extended for an example

// put your library includes here
#include "SparkFun_SGP40_Arduino_Library.h"
#include "Arduino.h"
#include <Wire.h>

// put your globals here
SGP40 mySensor;

// put your setup code here
void payload_setup() {
  Serial.begin(115200);
  Serial.println("Starting new sensor!");
  Wire.begin();
  if (mySensor.begin() == true) {
    Serial.println(F("SGP40 detected."));
  }
}

// put your loop code here
// Very Important: only use print, not println!!
void payload_loop() {

  int voc = mySensor.getVOCindex(0, 0);
  Serial1.print(" VOC ");  // send sensor data over serial to Pi Zero
  Serial1.print(voc);
  
  Serial.print(" VOC ");   // send sensor data over serial monitor for testing
  Serial.print(voc);
  
}
