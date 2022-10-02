package InitialRevision.Problems1_2;

public class Problem1 {
    public static void main(String[] args) {
//        Scanner sc = new Scanner(System.in);
//
//        System.out.println("Enter amount of shapes: ");
//        int amount = sc.nextInt();
//
//        Shape[] shapes = new Shape[amount];
//        for (int i = 0; i < amount; i++) {
//            System.out.println("Choose shape:\n" +
//                    "1 - Triangle\n" +
//                    "2 - Rectangle\n" +
//                    "3 - Square\n");
//            int choice = sc.nextInt();
//
//            switch (choice) {
//            }
//        }

        Shape[] shapes = new Shape[] {
                new Triangle(),
                new Rectangle(),
                new Square()
        };

        for (Shape shape : shapes) {
            System.out.println(shape);
            System.out.println();
        }
    }
}
