boolean lutron;
int timeGPIO;

void setGPIO(){
  GPIO.pinMode(4,GPIO.INPUT);
  GPIO.attachInterrupt(4,this,"pinEvent",GPIO.CHANGE);
  println("GPIOSETTED");
}

void pinEvent(int pin){
  if(lutron)
    println("lutron true");
  else
    println("lutron false");
  println("pin:",pin);
  GPIO.noInterrupts();
  println("noInterrupts");
  timeGPIO = millis(); 
  while(millis() - timeGPIO < 20);
  if(logIn && lutron /*&& botonLibre*/){
      println("GPIO  ON");
      sendESPon();
      logIn = false;
      loading = true;
      time = millis();
      botonLibre=false;
      GPIO.interrupts();
      println("interrupts");
      return;
    }
    if(loading /*&& rectWidth>=width/3 &&  rectWidth<=width/2*/){
      //sendESPon();
      println("loading interrupts");
      GPIO.interrupts();
      return;
    }
    if(moon && lutron){
      println("GPIO OFF");
      moon = false;
      black = true;
      sendShutDown();
      botonLibre = false;
      sceneUpdated = false;
      connected = false;
      println("interrupts");
      GPIO.interrupts();
      return;
    }
  GPIO.interrupts();  
  return;  
}