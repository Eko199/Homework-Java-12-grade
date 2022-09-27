package InitialRevision.Problem3;

enum Fuel {
    CNG, Diesel, LPG, Motor_Gasoline
}

public class Car implements CarbonFootprint {
    private Fuel fuelType;
    private double distance;

    public Car() { }

    public Car(Fuel fuelType, double distance) {
        this.fuelType = fuelType;
        this.distance = distance;
    }

    public Car(Car c) {
        this.fuelType = c.fuelType;
        this.distance = c.distance;
    }

    public Fuel getFuelType() {
        return fuelType;
    }

    public void setFuelType(Fuel fuelType) {
        this.fuelType = fuelType;
    }

    public double getDistance() {
        return distance;
    }

    public void setDistance(double distance) {
        this.distance = distance;
    }

    public double getCarbonFootprint() {
        return distance * switch (fuelType) {
            case CNG -> 0.05444;
            case Diesel -> 10.21;
            case LPG -> 5.68;
            case Motor_Gasoline -> 8.78;
        };
    }

    @Override
    public String toString() {
        return "Car uses "+fuelType+" and has driven "+distance+"km";
    }
}
