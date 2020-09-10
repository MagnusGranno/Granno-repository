color red = color(255, 0, 0);
color yellow = color(255, 255, 0);
color green = color(0, 255, 0);
color bg = color(120);

int circleW = 160;

int x = 0;

void setup()
{
  size(200, 500);
  background(bg);
  fill(0);
  rect(10, 10, 160, 480, 20);
}


void draw()
{
}

void keyPressed()
{

  if (x == 4)
  {
    x = 0;
  }

  switch(x)
  {
  case 0:
    fill(red);
    circle(90, 90, circleW);
    fill(120);
    circle(90, 250, circleW);
    circle(90, 410, circleW);
    break;

  case 1:
    fill(red);
    circle(90, 90, circleW);
    fill(yellow);
    circle(90, 250, circleW);
    break;

  case 2:
    fill(120);
    circle(90, 90, circleW);
    circle(90, 250, circleW);
    fill(green);
    circle(90, 410, circleW);
    break;

  case 3:
    fill(120);
    circle(90, 90, circleW);
    fill(yellow);
    circle(90, 250, circleW);
    fill(120);
    circle(90, 410, circleW);
    break;
  }
  x += 1;
}
