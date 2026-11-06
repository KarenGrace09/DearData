ArrayList <Light> lights = new ArrayList<Light>();
PImage i;
int xCoord;
int yCoord;
int count;

void setup() {
  fill(0, 0, 0);
  size(700, 700);
  String[] textLines = loadStrings("mydata.txt");

  for (int i=1; i<textLines.length; i++)
  {
    count += 1;
    println(count);
    String[] values = split(textLines[i], ",");
    int number  = int(values[0]);
    String category = values[1];
    int effort   = int(values[2]);
    int worry    = int(values[3]);

    Light l = new Light(number, category, effort, worry);
    
    if (count >10){
      count =0;
    }
    
    float x = xCoordinate(count);
    float y = yCoordinate(count);

    l.coords = new PVector(x, y);
    lights.add(l);
  }
}

void draw() {
  //252,235, 250
  background(249, 227, 252);
  for (Light l : lights) {
    l.draw();
  }
}
int xCoordinate(int count){
  xCoord = count *60;
  return xCoord;
}

int yCoordinate(int count){
  if (count%10==0){
    yCoord += 60;
  }
  return yCoord;
}
    
    
