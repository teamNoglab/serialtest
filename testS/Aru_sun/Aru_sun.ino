//vivration_motor_sample
const int vib_moter_pin = 9;
int val;

void setup() {
  pinMode(9, OUTPUT);
  Serial.begin(9600);   //シリアル通信用のポート

}

void loop() {

  if(Serial.available()>0){
    val = Serial.read();
    if(val == 1){   //もしスイッチが入らなかったら
      analogWrite(vib_moter_pin, 0);
    }else{    //もしスイッチが入ったら

      analogWrite(vib_moter_pin, 255);
    }
  }

}
