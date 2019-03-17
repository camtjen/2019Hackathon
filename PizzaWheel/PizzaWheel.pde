
PImage img;
  Wheel wheel;
Wheel w1, w2, w3;
String o1,o2,o3;
void setup(){
  String[] options1 = {"small","medium","large","gut buster"};
  String[] options2 = {"chicken","peperoni","pineapple","spinach"};
  size(1920, 1080);
  background(500);
  img = loadImage("dominospizze.jpg");
  background(img);
  w1 = new Wheel(320,270,options1);
  w2 = new Wheel(960,270,options2);
  w3 = new Wheel(1600,270,options2);
}

void draw(){
  strokeWeight(4);
  w1.cutWheel();
  w2.cutWheel();
  w3.cutWheel();
  line(width/3,0,width/3,height/2);
  line(2*width/3,0,2*width/3,height/2);
  line(0,height/2,width,height/2);
}

  
