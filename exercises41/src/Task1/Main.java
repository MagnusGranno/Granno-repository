package Task1;

public class Main {
    public static void main(String[] args)
    {
        Driver driver = new Driver("Magnus", 23);
        Car car = new Car("Fiat", "Punto", 1995, "5-door hatchback");
        car.setDriver(driver);
        Car car1 = new Car("Toyota", "Yaris", 2020, "5-door hatchback");
        car1.setDriver(driver);
        System.out.println(car.toString() + car.driver.toString());
        System.out.println(car1.toString() + car1.driver.toString());


    }
}
