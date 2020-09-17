//5.a
String[] names = {"Magnus", "Johanne", "Jakob", "Laurits", "Katja", "Sofie", "Benjamin", "Tony", "Peter", "Silche"};
String name;
int findIndex;


void setup()
{
  Student[] students = new Student[10];
  intName(names, 0);
  findName(names, "Katja");
  findName(names, "Benjamin");
  findName(names, "Silche");
}
//5.b
String intName(String[] tmpStr, int tmpInt)
{
  String[] tmpNames = tmpStr;
  int counter = tmpInt;
  name = tmpNames[counter];
  println(name);
  return name;
}
//5.c
int findName(String[] tmpStr, String tmpName)
{
  String[] tmpNamesTwo = tmpStr;
  String tmpNameTwo = tmpName;

  for (int i = 0; i <= tmpStr.length - 1; i++)
  {
    findIndex = i;
    if (tmpNamesTwo[i] == tmpNameTwo)
    {
      println(findIndex);
      continue;
    }
  }

  return findIndex;
}
