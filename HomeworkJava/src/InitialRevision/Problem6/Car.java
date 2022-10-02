package InitialRevision.Problem6;

import java.time.Year;

public class Car {
    private String brand;
    private int year;
    private int mileage;
    private double value;

    public Car(String brand, int year, int mileage, double value) {
        this.brand = brand;
        this.year = year;
        this.mileage = mileage;
        this.value = value;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getMileage() {
        return mileage;
    }

    public void setMileage(int mileage) {
        this.mileage = mileage;
    }

    public double getValue() {
        return value;
    }

    public void setValue(double value) {
        this.value = value;
    }

    public double price() {
        int age = Year.now().getValue() - year;

        if (age <= 3)
            return value * 0.8;
        else if (age <= 6)
            return value * 0.6;
        else
            return value * 0.3;
    }

    @Override
    public String toString() {
        return String.format("%s: %d km, %.2f", brand, mileage, Math.round(price() * 100.0) / 100.0);
    }
}
