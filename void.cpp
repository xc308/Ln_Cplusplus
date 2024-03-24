// void function example
#include <Rcpp.h>
#include <iostream>
using namespace Rcpp;
using namespace std;

// [[Rcpp::export]]

void printmessage() {
  
  cout << "I'm a function without value outputs. \n So a void type!";
  
}


/*** R
printmessage()
*/
