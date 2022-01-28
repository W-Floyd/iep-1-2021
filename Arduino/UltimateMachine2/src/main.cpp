#include <Arduino.h>

#include <Servo.h>
#include <AccelStepper.h>

#define SERVO_1_PIN 3
#define SERVO_2_PIN 5

#define ENDSTOP_PIN 6

#define STEPPER_1_PIN_DIR 2
#define STEPPER_1_PIN_STEP 4

#define STEPPER_2_PIN_DIR 7
#define STEPPER_2_PIN_STEP 8

#define STEPPER_3_PIN_DIR A7
#define STEPPER_3_PIN_STEP A6

#define STEPPER_SPEED 50000
#define STEPPER_ACCEL 50000

// CHANGE ME TO FIT MACHINE
#define SPACING_START 1350 // Distance to first switch
#define SPACING_WIDTH 1540 // Distance between switches

const uint8_t switchPinMap[4] = {A0, A1, A2, A3};
const long positionMap[4] = {SPACING_START, SPACING_START + SPACING_WIDTH * 1, SPACING_START + SPACING_WIDTH * 2, SPACING_START + SPACING_WIDTH * 3};

Servo servo1;
Servo servo2;

AccelStepper stepper_1(1, STEPPER_1_PIN_STEP, STEPPER_1_PIN_DIR);

void home()
{
  stepper_1.setSpeed(-STEPPER_SPEED);
  while (digitalRead(ENDSTOP_PIN) == HIGH)
  {
    stepper_1.runSpeed();
  }
  stepper_1.setSpeed(0);
  stepper_1.setCurrentPosition(0);
  Serial.println("Homed!");
}

void armUp()
{
  // CHANGE ME TO FIT MACHINE
  servo1.write(30);
  servo2.write(150);
  delay(100);
} // raise arm to home position

void flipSwitch(int distance, int switchNum)
{
  stepper_1.runToNewPosition(distance);
  // CHANGE ME TO FIT MACHINE
  servo1.write(100);
  servo2.write(130);
  delay(200);
  armUp();
}

void setup()
{

  Serial.begin(115200);

  servo1.attach(SERVO_1_PIN);
  servo2.attach(SERVO_2_PIN);

  stepper_1.setMaxSpeed(STEPPER_SPEED);
  stepper_1.setAcceleration(STEPPER_ACCEL);

  pinMode(ENDSTOP_PIN, INPUT);
  pinMode(switchPinMap[0], INPUT_PULLUP);
  pinMode(switchPinMap[1], INPUT_PULLUP);
  pinMode(switchPinMap[2], INPUT_PULLUP);
  pinMode(switchPinMap[3], INPUT_PULLUP);

  armUp();

  home();
}

void loop()
{

  for (size_t i = 0; i < 4; i++)
  {
    // CHANGEME if switches are soldered upside down
    while (digitalRead(switchPinMap[i]) == LOW)
    {
      flipSwitch(positionMap[i], i);
    }
  }
}