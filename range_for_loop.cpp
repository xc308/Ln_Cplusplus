#include <Rcpp.h>
#include <string>
#include <iostream>
using namespace Rcpp;
using namespace std;

// This is a simple example of range for loop


// [[Rcpp::export]]
int main() {
  
  string str {"Alison"};
  
  for (char c : str) { // character variable c in range str
    cout << "[" << c << "]";
  }
  cout << "\n";
}

/*** R
main()
*/
