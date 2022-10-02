package InitialRevision.Problem6;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
import java.util.Stack;

public class Problem6 {
    public static void main(String[] args) throws FileNotFoundException {
        Stack<Car> cars = new Stack<>();

        try (Scanner sc = new Scanner(new File("src\\InitialRevision\\Problem6\\data.txt"))) {
            while (sc.hasNext()) {
                cars.push(sc.nextInt() == 1
                        ? new Car(sc.next(), sc.nextInt(), sc.nextInt(), sc.nextDouble())
                        : new Truck(sc.next(), sc.nextInt(), sc.nextInt(), sc.nextDouble(), sc.nextInt()));
            }
        }

        while (!cars.empty()) {
            System.out.println(cars.pop());
        }
    }
}
