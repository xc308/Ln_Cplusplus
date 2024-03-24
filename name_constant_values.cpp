#include <Rcpp.h>
#include <iostream>
using namespace Rcpp;
using namespace std;

// This is a simple example of giving a name to a constant value:

// [[Rcpp::export]]
int main() {
  
  double pi = 3.1415926;
  char newline = '\n';
  
  double r = 5.0;
  double circle;
  
  circle = 2 * pi * r;
  cout << circle;
  cout << newline;
}



/*** R
main()
*/
