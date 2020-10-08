package Task3;

public class Main {
    public static void main(String[] args)
    {
        Zoo zoo = new Zoo();
        Spider spider = new Spider(8);
        Cow cow = new Cow(4);
        Chicken chicken = new Chicken(2);

        //Add animals to zoo
        zoo.addAnimal(cow);
        zoo.addAnimal(chicken);
        zoo.addAnimal(spider);

        zoo.makeAllSounds();
        zoo.printNumberOfLegs();



    }
}
