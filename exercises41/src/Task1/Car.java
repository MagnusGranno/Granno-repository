package Task1;

public class Car {


    private String make;
    private String model;
    private int year;
    private String bodystyle;
    Driver driver;

    public Driver getDriver() {
        return driver;
    }

    public void setDriver(Driver driver) {
        this.driver = driver;
    }

    public Car(String make, String model, int year, String bodystyle) {
        this.make = make;
        this.model = model;
        this.year = year;
        this.bodystyle = bodystyle;

    }


    @Override
    public String toString() {
        return "Make: " + make  +
                ", Model: " + model +
                ", Year: " + year +
                ", Bodystyle: " + bodystyle + " ";
    }
}
