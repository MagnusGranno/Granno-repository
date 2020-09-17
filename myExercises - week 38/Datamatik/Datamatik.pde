void setup()
{
  Teacher teacher = new Teacher("Maria", 35, true);
  Student studentMe = new Student("Magnus", 23, false, 'b');
  Student studentOne = new Student("Lukas", 23, false, 'b'); 
  
  println(teacher.name);
  println(studentMe.name + ", Datamatiker hold: " + studentMe.datamatikerTeam);
  println(studentOne.name + ", Datamatiker hold: " + studentMe.datamatikerTeam);
}
