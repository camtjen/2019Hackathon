  int[] x = {540, 540};
  int[] y = {540, 1080};
  Wheel wheel;
  
void setup(){
  size(1920, 1080);
  String[] options = {"apple","yellow","dog","tutule"};
  wheel = new Wheel(540, 540,options);
}

void draw(){
  wheel.cutWheel();
}
