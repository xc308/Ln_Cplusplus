// factorial calculator
#include <Rcpp.h>
#include <iostream>
using namespace Rcpp;
using namespace std;

// [[Rcpp::export]]

long factorial (long a) {
  
  if(a > 1) {
    return (a * factorial (a - 1));
  } else return 1;
}


/*** R
factorial(55)
*/
