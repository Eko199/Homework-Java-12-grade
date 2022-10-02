package InitialRevision.Problems4_5;

public class SalariedEmployee extends Employee {
    private double weeklySalary;

    public SalariedEmployee(String firstName, String lastName, String socialSecurityNumber, double weeklySalary) {
        super(firstName, lastName, socialSecurityNumber);
        this.weeklySalary = weeklySalary;
    }

    public double getWeeklySalary() {
        return weeklySalary;
    }

    public void setWeeklySalary(double weeklySalary) throws IllegalArgumentException {
        if (weeklySalary <= 0)
            throw new IllegalArgumentException("Salary can't be <= 0!");

        this.weeklySalary = weeklySalary;
    }

    @Override
    public double getPaymentAmount() {
        return weeklySalary;
    }

    @Override
    public String toString() {
        return "salaried employee: " + super.toString() + String.format("\nweekly salary: %.2f", weeklySalary);
    }
}
