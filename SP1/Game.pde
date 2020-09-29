import java.util.Random;

class Game
{
  private Random rnd;
  private int width;
  private int height;
  private int[][] board;
  private Keys keys;
  private int playerLife;
  private Dot player;
  private Dot[] enemies;
  Dot[] food;
  int maxLife = 100;
  int foodBonus = 10;
  Dot playerTwo;
  int playerLifeTwo;


  Game(int width, int height, int numberOfEnemies)
  {
    if (width < 10 || height < 10)
    {
      throw new IllegalArgumentException("Width and height must be at least 10");
    }
    if (numberOfEnemies < 0)
    {
      throw new IllegalArgumentException("Number of enemies must be positive");
    } 
    this.rnd = new Random();
    this.board = new int[width][height];
    this.width = width;
    this.height = height;
    keys = new Keys();
    player = new Dot(0, 0, width-1, height-1);
    playerTwo = new Dot(width-1, 0, width -1, height -1);
    enemies = new Dot[numberOfEnemies];
    food = new Dot[4];
    for (int i = 0; i < numberOfEnemies; ++i)
    {
      enemies[i] = new Dot(width-1, height-1, width-1, height-1);
    }
    for (int j = 0; j < food.length; j++)
    {
      food[j] = new Dot((int)random(1, width-1), (int)random(1, height-1), width-1, height-1);
    }
    this.playerLife = 100;
    this.playerLifeTwo = 100;
  }

  public int getWidth()
  {
    return width;
  }

  public int getHeight()
  {
    return height;
  }
  public int getPlayerLifeTwo()
  {
    return playerLifeTwo;
  }

  public int getPlayerLife()
  {
    return playerLife;
  }

  public void onKeyPressed(char ch)
  {
    keys.onKeyPressed(ch);
  }
  //player two
  public void onKeyCodePressed()
  {
    keys.onkeyCodePressed();
  }

  public void onKeyReleased(char ch)
  {
    keys.onKeyReleased(ch);
  }
  //player two
  public void onKeyCodeReleased()
  {
    keys.onkeyCodeReleased();
  }

  public void update()
  {

    updatePlayer();
    updatePlayerTwo();
    updateEnemies();
    updateFood();
    checkForCollisions();
    clearBoard();
    populateBoard();
  }
  public void gameOver() {
    if (playerLife == 0)
    {

      background(0);
      fill(255);
      textSize(40);
      text("Player Two wins", 350, 500);
      noLoop();
    } else if (playerLifeTwo == 0)
    {
      background(0);
      fill(255);
      textSize(40);
      text("Player One wins", 350, 500);
      noLoop();
    }
  }



  public int[][] getBoard()
  {
    //ToDo: Defensive copy?
    return board;
  }

  private void clearBoard()
  {
    for (int y = 0; y < height; ++y)
    {
      for (int x = 0; x < width; ++x)
      {
        board[x][y]=0;
      }
    }
  }

  private void updatePlayer()
  {
    //Update player
    if (keys.wDown() && !keys.sDown())
    {
      player.moveUp();
    }
    if (keys.aDown() && !keys.dDown())
    {
      player.moveLeft();
    }
    if (keys.sDown() && !keys.wDown())
    {
      player.moveDown();
    }
    if (keys.dDown() && !keys.aDown())
    {
      player.moveRight();
    }
  }
  private void updatePlayerTwo()
  {
    //Update player two
    if (keys.UPDown() && !keys.DOWNDown())
    {
      playerTwo.moveUp();
    }
    if (keys.LEFTDown() && !keys.RIGHTDown())
    {
      playerTwo.moveLeft();
    }
    if (keys.DOWNDown() && !keys.UPDown())
    {
      playerTwo.moveDown();
    }
    if (keys.RIGHTDown() && !keys.LEFTDown())
    {
      playerTwo.moveRight();
    }
  }

  private void updateFood()
  {
    int dx;
    int dy;
    for (int j = 0; j < food.length; ++j)
    {
      //Should we follow or move randomly?
      //2 out of 3 we will follow..
      if (rnd.nextInt(3) < 2)
      {
        //Who to follow?
        float distanceOne = sqrt((food[j].getX() - player.getX()) * (food[j].getX() - player.getX()) + (food[j].getY() - player.getY()) * ((food[j].getY() - player.getY())));
        float distanceTwo = sqrt((food[j].getX() - playerTwo.getX()) * (food[j].getX() - playerTwo.getX()) + (food[j].getY() - playerTwo.getY()) * ((food[j].getY() - playerTwo.getY())));


        if (distanceOne < distanceTwo)
        {
          dx = player.getX() - food[j].getX();
          dy = player.getY() - food[j].getY();
        } else
        {
          dx = playerTwo.getX() - food[j].getX();
          dy = playerTwo.getY() - food[j].getY();
        }
        if (abs(dx) > abs(dy))
        {
          if (dx > 0)
          {
            //Player is to the right
            food[j].moveLeft();
          } else
          {
            //Player is to the left
            food[j].moveRight();
          }
        } else if (dy > 0)
        {
          //Player is down;
          food[j].moveUp();
        } else
        {//Player is up;
          food[j].moveDown();
        }
      } else
      {
        //We move randomly
        int move = rnd.nextInt(4);
        if (move == 0)
        {
          //Move right
          food[j].moveRight();
        } else if (move == 1)
        {
          //Move left
          food[j].moveLeft();
        } else if (move == 2)
        {
          //Move up
          food[j].moveUp();
        } else if (move == 3)
        {
          //Move down
          food[j].moveDown();
        }
      }
    }
  }

