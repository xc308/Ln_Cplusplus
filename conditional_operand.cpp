#include <Rcpp.h>
#include <iostream>
using namespace Rcpp;
using namespace std;

// This is a simple example of exporting a C++ function to R. You can
//

// [[Rcpp::export]]
int main() {
  
  int a, b, c;
  
  a = 2;
  b = 7; 
  c = (a > b)? a:b;
  
  cout << c << "\n";
}



/*** R
main()
*/
