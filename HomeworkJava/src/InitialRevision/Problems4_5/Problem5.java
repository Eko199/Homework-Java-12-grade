package InitialRevision.Problems4_5;

public class Problem5 {
    public static void main(String[] args) {
        Payable[] payables = new Payable[] {
                new Invoice("01", "a part", 5, 0.10),
                new SalariedEmployee("Viktor", "Pazhev", "69420", 99999.99),
                new CommissionEmployee("Martin", "Georgiev", "00000", 10.5, 99.99),
                new HoulryEmployee("Vasko", "Vaskov", "00001", 2, 90),
                new BasePlusCommissionEmployee("Zdravko", "Raev", "00073", 100.5, 50, 87)
        };

        for (Payable payable : payables) {
            System.out.println(payable);
            System.out.println("Payment: " + payable.getPaymentAmount());
            System.out.println();
        }
    }
}
