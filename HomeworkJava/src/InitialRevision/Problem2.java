package InitialRevision;

public class Problem2 {
    public static void main(String[] args) {
        ComparableSquare sq1 = new ComparableSquare();
        ComparableSquare sq2 = new ComparableSquare(new Point[] {
                new Point(0, 0),
                new Point(3, 0),
                new Point(0, 3),
                new Point(3, 3)
        });

        System.out.println("Square 1:");
        System.out.println(sq1);
        System.out.println();
        System.out.println("Square 2:");
        System.out.println(sq2);
        System.out.println();
        System.out.println();
        System.out.print("The bigger square is square ");
        System.out.println(sq1.compareTo(sq2) > 0 ? 1 : 2);
    }
}
