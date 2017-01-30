int year,month,day;
final int lunaNueva =  0;
final int cuartoCreciente = 1;
final int lunaLlena = 2;
final int cuartoMenguante = 3;
final int year2k16 = 2016;
final int year2k17 = 2017;
int actualScene,actualDay;
PImage img;
PImage mask;
PImage shine;
PImage preset;
PImage logInImg,loadingImg,moonEscapeImg;

void initImages(){
  preset = loadImage("preset.png");
  img=loadImage("moon texture colour map.jpg");
  shine = loadImage("img_maskblank3.png");
  mask=loadImage("img_mask.png");
  mask.resize(400,240);
  logInImg = loadImage("logIn.png");
  loadingImg = loadImage("loading.png");
  moonEscapeImg = loadImage("moonEscape.png");
}

void checkDate(){
  year=year();
  month=month();
  day=day();
  if(day != actualDay/*!sceneUpdated*/){
  sendScene(day); actualScene = day;
  switch(year){
    case year2k16:
      if(month == 12 &&  7 <= day && day <= 13 ){
        //sendScene(0); actualScene = 0; actualScene = 0;
        setOffset(cuartoCreciente);
      }
      if(month == 12 && 14 <= day && day <= 20 ){
        //sendScene(1); actualScene = 1;
        setOffset(lunaLlena);
      }
      if(month == 12 && 21 <= day && day <= 28 ){
        //sendScene(2); actualScene = 2;
        setOffset(cuartoMenguante);
      }
      if(month == 12 && 29 <= day && day <= 31 ){
        //sendScene(3); actualScene = 3;
        setOffset(lunaNueva);
      }
      break;
    case year2k17:
      if(month ==  1 && 1 <= day && day <= 4){
        //sendScene(3); actualScene = 3;
        setOffset(lunaNueva);
      }
      if(month ==  1 && 5 <= day && day <= 11){
        //sendScene(4); actualScene = 4;
        setOffset(cuartoCreciente);
      }
      if(month ==  1 && 12 <= day && day <= 18){
        //sendScene(5); actualScene = 5;
        setOffset(lunaLlena);
      }
      if(month ==  1 && 19 <= day && day <= 27){
        //sendScene(6); actualScene = 6;
        setOffset(cuartoMenguante);
      }
      if(month ==  1 && 28 <= day && day <= 31){
        //sendScene(7); actualScene = 7;
        setOffset(lunaNueva);
      }
      if(month ==  2 && 1 <= day && day <= 3){
        //sendScene(7); actualScene = 7;
        setOffset(lunaNueva);
      }
      if(month ==  2 && 4 <= day && day <= 10){
        //sendScene(8); actualScene = 8;
        setOffset(cuartoCreciente);
      }
      if(month ==  2 && 11 <= day && day <= 17){
        //sendScene(9); actualScene = 9;
        setOffset(lunaLlena);
      }
      if(month ==  2 && 18 <= day && day <= 25){
        //sendScene(10); actualScene = 10;
        setOffset(cuartoMenguante);
      }
      if(month ==  2 && 26 <= day && day <= 28){
        //sendScene(11); actualScene = 11;
        setOffset(lunaNueva);
      }
      if(month ==  3 && 1 <= day && day <= 4){
        //sendScene(11); actualScene = 11;
        setOffset(lunaNueva);
      }
      if(month ==  3 && 5 <= day && day <= 11){
        //sendScene(12); actualScene = 12;
        setOffset(cuartoCreciente);
      }
      if(month ==  3 && 12 <= day && day <= 19){
        //sendScene(13); actualScene = 13;
        setOffset(lunaLlena);
      }
      if(month ==  3 && 20 <= day && day <= 27){
        //sendScene(14); actualScene = 14;
        setOffset(cuartoMenguante);
      }
      if(month ==  3 && 28 <= day && day <= 31){
        //sendScene(15); actualScene = 15;
        setOffset(lunaNueva);
      }
      if(month ==  4 && 1 <= day && day <= 2){
        //sendScene(15); actualScene = 15;
        setOffset(lunaNueva);
      }
      if(month ==  4 && 3 <= day && day <= 10){
        //sendScene(16); actualScene = 16;
        setOffset(cuartoCreciente);
      }
      if(month ==  4 && 11 <= day && day <= 18){
        //sendScene(17); actualScene = 17;
        setOffset(lunaLlena);
      }
      if(month ==  4 && 19 <= day && day <= 25){
        //sendScene(18); actualScene = 18;
        setOffset(cuartoMenguante);
      }
      if(month ==  4 && 26 <= day && day <= 30){
        //sendScene(19); actualScene = 19;
        setOffset(lunaNueva);
      }
      if(month ==  5 && 1 <= day && day <= 2){
        //sendScene(19); actualScene = 19;
        setOffset(lunaNueva);
      }
      if(month ==  5 && 3 <= day && day <= 9){
        //sendScene(20); actualScene = 20;
        setOffset(cuartoCreciente);
      }
      if(month ==  5 && 10 <= day && day <= 18){
        //sendScene(21); actualScene = 21;
        setOffset(lunaLlena);
      }
      if(month ==  5 && 19 <= day && day <= 24){
        //sendScene(22); actualScene = 22;
        setOffset(cuartoMenguante);
      }
      if(month ==  5 && 25 <= day && day <= 31){
        //sendScene(23); actualScene = 23;
        setOffset(lunaNueva);
      }
      if(month ==  6 && 1 <= day && day <= 8){
        //sendScene(24); actualScene = 24;
        setOffset(cuartoCreciente);
      }
      if(month ==  6 && 9 <= day && day <= 16){
        //sendScene(25); actualScene = 25;
        setOffset(lunaLlena);
      }
      if(month ==  6 && 17 <= day && day <= 23){
        //sendScene(26); actualScene = 26;
        setOffset(cuartoMenguante);
      }
      if(month ==  6 && 24 <= day && day <= 30){
        //sendScene(27); actualScene = 27;
        setOffset(lunaNueva);
      }
      if(month ==  7 && 1 <= day && day <= 8){
        //sendScene(0); actualScene = 0;
        setOffset(cuartoCreciente);
      }
      if(month ==  7 && 9 <= day && day <= 15){
        //sendScene(1); actualScene = 1;
        setOffset(lunaLlena);
      }
      if(month ==  7 && 16 <= day && day <= 22){
        //sendScene(2); actualScene = 2;
        setOffset(cuartoMenguante);
      }
      if(month ==  7 && 23 <= day && day <= 29){
        //sendScene(3); actualScene = 3;
        setOffset(lunaNueva);
      }
      if(month ==  7 && 30 <= day && day <= 31){
        //sendScene(4); actualScene = 4;
        setOffset(cuartoCreciente);
      }
      if(month ==  8 && 1 <= day && day <= 6){
        //sendScene(4); actualScene = 4;
        setOffset(cuartoCreciente);
      }
      if(month ==  8 && 7 <= day && day <= 14){
        //sendScene(5); actualScene = 5;
        setOffset(lunaLlena);
      }
      if(month ==  8 && 15 <= day && day <= 20){
        //sendScene(6); actualScene = 6;
        setOffset(cuartoMenguante);
      }
      if(month ==  8 && 21 <= day && day <= 28){
        //sendScene(7); actualScene = 7;
        setOffset(lunaNueva);
      }
      if(month ==  8 && 29 <= day && day <= 31){
        //sendScene(8); actualScene = 8;
        setOffset(cuartoCreciente);
      }
      if(month ==  9 && 1 <= day && day <= 5){
        //sendScene(8); actualScene = 8;
        setOffset(cuartoCreciente);
      }
      if(month ==  9 && 6 <= day && day <= 12){
        //sendScene(9); actualScene = 9;
        setOffset(lunaLlena);
      }
      if(month ==  9 && 13 <= day && day <= 19){
        //sendScene(10); actualScene = 10;
        setOffset(cuartoMenguante);
      }
      if(month ==  9 && 20 <= day && day <= 27){
        //sendScene(11); actualScene = 11;
        setOffset(lunaNueva);
      }
      if(month ==  9 && 28 <= day && day <= 30){
        //sendScene(12); actualScene = 12;
        setOffset(cuartoCreciente);
      }
      if(month ==  10 && 1 <= day && day <= 4){
        //sendScene(12); actualScene = 12;
        setOffset(cuartoCreciente);
      }
      if(month ==  10 && 5 <= day && day <= 11){
        //sendScene(13); actualScene = 13;
        setOffset(lunaLlena);
      }
      if(month ==  10 && 12 <= day && day <= 18){
        //sendScene(14); actualScene = 14;
        setOffset(cuartoMenguante);
      }
      if(month ==  10 && 19 <= day && day <= 27){
        //sendScene(15); actualScene = 15;
        setOffset(lunaNueva);
      }
      if(month ==  10 && 28 <= day && day <= 31){
        //sendScene(16); actualScene = 16;
        setOffset(cuartoCreciente);
      }
      if(month ==  11 && 1 <= day && day <= 3){
        //sendScene(16); actualScene = 16;
        setOffset(cuartoCreciente);
      }
      if(month ==  11 && 4 <= day && day <= 9){
        //sendScene(17); actualScene = 17;
        setOffset(lunaLlena);
      }
      if(month ==  11 && 10 <= day && day <= 17){
        //sendScene(18); actualScene = 18;
        setOffset(cuartoMenguante);
      }
      if(month ==  11 && 18 <= day && day <= 25){
        //sendScene(19); actualScene = 19;
        setOffset(lunaNueva);
      }
      if(month ==  11 && 26 <= day && day <= 30){
        //sendScene(20); actualScene = 20;
        setOffset(cuartoCreciente);
      }
      if(month ==  12 && 1 <= day && day <= 2){
        //sendScene(20); actualScene = 20;
        setOffset(cuartoCreciente);
      }
      if(month ==  12 && 3 <= day && day <= 9){
        //sendScene(21); actualScene = 21;
        setOffset(lunaLlena);
      }
      if(month ==  12 && 10 <= day && day <= 17){
        //sendScene(22); actualScene = 22;
        setOffset(cuartoMenguante);
      }
      if(month ==  12 && 18 <= day && day <= 25){
        //sendScene(23); actualScene = 23;
        setOffset(lunaNueva);
      }
      if(month ==  12 && 26 <= day && day <= 31){
        //sendScene(24); actualScene = 24;
        setOffset(cuartoCreciente);
      }
      break;
    default:
      println("failed at updating date, date not supported");
      break;
  }
    if(sceneUpdated)
      actualDay = day;
  }
}

void setOffset(int fase){
 switch(fase){
   case lunaNueva :
     counter=197;
     break;
   case cuartoCreciente :
     counter = 126;
     break;
   case lunaLlena:
     counter = -150;
     break;
   case cuartoMenguante:
     counter = 340;
     break;
   default :
     break;
 }
}