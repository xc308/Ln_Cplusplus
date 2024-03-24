#include <Rcpp.h>
#include <iostream>
using namespace Rcpp;
using namespace std;

// This is a simple example of stop count down before natrual ends
//

// [[Rcpp::export]]
int main() {
  
  for (int n = 10; n > 0; --n) {
    
    cout << n << "\n";
    
    if (n == 5) {
      cout << "sorry, count down aborted if n is 5.";
      break;
    }
  }
}


/*** R
main()
*/
