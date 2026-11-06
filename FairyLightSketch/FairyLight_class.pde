float radius;
float changeRadius;

class Light {
  int dataObservation;
  String what;
  int effortScale;
  int worryScale;
  PVector coords = new PVector(0,0);
  color lightColour;
  
  //constructor
  Light (int dataNum , String Cat, int eff, int worr){
    dataObservation = dataNum;
    what = Cat;
    effortScale = eff;
    worryScale = worr;
    
    radius = map(effortScale, 1, 5, 10, 20);
    changeRadius = map(worryScale, 1, 5, 5, 20);
    
    
    if (what.equals("refusing")){
      lightColour = color(255,247,3,64);
    }else if (what.equals("planning for food safety")){
      lightColour = color(250,3,217,64);
    }else if(what.equals("medicine")){
      lightColour = color(5,228,255,64);
    }else if(what.equals("social communication")){
      lightColour = color(255,255,255,64);
    }else if(what.equals("checking")){
      lightColour = color(252,127,0,64);
    }else if(what.equals("reaction")){
      lightColour = color(255, 60, 0,64);
    }
  }
      
  void draw(){
    stroke(0);
    strokeWeight(0.5);
    fill(lightColour);
    
    float randomJitter = random(-changeRadius, changeRadius);
    circle(coords.x, coords.y, radius + randomJitter);
  }
}
    
  
    
