/*                        __                      __                    __
          __       __     \_\  __          __     \_\  __          __   \_\  __   __       __
          \_\     /_/        \/_/         /_/        \/_/         /_/      \/_/   \_\     /_/
        .-.  \.-./  .-.   .-./  .-.   .-./  .-.   .-./  .-.   .-./  .-.   .-\   .-.  \.-./  .-.
       //-\\_//-\\_//-\\_//-\\_//-\\_//-\\_//-\\_//-\\_//-\\_//-\\_// \\_//-\\_//-\\_//-\\_//-\\
     __(   '-'   '-'\  '-'   '-'  /'-'   '-'\  '-'   '-'  /'-'   '-'\__'-'   '-'__/'-'        __('-'\__
    /_/))            \__       __/\          \__       __/\          \_\       /_/           /_/))   \_\
 ___\_//              \_\     /_/  \__        \_\     /_/  \__                            ___\_//   
/_/  ((                             \_\                     \_\                          /_/  ((    
      )) __                                                                                   )) __
__   // /_/                                                                             __   // /_/
\_\_((_/___                                                                             \_\_((_/___
     ))  \_\  This is the code for the tea making robot.                                     ))  \_\
     \\                                                                                      \\
      )) _    It is terrible in basically every way, except for the fact that                 )) _
__   // /_/   it exists and works, which counts for a lot actually.                     __   // /_/
\_\_((                                                                                  \_\_((
     \\       It tells the time of day by being hard coded to start at a certain time        \\
      )) __   of day and then counting seconds.                                               )) __
__   // /_/                                                                              __   // /_/
\_\_((_/___   Adding any kind of interface would be good, but honestly it should be      \_\_((_/___
     ))  \_\  running on a less overpowered board too. It's on a teensy 2.0 right now.        ))  \_
     \\                                                                                       \\
      )) __   Yeah...                                                                          )) _
__   // /_/   GPLv2 Tristan Trim                                                         __   // /_/
\_\_((_/                                                                                 \_\_((_/
     \\    __                                                                                 \\
      ))__/_/                                                                                  )) __
     //                   __                      __                    _                     // /_/
    ((    __       __     \_\  __          __     \_\  __          __   \_\  __   __       __(( /
     \\   \_\     /_/        \/_/         /_/        \/_/         /_/      \/_/   \_\     /_/ \\
      \\.-.  \.-./  .-.   .-./  .-.   .-./  .-.   .-./  .-.   .-./  .-.   .-\   .-.  \.-./  .-))
       \_-\\_//-\\_//-\\_//-\\_//-\\_//-\\_//-\\_//-\\_//-\\_//-\\_// \\_//-\\_//-\\_//-\\_//-_/
           '-'   '-'\  '-'   '-'  /'-'   '-'\  '-'   '-'  /'-'   '-'\__'-'   '-'__/'-'               
                     \__       __/\          \__       __/\          \_\       /_/                   
                      \_\     /_/  \__        \_\     /_/  \__                                      
                                    \_\                     \_\
*/

// Clock is set when booted up. This is kludgy but worky.
// Actual clock and interface to such clock would be much better,
// but more work to implement.
int current_time = (21 * 60 * 60) + (0 * 60) + (0);
// format is '(hour) + (min) + (sec)' in case that wasn't obvious

// User defined vars! Tea time is when the tea should be made for.
int tea_time = (6*60*60)+(0*60)+(0);
int boil_duration = (10*60)+(0); // Never boil for time in the order of hours
int steep_duration = (7*60)+(0); // Steeping in the order of hours would be good.
                                 // Maybe I'll add an 'indefinite mode'

// demo mode is for showing off the robot, it basically goes
// through the tea making process very quickly.
int demo_boil_duration = 4;
int demo_steep_duration = 4;

// Internal use only. Hands off!
int _tea_time = tea_time;
int _boil_duration = boil_duration;
int _steep_duration = steep_duration; 

// There are 86400 seconds in a day, fyi.
int _day = 86400;


// PINOUTS!
int BUTTON = 0;
int INDICATION_LIGHT = 11;
int PSU_OFF = 1; // HIGH means off, LOW mean on. Turn it off when not in use to save power.
int BOILER = 3;  // HIGH is off. Is this a theme? No, it's a 3906.
int MOTOR_UP = 4;
int MOTOR_DOWN = 5; // HIGH runs the motor in the given direction.
                    // Don't turn both HIGH at the same time LEST CIRCUITS SHORT!

// The setup function runs once when you press reset or power the board
void setup() {
  pinMode(BUTTON, INPUT_PULLUP);
  pinMode(INDICATION_LIGHT, OUTPUT);
  pinMode(PSU_OFF, OUTPUT);
  pinMode(BOILER, OUTPUT);
  pinMode(MOTOR_UP, OUTPUT);
  pinMode(MOTOR_DOWN, OUTPUT);

  digitalWrite(PSU_OFF, HIGH);
  digitalWrite(BOILER, HIGH);

  digitalWrite(INDICATION_LIGHT, HIGH);
  delay(1000);
  digitalWrite(INDICATION_LIGHT, LOW);
}

// the loop function runs over and over again forever
void loop() {
  while (current_time < _day) {
    // executed once a second!
    delay(1000); // maybe calibrate this based on how long the code takes? or just get a clock module? Lol

//## start a demo if the user's into it. ######
    if (!digitalRead(BUTTON)){
      digitalWrite(INDICATION_LIGHT, HIGH);
      _boil_duration = demo_boil_duration;
      _steep_duration = demo_steep_duration
      _tea_time = (current_time + demo_boil_duration + demo_steep_duration + 4)%_day;
    }                                // %_day in case midnight is between now and tea time.

//## boiler on! ##########
    else if (current_time == (_day + _tea_time - _boil_duration - _steep_duration)%_day) {
      digitalWrite(PSU_OFF, LOW);               // + _day and % _day cause we're subtracting durations now.
      digitalWrite(INDICATION_LIGHT, LOW);
      digitalWrite(BOILER, LOW);
    }

//## boiler off! Tea in! ##########
    else if (current_time == (_day + _tea_time - _steep_duration)%_day) {
      digitalWrite(BOILER, HIGH);
      for (int i = 0; i<32; i++) {
        digitalWrite(MOTOR_DOWN, HIGH);
        delay(300/16);
        digitalWrite(MOTOR_DOWN, LOW);
        delay(700/16);
      }
      current_time+=2;
      analogWrite(MOTOR_DOWN, 0);
    }

//## Tea out! ##########
    else if (current_time == _tea_time) {
      for (int i = 0; i<40; i++) {
        digitalWrite(MOTOR_UP, HIGH);
        delay(700/20);
        digitalWrite(MOTOR_UP, LOW);
        delay(300/20);
      }

//## and... SHAKE IT! ##########
      for (int i = 0; i<5; i++) {
        analogWrite(MOTOR_DOWN, 140);
        delay(100);
        analogWrite(MOTOR_DOWN, 0);
        analogWrite(MOTOR_UP, 223);
        delay(380);
        analogWrite(MOTOR_UP, 0);
      }
      digitalWrite(PSU_OFF, HIGH);
      current_time+=4;
    // Make sure demo mode is off.
    _boil_duration = boil_duration;
    _steep_duration = steep_duration;
    _tea_time = tea_time;
    }

    // Yuh, end of this second!
    // Lets go to the next second.
    current_time++;
    }
  // new _day !
  current_time = 0;
}

