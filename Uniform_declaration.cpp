// classes and uniform initialization
#include <Rcpp.h>
#include <iostream>
using namespace Rcpp;
using namespace std;


class Circle {
  double radius;
  
public:
  Circle(double r) {radius = r;}
  double circum() {return 2* radius * 3.14159265;}
};


// [[Rcpp::export]]
int main () {
  
  Circle foo (10.0); // function form initialization, easy to confused with function declaration, Circle foo ();
  Circle bar = 20.0; // sigle variable init
  Circle baz {30.0}; // uniform init
  
  cout << "foo's circumference: " << foo.circum() << "\n";
  return 0;
}



/*** R
main()
*/
