#include <Arduino.h>

#include <Servo.h>
#include <AccelStepper.h>

#define SERVO_PIN_1 A3
#define SERVO_PIN_2 A4

#define STEPPER_PIN_SLP A2
#define STEPPER_PIN_DIR A0
#define STEPPER_PIN_STEP A1
#define ENDSTOP_PIN A5

#define STEPPER_SPEED 50000

const uint8_t switchPinMap[4] = {2, 3, 4, 5};
const long positionMap[4] = {5300, 6900, 8500, 10100};

Servo servo1;
Servo servo2;

AccelStepper stepper(1, STEPPER_PIN_STEP, STEPPER_PIN_DIR);

void home()
{
  stepper.setSpeed(-STEPPER_SPEED);
  while (digitalRead(ENDSTOP_PIN) == HIGH)
  {
    stepper.runSpeed();
  }
  stepper.setSpeed(0);
  stepper.setCurrentPosition(0);
  Serial.println("Homed!");
}

void armUp()
{
  servo1.write(30);
  servo2.write(45);
  delay(100);
} // raise arm to home position

void flipSwitch(int distance)
{
  stepper.runToNewPosition(distance);
  servo1.write(75);
  servo2.write(45);
  delay(200);
  armUp();
}

void setup()
{

  Serial.begin(115200);

  servo1.attach(SERVO_PIN_1);
  servo2.attach(SERVO_PIN_2);

  stepper.setMaxSpeed(10000);
  stepper.setAcceleration(10000);

  pinMode(ENDSTOP_PIN, INPUT);
  pinMode(STEPPER_PIN_SLP, OUTPUT);
  pinMode(switchPinMap[0], INPUT_PULLUP);
  pinMode(switchPinMap[1], INPUT_PULLUP);
  pinMode(switchPinMap[2], INPUT_PULLUP);
  pinMode(switchPinMap[3], INPUT_PULLUP);

  digitalWrite(STEPPER_PIN_SLP, HIGH);

  armUp();

  home();
}

void loop()
{

  for (size_t i = 0; i < 4; i++)
  {
    if (digitalRead(switchPinMap[i]) == HIGH)
    {
      flipSwitch(positionMap[i]);
    }
  }
}