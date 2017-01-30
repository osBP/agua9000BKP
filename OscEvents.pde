OscP5 oscP5;
NetAddress myRemoteLocation;
NetAddress ESPlocation;

void initOsc(){
  oscP5 = new OscP5(this,9001);
  myRemoteLocation = new NetAddress("192.168.2.50",2345);//jetson
  ESPlocation = new NetAddress("192.168.1.79",9000);
}

void oscEvent(OscMessage theOscMessage) {
  if(theOscMessage.checkAddrPattern("/test")==true && theOscMessage.get(0).intValue() == 0) {
    connected = true;
    println("test");
  }
  if(theOscMessage.checkAddrPattern("/scene")==true && theOscMessage.get(0).intValue() == actualScene) {
    sceneUpdated = true;
    println("scene");
  }
  if(theOscMessage.checkAddrPattern("/shutDown")==true && theOscMessage.get(0).intValue() == 0) {
    println("shutDown");
  }
  
}

void sendTest(){
  OscMessage myMessage = new OscMessage("/test");
  myMessage.add(0);
  oscP5.send(myMessage, myRemoteLocation); 
}

void sendScene(int scene){
  OscMessage myMessage = new OscMessage("/scene");
  myMessage.add(scene);
  oscP5.send(myMessage, myRemoteLocation); 
}

void sendShutDown(){
  OscMessage myMessage = new OscMessage("/shutDown");
  oscP5.send(myMessage, myRemoteLocation);
}

void sendSpot(){
  OscMessage myMessage = new OscMessage("/spot");
  if(spot){
    myMessage.add(0);
    spot = false;
  }
  else{
    myMessage.add(1);
    spot = true;
  }
  oscP5.send(myMessage, myRemoteLocation); 
}

void sendESPon(){
  OscMessage myMessage = new OscMessage("1");
  oscP5.send(myMessage, ESPlocation); 
}