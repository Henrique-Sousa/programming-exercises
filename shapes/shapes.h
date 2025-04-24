#include <numbers>

using namespace std::numbers;


class Shape {
    virtual const double area() const = 0;
    virtual const double perimeter() const = 0;
};

class Quadrilateral : public Shape {
  protected:
    double side1, side2, side3, side4;

  public:
    Quadrilateral(double s1, double s2, double s3, double s4)
      : side1(s1), side2(s2), side3(s3), side4(s4) {}

    const double getSide1() const { return side1; }
    const double getSide2() const { return side2; }
    const double getSide3() const { return side3; }
    const double getSide4() const { return side4; }

    virtual const double area() const = 0;
    const double perimeter() const override { return side1 + side2 + side3 + side4; }
};

class Rectangle : public Quadrilateral {
  public:
    Rectangle(double length, double width)
      : Quadrilateral(length, width, length, width) {}
    virtual const double area() const override { return side1 * side2; }
    const double perimeter() const override { return 2 * (side1 + side2); }
};

class Square : public Rectangle { 
  public:
    Square(double side) : Rectangle(side, side) {}

    const double area() const override { return side1 * side1; }
    const double perimeter() const override { return 4 * side1; }
};

class Circle: public Shape {
  protected:
    double radius;

  public:
    Circle(double r) : radius(r) {}

    const double getRadius() const { return radius; }
    
    const double area() const override { return pi * radius * radius; }
    const double perimeter() const override { return 2 * pi * radius; }
};
