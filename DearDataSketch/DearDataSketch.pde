//int[] Numbers;
//String[] Category;
//int[] Effort;
//int[] Worry;

ArrayList <Star> stars = new ArrayList<Star>();

void setup() {
  fill(0,0,0);
  size(600, 600);
  //loading strings
  String[] textLines = loadStrings("mydata.txt");
//  Numbers = new int[textLines.length];
//  Category = new String[textLines.length];
//  Effort = new int[textLines.length];
//  Worry = new int[textLines.length];
  
  for (int i=1; i<textLines.length; i++)
  {
    String[] values = split(textLines[i], ",");
    int number  = int(values[0]);
    String category = values[1];
    int effort   = int(values[2]);
    int worry    = int(values[3]);
    
    //new object
    Star s = new Star(number, category, effort, worry);
    
    float y = random(0,600);
    float x = random(0,600);
    
    s.coords = new PVector(x,y);
    stars.add(s);
  }
    
}

void draw(){
  background(0);
  for (Star s : stars){
    s.draw();
  }
}

   
