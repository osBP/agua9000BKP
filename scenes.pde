boolean logIn,loading,moon,black;
boolean connected,sceneUpdated;
boolean spot;
int rectWidth;
int counter = -39;
int increment = 1;
int tryESP;
int time;

void logInScene(){
  if(!botonLibre){
   time = millis();
   while( millis() - time < 5000); 
   botonLibre = true;
   lutron = true;
  }
  background(0);
  image(logInImg,0,0);
  actualDay = 0;
  connected = false;
  sceneUpdated = false;
  rectWidth = 0;
  spot = false;
  //lutron = true;
}

void loadingScene(){
  background(0);
  image(loadingImg,0,0);
  fill(128);
  rect( width - rectWidth, 50, rectWidth, 47 );
  if(!connected && rectWidth <= width/2){
    sendTest();
    if(rectWidth < width/2)
      rectWidth++;
  }
  if(connected && !sceneUpdated ){
   frameRate(24);
   checkDate();
   if(rectWidth < width-100)
     rectWidth++;
  }
  if(sceneUpdated && connected)
    rectWidth+=8;
  if(rectWidth >= width){
    botonLibre=true;    
    moon = true;
    loading = false;
  }
  if( !connected &&  rectWidth == width/2  && (millis() - time > 40000 )){
    sendESPon();
    time = millis();
  }
}

void moonScene(){
  background(0);
  if(spot){
    pushMatrix();
      translate(-240,-58,-315);
      image(shine, 240, 0);
    popMatrix();
  }
  pushMatrix();
    camera(600*cos(frameCount*-0.01), 0 , 600*sin(frameCount*0.01),
                                  0 , 0 , 0 ,
                                  0 , 1 , 0 );  
    textureSphere(200, 200, 200, img);
  popMatrix();
  pushMatrix();
    translate(0,0,100);
    image(mask,counter,120);
  popMatrix();
  pushMatrix();
    translate(0,0,0);
    image(preset,0,0);
    image(moonEscapeImg,0,0);
  popMatrix();
}

void blackScene(){
  rectWidth = 0;
  background(0);
  black = false;
  loading=false;
  moon = false;
  logIn = true;
}