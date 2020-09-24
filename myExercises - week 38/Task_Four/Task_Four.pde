//4.a
int[] intA = {3, 7, 13};
String[] stringA = {"Hej", "Farvel", "Vi ses"};
boolean[] booleanA = {true, false};

//4.e
import java.util.Arrays;
int[] unSorted = {9, 2, 5, 3, 63};
int[] sorted;


//4.c
int sum;

//4.d
double average;

void setup()
{
  //4.b
  arrString(stringA);
  //4.c
  intSum(intA);
  println(sum);
  //4.d
  calcAverage(unSorted);
  println(average);
  //4.e
  sortArray(unSorted);
  println(sorted);
}
//4.b
void arrString(String[] aS)
{
  String[] arrString = aS;
  for (String tmpS : arrString)
  {
    println(tmpS);
  }
}
//4.c
int intSum(int[] tmpInt)
{
  int[] inArr = tmpInt;
  for (int number : inArr)
  {
    sum += number;
  }
  return sum;
}

//4.d
double calcAverage(int[] tmpCalc)
{
  double math = 0;
  int[] calc = tmpCalc;
  for (int i = 0; i < tmpCalc.length; i++)
  {
    math += calc[i];
  }
  average = math/calc.length;
  return average;
}

//4.e
int[] sortArray(int[] tmpArr)
{
  sorted = tmpArr;

  Arrays.sort(sorted);

  return sorted;
}
