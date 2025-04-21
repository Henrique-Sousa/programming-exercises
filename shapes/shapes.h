class Shape {
    virtual const double area() const = 0;
    virtual const double perimeter() const = 0;
};

class Quadrilateral : public Shape {
  protected:
    double side1, side2, side3, side4;

  public:
    constexpr Quadrilateral(double s1, double s2, double s3, double s4)
      : side1(s1), side2(s2), side3(s3), side4(s4) {}

    const double getSide1() const { return side1; }
    const double getSide2() const { return side2; }
    const double getSide3() const { return side3; }
    const double getSide4() const { return side4; }

    void setSide1(double s) { side1 = s; }
    void setSide2(double s) { side2 = s; }
    void setSide3(double s) { side3 = s; }
    void setSide4(double s) { side4 = s; }

    virtual const double area() const = 0;
    const double perimeter() const override { return side1 + side2 + side3 + side4; }
};

class Rectangle : public Quadrilateral {
  public:
    constexpr Rectangle(double length, double width)
      : Quadrilateral(length, width, length, width) {}
    virtual const double area() const override { return side1 * side2; }
    const double perimeter() const override { return 2 * (side1 + side2); }
    // virtual const double diagonal () const = 0;
};

class Square : public Rectangle { 
  public:
    constexpr Square(double side)
      : Rectangle(side, side) {}

    const double area() const override { return side1 * side1; }
    const double perimeter() const override { return 4 * side1; }
};
