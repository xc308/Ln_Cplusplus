//array example
#include <Rcpp.h>
#include <iostream>
using namespace Rcpp;
using namespace std;

// [[Rcpp::export]]


int main (){

  int foo [] = {1, 2, 3, 4, 5};
  int n, result = 0; 
  
  for (n = 0; n < 5; ++n) {
    result += foo[n];
  }
  
  cout << result << "\n";
  return 0;
}


/*** R
main()
*/
