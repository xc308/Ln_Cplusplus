#include <Rcpp.h>
#include <iostream>
using namespace Rcpp;
using namespace std;

// This is a simple example of switch(expression)

// [[Rcpp::export]]
switch(x) {
  
case 1:
  cout << "1";
  break;
  
case 2:
  cout << "2";
  break;
  
case 3:
  cout << "3";
  break;
  
default:
  cout << "x is not in (1:3).";
}






/*** R
timesTwo(42)
*/
