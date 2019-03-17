

class Wheel{
 
  int wheelHeight = 540;
  int posX = 0;
  int posY = 0;
  float endx, endy;
  float velocity = 2;
  float angle;
  int[] optionsGrid = new int[8];
  String[] options = new String[4];
  
  Wheel(int x, int y,String[] ioptions){
    posX = x;
    posY = y;
    wheelHeight = 540;
    angle = random(0,360);
    options = ioptions;
  }
  
  void cutWheel(){
    ellipse(posX, posY, wheelHeight,wheelHeight);
    
    //cut wheel into optin slices
    for(int i = 0; i < 4; i++){
      line(posX,posY, posX + (wheelHeight/2)*cos((PI/2)*i), posY + (wheelHeight/2)*sin((PI/2)*i));
      
      
    } 
    fill(100,0,0);
    text(options[0], posX + wheelHeight/4,posY + wheelHeight/4);
    text(options[1], posX - wheelHeight/4,posY + wheelHeight/4);
    text(options[2], posX - wheelHeight/4,posY - wheelHeight/4);
    text(options[3], posX + wheelHeight/4,posY - wheelHeight/4);
    fill(250,250,250);
    angle = angle + 0.3 * velocity;
    endx = posX + 250* cos(angle);
    endy = posY + 250 * sin(angle);
    line(posX,posY,endx,endy);
    
    if(velocity >0)
      velocity = velocity * 0.98 - (.0001) ;
     else velocity = 0;
  }
  /*
  int spinWheel(){
    int numSpins = (int)(Math.random() * 20+1);
    return numSpins;
  }*/
  

  
 
} 
