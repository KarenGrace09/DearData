ArrayList <Light> lights = new ArrayList<Light>();
PImage i;
int xCoord;
int yCoord;
int count;
String [] dataFileRows;

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
    
    
