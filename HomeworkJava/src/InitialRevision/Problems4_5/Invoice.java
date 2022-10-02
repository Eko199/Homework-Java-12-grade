package InitialRevision.Problems4_5;

public class Invoice implements Payable {
    private String partNumber;
    private String partDescription;
    private int quantity;
    private double pricePerItem;

    public Invoice(String partNumber, String partDescription, int quantity, double pricePerItem) {
        this.partNumber = partNumber;
        this.partDescription = partDescription;
        this.quantity = quantity;
        this.pricePerItem = pricePerItem;
    }

    public String getPartNumber() {
        return partNumber;
    }

    public void setPartNumber(String partNumber) {
        this.partNumber = partNumber;
    }

    public String getPartDescription() {
        return partDescription;
    }

    public void setPartDescription(String partDescription) {
        this.partDescription = partDescription;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) throws IllegalArgumentException {
        if (quantity <= 0)
            throw new IllegalArgumentException("Quantity can't be <= 0!");

        this.quantity = quantity;
    }

    public double getPricePerItem() {
        return pricePerItem;
    }

    public void setPricePerItem(double pricePerItem) throws IllegalArgumentException {
        if (pricePerItem < 0)
            throw new IllegalArgumentException("Price can't be negative!");

        this.pricePerItem = pricePerItem;
    }

    @Override
    public double getPaymentAmount() {
        return quantity * pricePerItem;
    }

    @Override
    public String toString() {
        return "Invoice " + partNumber +
                ":\n\t" + partDescription +
                "\n\tQuantity: " + quantity +
                String.format("\n\tPrice per item: %.2f", pricePerItem) +
                String.format("\n\tTotal price: %.2f", getPaymentAmount());
    }
}
