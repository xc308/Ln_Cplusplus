// non-type template argument
#include <Rcpp.h>
#include <iostream>
using namespace Rcpp;
using namespace std;


// [[Rcpp::export]]
template <class T, int N>  //template args include class T and particular type of expression
T fixed_multiply (T val) {
  
  return val * N;
}  
  

int main() {
  
  cout << fixed_multiply <int, 2> (10) << "\n";
  cout << fixed_multiply <int, 3> (10) << "\n";
  
}  

/*** R
main()
*/
