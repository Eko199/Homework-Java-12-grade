package InitialRevision.Problems4_5;

public class BasePlusCommissionEmployee extends CommissionEmployee {
    private double baseSalary;

    public BasePlusCommissionEmployee(String firstName, String lastName, String socialSecurityNumber,
                                      double grossSales, double commissionRate, double baseSalary) {
        super(firstName, lastName, socialSecurityNumber, grossSales, commissionRate);
        this.baseSalary = baseSalary;
    }

    public double getBaseSalary() {
        return baseSalary;
    }

    public void setBaseSalary(double baseSalary) throws IllegalArgumentException {
        if (baseSalary <= 0)
            throw new IllegalArgumentException("Base salary can't be <= 0!");

        this.baseSalary = baseSalary;
    }

    @Override
    public double getPaymentAmount() {
        return getCommissionRate() + getGrossSales() + baseSalary;
    }

    @Override
    public String toString() {
        return "base salaried commission employee: " + super.toString() +
                String.format(";\nbase salary: %.2f", baseSalary);
    }
}
