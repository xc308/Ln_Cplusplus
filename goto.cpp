#include <Rcpp.h>
#include <iostream>
using namespace Rcpp;
using namespace std;

// This is a simple example of using goto
//

// [[Rcpp::export]]
int main() {
  
  int n = 10;
  mylable:
    cout << n << ",";
  n--; 
  
  if (n > 0) goto mylable;  // if n > 0, go to mylable 
  cout << "lift! \n";
}


/*** R
main()
*/
