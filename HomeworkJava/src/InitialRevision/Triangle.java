package InitialRevision;

import java.util.Arrays;

public class Triangle extends Shape {
    public Triangle() {
        points = new Point[] {
                new Point(0, 0),
                new Point(1, 0),
                new Point(0.5, Math.sqrt(3) / 2)
        };
    }

    public Triangle(Point[] points) {
        setPoints(points);
    }

    public Triangle(Triangle triangle) {
        setPoints(Arrays.copyOf(triangle.getPoints(), 3));
    }

    public double getSideA() {
        return Math.sqrt(Math.pow(points[0].getX() - points[1].getX(), 2)
                + Math.pow(points[0].getY() - points[1].getY(), 2));
    }

    public double getSideB() {
        return Math.sqrt(Math.pow(points[1].getX() - points[2].getX(), 2)
                + Math.pow(points[1].getY() - points[2].getY(), 2));
    }

    public double getSideC() {
        return Math.sqrt(Math.pow(points[2].getX() - points[0].getX(), 2)
                + Math.pow(points[2].getY() - points[0].getY(), 2));
    }

    @Override
    public void setPoints(Point[] points) {
        if (points.length != 3)
            throw new IllegalArgumentException("Points not for triangle!");

        this.points = points;
    }

    @Override
    public double getArea() {
        double p = getPerimeter() / 2;
        return Math.sqrt(p * (p - getSideA()) * (p - getSideB()) * (p - getSideC()));
    }

    @Override
    public double getPerimeter() {
        return getSideA() + getSideB() + getSideC();
    }

    @Override
    public String toString() {
        return "Triangle with " + super.toString();
    }
}
