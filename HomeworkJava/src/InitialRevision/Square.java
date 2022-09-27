package InitialRevision;

import java.util.Arrays;

public class Square extends Rectangle {
    public Square() {
        points = new Point[] {
                new Point(0, 0),
                new Point(1, 0),
                new Point(0, 1),
                new Point(1, 1)
        };
    }

    public Square(Point[] points) {
        setPoints(points);
    }

    public Square(Square sq) {
        setPoints(Arrays.copyOf(sq.getPoints(), 4));
    }

    @Override
    public double getArea() {
        return Math.pow(getSideA(), 2);
    }

    @Override
    public double getPerimeter() {
        return 4 * getSideA();
    }

    @Override
    public String toString() {
        return "Square" + super.toString().substring(9);
    }
}
