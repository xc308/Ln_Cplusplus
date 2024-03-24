// static vs automatic storage
#include <Rcpp.h>
#include <iostream>
using namespace Rcpp;
using namespace std;

// [[Rcpp::export]]

int x;  //global variable: zero storage for sure

int main() {
  
  int y; // local variable; undertermined storage
  cout << x << "\n";
  cout << y << "\n";
  return 0; 
}

/*** R
main()
*/
