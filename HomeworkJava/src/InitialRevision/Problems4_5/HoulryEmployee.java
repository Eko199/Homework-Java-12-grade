package InitialRevision.Problems4_5;

public class HoulryEmployee extends Employee {
    private double wage;
    private double hours;

    public HoulryEmployee(String firstName, String lastName, String socialSecurityNumber, double wage, double hours) {
        super(firstName, lastName, socialSecurityNumber);
        this.wage = wage;
        this.hours = hours;
    }

    public double getWage() {
        return wage;
    }

    public void setWage(double wage) throws IllegalArgumentException {
        if (wage <= 0)
            throw new IllegalArgumentException("Wage can't be <= 0!");

        this.wage = wage;
    }

    public double getHours() {
        return hours;
    }

    public void setHours(double hours) throws IllegalArgumentException {
        if (hours <= 0 || hours > 168)
            throw new IllegalArgumentException("Hours should be in range (0; 168]!");

        this.hours = hours;
    }

    @Override
    public double getPaymentAmount() {
        return hours <= 40 ? wage * hours : 0 * wage + (hours - 40) * wage * 1.5;
    }

    @Override
    public String toString() {
        return "hourly employee: " + super.toString() +
                String.format("\nhourly wage: %.2f; hours worked: %f", wage, hours);
    }
}
