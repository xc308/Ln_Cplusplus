//assing parameters by reference
#include <Rcpp.h>
#include <iostream>
using namespace Rcpp;
using namespace std;


// [[Rcpp::export]]
void duplicate (int& a, int& b, int& c) {
  a *= 2;
  b *= 2;
  c *= 2;
  
  cout << a << "\n";
  cout << b << "\n";
  cout << c << "\n";
}



/*** R
x=1; y=3; z=7
duplicate(x, y, z)
*/
