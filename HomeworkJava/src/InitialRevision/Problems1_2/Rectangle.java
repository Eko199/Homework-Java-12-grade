package InitialRevision.Problems1_2;

import java.util.Arrays;

public class Rectangle extends Shape {
    public Rectangle() {
        points = new Point[] {
                new Point(0, 0),
                new Point(1, 0),
                new Point(0, 2),
                new Point(1, 2)
        };
    }

    public Rectangle(Point[] points) {
        setPoints(points);
    }

    public Rectangle(Rectangle rect) {
        setPoints(Arrays.copyOf(rect.getPoints(), 4));
    }

    public double getSideA() {
        for (Point point1 : points) {
            for (Point point2 : points) {
                if (point1.getY() == point2.getY() && point1.getX() != point2.getX())
                    return Math.abs(point1.getX() - point2.getX());
            }
        }

        return -1;
    }

    public double getSideB() {
        for (Point point1 : points) {
            for (Point point2 : points) {
                if (point1.getX() == point2.getX() && point1.getY() != point2.getY())
                    return Math.abs(point1.getY() - point2.getY());
            }
        }

        return -1;
    }

    @Override
    public void setPoints(Point[] points) {
        if (points.length != 4)
            throw new IllegalArgumentException("Points not for rectangle!");

        this.points = points;
    }

    @Override
    public double getArea() {
        return getSideA() * getSideB();
    }

    @Override
    public double getPerimeter() {
        return 2 * (getSideA() + getSideB());
    }

    @Override
    public String toString() {
        return "Rectangle with " + super.toString();
    }
}
