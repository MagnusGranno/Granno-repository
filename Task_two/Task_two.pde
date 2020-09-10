String myName = "Magnus Granno";
int myAge = 23;
boolean myMood = true;

void setup()
{
  size(200, 200);
  background(255);
}

void draw()
{
}

void keyPressed()
{
  println("Hi, my name is " + myName);
  println("I am " + myAge + " years old");
  if (myMood == false)
  {
    println("I don't clap my hands");
  }
}
