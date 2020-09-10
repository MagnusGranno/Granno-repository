//variables 6.a
int a;
int b;
//variables 6.b
int x;
int y;
int z;

void setup()
{
  size(200,200);
}

void draw()
{
  
}
//6.a
void keyPressed()
{
  a = 10;
  b = 10;
 if (a == 10 || b == 10 || a + b == 10)
 {
   println("Success!");
 }
 else 
 {
  println("Failure!"); 
 }
}


//6.b
void mousePressed()
{
 if(x + y + z == 30 && x % 10 != 0 && y % 10 != 0 && z % 10 != 0)
 {
  println("Success!"); 
 }
 else
 {
  println("Failure!"); 
 }
}
