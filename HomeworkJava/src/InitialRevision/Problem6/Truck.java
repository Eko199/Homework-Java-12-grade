package InitialRevision.Problem6;

import java.time.Year;

public class Truck extends Car {
    private int tonnage;

    public Truck(String brand, int year, int mileage, double value, int tonnage) {
        super(brand, year, mileage, value);
        this.tonnage = tonnage;
    }

    public int getTonnage() {
        return tonnage;
    }

    public void setTonnage(int tonnage) {
        this.tonnage = tonnage;
    }

    @Override
    public double price() {
        int age = Year.now().getValue() - getYear();

        if (age <= 5)
            return getValue();
        else {
            if (tonnage <= 5)
                return getValue() * 0.3;
            else if (tonnage <= 10)
                return getValue() * 0.7;
            else
                return getValue() * 0.8;
        }
    }
}
