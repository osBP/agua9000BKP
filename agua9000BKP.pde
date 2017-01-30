import netP5.*;
import oscP5.*;
import processing.io.*;
boolean botonLibre;

void setup() {
  frameRate(24);
  noCursor();
  size(800, 480, P3D);
  noStroke();
  setGPIO();
  initImages();
  ptsW=100;
  ptsH=100;
  initializeSphere(ptsW, ptsH);
  initOsc();
  loading = false;
  moon    = false;
  black = false;
  logIn   = true;
  botonLibre=true;
  lutron = true;
}

void draw() {
  if(logIn){
    logInScene();
    return;
  }
  if(loading){
    loadingScene();
    return;
  }
  if(moon){
    moonScene();
    return;
  }
  if(black){
    blackScene();
    return;
  }
}

void mousePressed() {
    if(logIn && botonLibre){
      sendESPon();
      logIn = false;
      loading = true;
      time = millis();
      botonLibre=false;
      return;
    }
    if(loading /*&& rectWidth>=width/3 &&  rectWidth<=width/2*/){
      //sendESPon();
      return;
    }
    if(moon){
        if(mouseX < 200 && mouseY < 100){
          moon = false;
          loading = false;
          black = true;
          sendShutDown();
          lutron = false;
          botonLibre = false;
          return;
        }
        if(mouseX > 600 && mouseY >380){
          actualScene++;
          if(actualScene > 31)
            actualScene=1;
          sendScene(actualScene);
          spot = true;
          return;
        }
        else{       
            sendSpot();
            return;
        }
    }
}

//void keyPressed(){
//  switch(key){
//    case '1':
//      sendScene(1);
//      break;
//    case '2':
//      sendScene(2);
//      break;
//    case '3':
//      sendScene(3);
//      break;
//    case '4':
//      sendScene(4);
//      break;
//    case '5':
//      sendScene(5);
//      break;
//    case '6':
//      sendScene(6);
//      break;
//    case '7':
//      sendScene(7);
//      break;
//    case '8':
//      sendScene(8);
//      break;
//    case '9':
//      sendScene(9);
//      break;
//    case '0':
//      sendScene(10);
//      break;
//    case 'a':
//      sendScene(11);
//      break;
//    case 'b':
//      sendScene(12);
//      break;
//    case 'c':
//      sendScene(13);
//      break;
//    case 'd':
//      sendScene(14);
//      break;
//    case 'e':
//      sendScene(15);
//      break;
//    default:
//      //sendScene();
//      break;   
//  }
//}