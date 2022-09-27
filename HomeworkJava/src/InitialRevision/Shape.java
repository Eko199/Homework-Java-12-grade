package InitialRevision;

public abstract class Shape {
    protected Point[] points;

    public Point[] getPoints() {
        return points;
    }

    public abstract void setPoints(Point[] points);

    public abstract double getArea();

    public abstract double getPerimeter();

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder("points:\n");

        for (Point point : points) {
            sb.append('\t').append(point.toString()).append('\n');
        }

        sb.append("\nArea: ").append(String.format("%.2f", getArea()));
        sb.append("\nPerimeter: ").append(String.format("%.2f", getPerimeter()));

        return sb.toString();
    }
}
