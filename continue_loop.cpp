#include <Rcpp.h>
#include <iostream>
using namespace Rcpp;
using namespace std;


// This is a simple example of 

// [[Rcpp::export]]
int main() {
  
  for (int n = 10; n > 0; --n) {
    
    if (n == 5) { //skip the rest of this run of loop, start from the next run of the loop
      continue;   // if it's 5, then do not print output; continue the loop
      } 
    cout << n << ",";     
  }
  
  cout << "liftoff. \n";
}



/*** R
main()
*/
