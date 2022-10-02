package InitialRevision.Problems1_2;

public class ComparableSquare extends Square implements Comparable<Square> {
    public ComparableSquare() {
        super();
    }

    public ComparableSquare(Point[] points) {
        super(points);
    }

    @Override
    public int compareTo(Square sq) {
        return Double.compare(getArea(), sq.getArea());
    }
}