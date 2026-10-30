int[] Numbers;
String[] Category;
int[] Effort;
int[] Worry;

void setup() {
  size(400, 900);
  parseTextFile();
    
}

void draw() {
//  for (int i= 0; i< data.length; i++){
//    text(data[i], 10, 10+(i*10));
    
  }
  
void parseTextFile(){
  String[] textLines = loadStrings("mydata.txt");
  Numbers = new int[textLines.length];
  Category = new String[textLines.length];
  Effort = new int[textLines.length];
  Worry = new int[textLines.length];
  
  for (int i=1; i<textLines.length; i++)
  {
    String[] values = split(textLines[i], ",");
    Numbers[i]  = int(values[0]);
    println(Numbers[i]);
    Category[i] = values[1];
    println(Category[i]);
    Effort[i]   = int(values[2]);
    println(Effort[i]);
    Worry[i]    = int(values[3]);
    println(Worry[i]);
  }  
  
}
