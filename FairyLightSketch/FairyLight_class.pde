float changeSaturation;
float randomSat;
int worryValue;


class Light {
  int dataObservation;
  String what;
  int worryScale;
  PVector coords = new PVector(0,0);
  color lightColour;
  
  //constructor
  Light (int dataNum , String Cat, int worr){
    dataObservation = dataNum;
    what = Cat;
    worryScale = worr;
    
    if (worryScale == 1){
      changeSaturation = 255;
    }else if (worryScale == 2){
      changeSaturation = 225;
    }else if (worryScale == 3){
      changeSaturation = 200;
    }else if (worryScale == 4){
      changeSaturation = 150;
    }else if (worryScale ==5){
      changeSaturation = 100;
    }
    

    if (what.equals("refusing")){
      lightColour = color(255,247,3);
    }else if (what.equals("planning for food safety")){
      lightColour = color(250,3,217);
    }else if(what.equals("medicine")){
      lightColour = color(5,228,255);
    }else if(what.equals("social communication")){
      lightColour = color(255,255,255);
    }else if(what.equals("checking")){
      lightColour = color(252,127,0);
    }else if(what.equals("reaction")){
      lightColour = color(255, 60, 0);
    }
  }
      
  void draw(){
    stroke(0);
    strokeWeight(0.5);

    randomSat = random(-changeSaturation, changeSaturation);
      
    fill(lightColour,randomSat);
    ellipse(coords.x, coords.y, 15, 20);
      
    fill(255,255,255,randomSat);
    ellipse(coords.x-3, coords.y-1,2,5);
    
    fill(116,116,124);
    rect(coords.x-2, coords.y - 20, 5,10);
  }
}
    
  
    
