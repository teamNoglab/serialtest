//有線シリアルテスト

import processing.serial.*;

Serial myPort;

int on = 0;
int x = 0;
int y = 0;

void setup(){
  size(500,500);
  
  //setting_Serial
  myPort = new Serial(this, "/dev/cu.usbmodem1421", 9600);
  myPort.write(0);
}

void draw(){
  background(255);
  if(on == 1){
    //background(255);
    fill(0);
    text("OFF!", 250, 250, 40);
  }else{
    text("ON!", 250, 250, 40);
  }
}

void mouseMoved(){

  if(mouseY <= 50){      //もしmouseYが50より上だったら
    on = 0;      //振動する
  }else{        //それ以外だったら
    on = 1;    //振動しない
  }
  
  myPort.write(on);
}