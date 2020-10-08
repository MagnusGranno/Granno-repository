package Task3;

public class Cow extends Animal{

    public Cow(int numberOfLegs) {
        super(numberOfLegs);
    }

    @Override
    public void makeSound() {
        System.out.println("Mooooooo");
    }
}
