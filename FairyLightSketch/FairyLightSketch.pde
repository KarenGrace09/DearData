ArrayList <Light> lights = new ArrayList<Light>();
PImage i;
int xCoord;
int yCoord;
int count;
String [] dataFileRows;
boolean showKey=false;

void setup() {
  fill(0, 0, 0);
  size(600, 650);
  dataFileRows = loadStrings("mydata.txt");

  for (String row : dataFileRows)
  {
    
    String [] values = split(row, ",");
    int number  = int(values[0]);
    String category = values[1];
    int worry    = int(values[2]);

    Light l = new Light(number, category, worry);
    if (count >=10){
      count =0;
    }

    
    float x = xCoordinate(count);
    float y = yCoordinate(count);

    l.coords = new PVector(x, y);
    lights.add(l);
    count += 1;
  }
  
}

void draw() {
  background(0);
  stroke(116,116,124);
  strokeWeight(1);
  line(0,38,600,38);
  line(0,98,600,98);
  line(0,158,600,158);
  line(0,218,600,218);
  line(0,278,600,278);
  line(0,338,600,338);
  line(0,398,600,398);
  line(0,458,600,458);
  line(0,518,600,518);
  line(0,578,600,578);
  for (Light l : lights) {
    l.draw();
      
  }
  if (showKey){
    drawKey();
    float saturation = random(-200,200);
    stroke(255);
    strokeWeight(1);
    fill(198,240,15,saturation);
    ellipse(50, 150, 15, 20);
  }
  
}
int xCoordinate(int count){
  xCoord = (count *50) + 70;
  
  return xCoord;
}

int yCoordinate(int count){
  if (count%10==0){
    yCoord += 60;
  }
  return yCoord;
}

void keyPressed(){
  if(key == 'k'){
    showKey = true;
   
  }else if(key == ' '){
    showKey = false;
  }
}

void drawKey(){
  fill(0);
  stroke(255);
  rect(20,0,300,180);
  // blocks
  fill(255,247,3);
  rect(40, 20, 30,10);
  fill(250,3,217);
  rect(40, 40, 30,10);
  fill(5,228,255);
  rect(40, 60, 30,10);
  fill(255,255,255);
  rect(40,80,30,10);
  fill(252,127,0);
  rect(40,100,30,10);
  fill(255, 60, 0);
  rect(40,120,30,10);

  //text
  fill(255);
  textSize(15);
  text("= refusing food", 80, 30);
  text("= planning for food safety", 80,50);
  text("= medicine", 80, 70);
  text("= social communication", 80, 90);
  text("= monitoring", 80,110);
  text("= reaction",80, 130);
  text("brightness of flashing",65,155);
  text("= level of anxiety", 205, 155);
  
}
    
    
