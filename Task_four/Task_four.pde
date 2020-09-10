int c = 0;

void setup()
{
  size(200, 200);
}

void draw()
{
}
//4.a & 4.c
void keyPressed()
{
  if (key == CODED)
  {
    if (keyCode == UP)
    {
      for (int a = 0; a <= 20; a++)
      {
        print(a);
      }
    }
    else if (keyCode == DOWN)
    {
      while (c <= 20)
      {
       if( c % 2 == 0)
       {
        print(c); 
       }
       c += 1;
      }
    }
  }
  println();
}

//4.b
void mousePressed()
{
  for (int a = 0; a <= 20; a++)
  {
    if (a % 2 == 0)
    {
      print(a);
    }
  }
  println();
}
