package InitialRevision.Problem3;

import java.util.ArrayList;

public class Test {
    public static void main(String[] args) {
        ArrayList<CarbonFootprint> arr = new ArrayList<>();

        arr.add(new Bicycle("Az", "Tesla"));
        arr.add(new Building(10, 11, 12, 13));
        arr.add(new Car(Fuel.Motor_Gasoline, 60));

        for (CarbonFootprint element : arr) {
            System.out.println(element.getCarbonFootprint());
        }
    }
}
