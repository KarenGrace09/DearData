float radius;
float changeRadius;

class Star {
  int dataObservation;
  String what;
  int effortScale;
  int worryScale;
  PVector coords = new PVector(0,0);
  PVector size = new PVector(100,20);
  color starColour;
  
  //constructor
  Star (int dataNum , String Cat, int eff, int worr){
    dataObservation = dataNum;
    what = Cat;
    effortScale = eff;
    worryScale = worr;
    
    radius = map(effortScale, 1, 5, 40, 80);
    changeRadius = map(worryScale, 1, 5, 10, 30); 
    
    if (what.equals("refusing")){
      starColour = color(247,240,7);
    }else if (what.equals("planning for food safety")){
      starColour = color(227, 108, 211);
    }else if(what.equals("medicine")){
      starColour = color(108, 214, 227);
    }else if(what.equals("social communication")){
      starColour = color(251, 250, 252);
    }else if(what.equals("checking")){
      starColour = color(232, 193, 152);
    }else if(what.equals("reaction")){
      starColour = color(247, 129, 90);
    }
  }
      
  void draw(){
    stroke(0);
    fill(starColour);
    
    float randomJitter = random(-changeRadius, changeRadius);
    circle(coords.x, coords.y, radius + randomJitter);
  }
}
    
  
    
