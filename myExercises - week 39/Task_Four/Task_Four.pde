int[] div = new int[101];
//4.b
int[] arr = {1, 1, 1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 6, 6, 7, 8, 8, 9, 9, 10 };



void setup()
{
  printDiv(20);
  println(ranArr());
  recArr(4);
  fibunacci(1, 1);
}

//4.a
void printDiv(int a)
{
  for (int i = 0; i < div.length; i++)
  {
    div[i] = i;
    if (div[i] % a == 0)
    {
      println(div[i]);
    }
  }
}

//4.c
int ranArr()
{

  return (int)random(arr[0], arr[arr.length-1]);
}



//4.d
void recArr(int input)
{
  println(input);
  input -= 1;
  if (input > 0)
  {
    recArr(input);
  }
}



//4.e
void fibunacci(int a, int b)
{

  int A = a;
  int B = b;
  int t = 0;
  for (int i = 0; i < 10; i++)
  {
    print(A + " ");
    print(B + " ");

    t = A + B;
    print(t + " ");

    A = t+B;
    B = A+t;

    if (t > 10000 || A > 10000 || B > 10000)
    {
      break;
    }
  }
}
