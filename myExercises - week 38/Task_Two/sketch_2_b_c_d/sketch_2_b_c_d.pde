int sum;
String upperCase;
boolean firstLetter;
void setup()
{
  calcSum(5, 6);
  println(sum);
  stringUpperCase("magnus");
  println(upperCase);
  firstLetter("Magnus");
  println(firstLetter);
}

//2.b
int calcSum(int a, int b)
{
  sum = a + b;
  return sum;
}
//2.c
String stringUpperCase(String str)
{
  upperCase = str.toUpperCase();
  return upperCase;
}
//2.d
boolean firstLetter(String bStr)
{
  char first = bStr.charAt(0);
  if (Character.isUpperCase(first))
  {
    firstLetter = true;
    return firstLetter;
  }
  return false;
}
