package InitialRevision.Problems4_5;

public class CommissionEmployee extends Employee {
    private double grossSales;
    private double commissionRate;

    public CommissionEmployee(String firstName, String lastName, String socialSecurityNumber,
                              double grossSales, double commissionRate) {
        super(firstName, lastName, socialSecurityNumber);
        this.grossSales = grossSales;
        this.commissionRate = commissionRate;
    }

    public double getGrossSales() {
        return grossSales;
    }

    public void setGrossSales(double grossSales) throws IllegalArgumentException {
        if (grossSales <= 0)
            throw new IllegalArgumentException("Gross sales can't be <= 0!");

        this.grossSales = grossSales;
    }

    public double getCommissionRate() {
        return commissionRate;
    }

    public void setCommissionRate(double commissionRate) throws IllegalArgumentException {
        if (commissionRate <= 0 || commissionRate >= 1)
            throw new IllegalArgumentException("Commission rant should be in range (0; 1)!");

        this.commissionRate = commissionRate;
    }

    @Override
    public double getPaymentAmount() {
        return commissionRate * grossSales;
    }

    @Override
    public String toString() {
        return "commission employee: " + super.toString() +
                "\ngross sales: " + grossSales +
                ";\ncommission rate: " + commissionRate;
    }
}
