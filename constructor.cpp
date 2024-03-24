// expample of class constructor
#include <Rcpp.h>
#include <iostream>
using namespace Rcpp;
using namespace std;

class Rectangle {
  int height, width;  // declare memeber, privacy
public:
  Rectangle (int, int); //constructor of the same name as class
  int area() {return(height * width);}
};
  
Rectangle::Rectangle (int a, int b) {
  height = a; 
  width = b;
}
  
  
// [[Rcpp::export]]
int main() {
  
  Rectangle rect (3, 4); //an obj of class Rectangle, constructor Rectangle will automatically called
  Rectangle rectb (5, 6);
  
  cout << "rect area:" << rect.area() << endl;
  cout << "rectb area:" << rectb.area() << endl;
  
  return 0;
}

/*** R
main()
*/
