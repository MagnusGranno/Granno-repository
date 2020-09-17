void setup()
{
  printEmptyLine();
  printString("Hello");
  printNameAge("Magnus", 23);
}

//1.a
void printEmptyLine()
{
  println();
}

//1.b
void printString(String str)
{
  println(str);
}

//1.c
void printNameAge(String name, int age)
{
  println("My name is " + name + ", I am " + age + " years old");
}
