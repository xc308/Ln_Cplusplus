#include <Rcpp.h>
#include<string>
#include<iostream>
using namespace Rcpp;
using namespace std;


// [[Rcpp::export]]
int main() {
  
  string mystr;
  mystr = "Mark is missing me <3";
  cout << mystr << endl; // end line (endl) to print on a newline
  
  mystr = "Mark misses me before he sleeps almost every night!";
  cout << mystr << endl;
  
  return 0;
}


// You can include R code blocks in C++ files processed with sourceCpp
// (useful for testing and development). The R code will be automatically 
// run after the compilation.
//

/*** R
main()
*/
