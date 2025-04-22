#include <iostream>
#include "shapes.h" 

int main() {
  Square squa{3};  
  Rectangle rect{2, 3};  
  Circle circ{4};

  std::cout << "Square:\n";
  std::cout << "side = " << squa.getSide1() << "\n";
  std::cout << "area = " << squa.area() << "\n";
  std::cout << "perimeter = " << squa.perimeter() << "\n";
  std::cout << "\n";

  std::cout << "Rectangle:\n";
  std::cout << "length = " << rect.getSide1() << "\n";
  std::cout << "width = " << rect.getSide2() << "\n";
  std::cout << "area = " << rect.area() << "\n";
  std::cout << "perimeter = " << rect.perimeter() << "\n";
  std::cout << "\n";

  std::cout << "Circle:\n";
  std::cout << "radius = " << circ.getRadius() << "\n";
  std::cout << "area = " << circ.area() << "\n";
  std::cout << "circumference = " << circ.perimeter() << "\n";
}
