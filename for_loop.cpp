#include <Rcpp.h>
#include <iostream>
using namespace Rcpp;
using namespace std;

// This is a simple example of for loop

// [[Rcpp::export]]
int main() {
  
  
  for (int n = 10; n > 0; --n) {
    cout << n << ".\n";
  }
  
  cout << "the end. \n";
}

/*** R
main()
*/
