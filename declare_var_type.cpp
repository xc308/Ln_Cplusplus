#include <Rcpp.h>
#include <iostream>
using namespace Rcpp;
using namespace std;


// [[Rcpp::export]]
int main() {
  // declare variable type
  int a, b;
  int result;
  
  //process
  a = 3;
  b = 1; 
  a = a + 1;
  result = a - b;
  
  //print output result
  cout << result;
    
  //end program
  return 0;
}








// You can include R code blocks in C++ files processed with sourceCpp
// (useful for testing and development). The R code will be automatically 
// run after the compilation.
//

/*** R
timesTwo(42)
*/
