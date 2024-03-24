#include <Rcpp.h>
#include <iostream>
using namespace Rcpp;
using namespace std;


// This is a simple example of cin and cout

// [[Rcpp::export]]
int main() {
  
  int i; // declare variable type
  cout << "Please enter an integer number: ";
  cin >> i;
  cout << "You entered: " << i << ".\n";
  cout << "And the double of it is " << 2*i << ".\n";
  
  return 0;
}




// You can include R code blocks in C++ files processed with sourceCpp
// (useful for testing and development). The R code will be automatically 
// run after the compilation.
//

/*** R
main()
*/