  private void updateEnemies()
  {
    int dx;
    int dy;
    for (int i = 0; i < enemies.length; ++i)
    {
      //Should we follow or move randomly?
      //2 out of 3 we will follow..
      if (rnd.nextInt(3) < 2)
      {

        //Who to follow?
        float distanceOne = sqrt((enemies[i].getX() - player.getX()) * (enemies[i].getX() - player.getX()) + (enemies[i].getY() - player.getY()) * ((enemies[i].getY() - player.getY())));
        float distanceTwo = sqrt((enemies[i].getX() - playerTwo.getX()) * (enemies[i].getX() - playerTwo.getX()) + (enemies[i].getY() - playerTwo.getY()) * ((enemies[i].getY() - playerTwo.getY())));


        if (distanceOne < distanceTwo)
        {
          dx = player.getX() - enemies[i].getX();
          dy = player.getY() - enemies[i].getY();
        } else
        {
          dx = playerTwo.getX() - enemies[i].getX();
          dy = playerTwo.getY() - enemies[i].getY();
        }
        if (abs(dx) > abs(dy))
        {
          if (dx > 0)
          {
            //Player is to the right
            enemies[i].moveRight();
          } else
          {
            //Player is to the left
            enemies[i].moveLeft();
          }
        } else if (dy > 0)
        {
          //Player is down;
          enemies[i].moveDown();
        } else
        {//Player is up;
          enemies[i].moveUp();
        }
      } else
      {
        //We move randomly
        int move = rnd.nextInt(4);
        if (move == 0)
        {
          //Move right
          enemies[i].moveRight();
        } else if (move == 1)
        {
          //Move left
          enemies[i].moveLeft();
        } else if (move == 2)
        {
          //Move up
          enemies[i].moveUp();
        } else if (move == 3)
        {
          //Move down
          enemies[i].moveDown();
        }
      }
    }
  }

  private void populateBoard()
  {
    if (playerLife < 1)
    {
      board[player.getX()][player.getY()] = 0;
    } else
    {
      //Insert player
      board[player.getX()][player.getY()] = 1;
    }
    if (playerLifeTwo < 1)
    {
      board[playerTwo.getX()][playerTwo.getY()] = 0;
    } else
    {
      //Insert player two
      board[playerTwo.getX()][playerTwo.getY()] = 4;
    }
    //Insert enemies
    for (int i = 0; i < enemies.length; ++i)
    {
      board[enemies[i].getX()][enemies[i].getY()] = 2;
    }
    //Insert food
    for (int j = 0; j < food.length; ++j)
    {
      board[food[j].getX()][food[j].getY()] = 3;
    }
  }

  private void checkForCollisions()
  {
    //Check enemy collisions
    for (int i = 0; i < enemies.length; ++i)
    {
      if (enemies[i].getX() == player.getX() && enemies[i].getY() == player.getY())
      {
        //We have a collision
        if (playerLife > 0)
        {
          --playerLife;
        } else
        {
          playerLife = 0;
        }
      }
    }
    for (int i = 0; i < enemies.length; ++i)
    {
      if (enemies[i].getX() == playerTwo.getX() && enemies[i].getY() == playerTwo.getY())
      {
        //We have a collision
        if (playerLifeTwo > 0)
        {
          --playerLifeTwo;
        } else
        {
          playerLifeTwo = 0;
        }
      }
    }
    //Check food collisions
    for (int j = 0; j < food.length; ++j)
    {
      if (food[j].getX() == player.getX() && food[j].getY() == player.getY())
      {
        food[j].x = (int)random(1, width/2);
        food[j].y = (int)random(1, height/2);
        if (foodBonus + playerLife > maxLife)
        {
          playerLife = maxLife;
        } else
        {
          playerLife += foodBonus;
        }
      }
    }
    for (int j = 0; j < food.length; ++j)
    {
      if (food[j].getX() == playerTwo.getX() && food[j].getY() == playerTwo.getY())
      {
        food[j].x = (int)random(1, width/2);
        food[j].y = (int)random(1, height/2);
        if (foodBonus + playerLifeTwo > maxLife)
        {
          playerLifeTwo = maxLife;
        } else
        {
          playerLifeTwo += foodBonus;
        }
      }
    }
  }
}
