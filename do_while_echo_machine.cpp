#include <Rcpp.h>
#include <string>
#include <iostream>
using namespace Rcpp;
using namespace std;

// This is a simple example of echo machine that echo any text 
  // the user entered until they eneter goodbye

// [[Rcpp::export]]
int main() {
  
  string str;
  
  do {
    cout << "Enter text: ";
    getline(cin, str);
    cout << "You entered: " << str << ".\n";
  } while (str != "goodbye");
}


/*** R
main()
*/
