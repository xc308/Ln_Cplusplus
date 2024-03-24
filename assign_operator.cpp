#include <Rcpp.h>
#include <iostream>
using namespace Rcpp;
using namespace std;

// This is a simple example of exporting a C++ function to R. You can


// [[Rcpp::export]]
int main() {
  
  int a, b;
  a = 10;
  b = 4;
  a = b; //a = 4, b = 4
  b = 7;
  
  cout << "a:";
  cout << a; 
  cout << "\n"; 
  cout << "b:";
  cout << b;
}



/*** R
main()
*/
