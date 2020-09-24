//1.a
int[] arr = {8, 9, 1, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2};

void setup()
{


  arrSort(arr);

  for (int i = 0; i < arr.length; i++)
  {
    println(arr[i]);
  }
}


//1.b
void arrSort(int[] tArr)
{
  int n = arr.length;
  int temp = 0;
  for (int i = 0; i < n; i++)
  {
    for (int j = 1; j < n-i; j++)
    {
      if (arr[j-1] > arr[j]) {
        temp = tArr[j-1];
        tArr[j-1] = tArr[j];
        tArr[j] = temp;
      }
    }
  }
}
