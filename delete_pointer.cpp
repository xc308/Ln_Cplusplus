// delet pointer
#include <Rcpp.h>
#include <new>
#include <iostream>
using namespace Rcpp;
using namespace std;


// [[Rcpp::export]]
int main() {
  int i, n;
  int * p;
  cout << "How many number you would like to type?";
  cin >> i;
  
  p = new (nothrow) int[i]; //define a dynamic memo for int array block of size i
  
  if (p == nullptr) {
    cout << "Sorry: memo cannot be allocated.";
  } else {
    for (n = 0; n < i; n++) {
      cout << "Enter a number, please: ";
      cin >> p[n];
    }
    cout << "You have entered: " ;
    for (n = 0; n < i; n++) {
      cout << p[n] << ", ";
    }
    delete[] p;
  }
  return 0;
}




/*** R
main()
*/
