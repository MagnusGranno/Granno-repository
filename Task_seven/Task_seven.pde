String six;
String half = ("HALF!");

void setup()
{
  size(200, 200);
}

void draw()
{
}
//task 7.a & 7.b
void mousePressed()
{
  six = ("six");
  //possible solution to make it run without error if input = negative number
  double input = abs(-40);
  for (double counter = input; counter >= 0; counter--)
  {
    if (counter == 6.0)
    {
      println(six);
    } else if (counter == input/2)
    {
      println(half);
    } else
    {
      println(counter);
    }
  }
}


//Loop solved with -20
void keyPressed()
{
  six = ("you owe me six dollars!");
  for (int input = -20; input <= 0; input++)
  {
    if (input == -6)
    {
      println(six);
    } else if (input == -10)
    {
      println(half);
    } else
    {
      println(input);
    }
  }
}
