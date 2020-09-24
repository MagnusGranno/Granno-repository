int[][] board = new int[8][8];
int sideLength = 40;

void setup()
{
  size(320, 320);

  for (int x = 0; x<board.length; x++)
  {
    for (int y = 0; y < board.length; y++)
    {
      int k;
      if ((x + y + 1) % 2 == 0)
      {
        k = 1;
      } else
      {
        k = 0;
      }
      board[x][y] = k;
    }
  }
}


void draw()
{



  for (int x = 0; x<board.length; x++)
  {
    for (int y = 0; y < board.length; y++)
    {
      if (board[x][y] == 0)
      {
        fill(0);
      } else
      {
        fill(255);
      }
      rect(x * sideLength, y * sideLength, sideLength, sideLength);
    }
  }
}
