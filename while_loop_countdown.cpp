#include <Rcpp.h>
#include <iostream>
using namespace Rcpp;
using namespace std;

// This is a simple example of customising counting down using while loop


// [[Rcpp::export]]
int main() {
  
  int n = 10;
  
  while(n > 0) {
    cout << n << ", ";
    --n;
  }
  
  cout << "n is not positive! \n";
}


/*** R
main()
*/
