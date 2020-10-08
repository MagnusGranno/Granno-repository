package Task3;

public class Chicken extends Animal{
    public Chicken(int numberOfLegs) {
        super(numberOfLegs);
    }

    @Override
    public void makeSound() {
        System.out.println("Cluck Cluck");
    }
}
