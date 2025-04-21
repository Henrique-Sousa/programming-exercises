#include <iostream>
#include "shapes.h" 

int main() {
  Square squa{3};  
  Rectangle rect{2, 3};  

  std::cout << squa.area() << "\n";
  std::cout << squa.perimeter() << "\n";

  std::cout << rect.area() << "\n";
  std::cout << rect.perimeter() << "\n";
}
