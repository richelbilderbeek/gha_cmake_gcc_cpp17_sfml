#include <cassert>
#include <iostream>

#include <SFML/Graphics/RectangleShape.hpp>

int main()
{
  static_assert("C++17"); //C++17 has a default message

  #ifndef __GNUC__
  #error This example assumes GCC
  #endif

  #ifdef __clang__
  #error No clang in this example please
  #endif

  ::sf::RectangleShape shape(::sf::Vector2f(100.0,250.0));
  if (shape.getSize().x < 000'050) return 1;
}
