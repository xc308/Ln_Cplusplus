//address.cpp
#include <Rcpp.h>
#include <iostream>
using namespace Rcpp;
using namespace std;


// [[Rcpp::export]]

int main() {
  
  double v[4] = {1, 2, 3., 4};
  
  cout << "Address of v[0]" << &v[0] << "\n";
  cout << "Address of v[3]" << &v[3] << "\n";
  
  return 0;
}


/*** R
main()
*/
