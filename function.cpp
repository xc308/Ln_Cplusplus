#include <Rcpp.h>
#include <iostream>
using namespace Rcpp;
using namespace std;

// This is a simple example of function


// [[Rcpp::export]]
int addition (int a, int b)
{
  int r;
  r=a+b;
  return r;
}


/*
int addition (int a, int b) { 
  
  int r;
  r = a + b;
  return r;
}


int main () { // C++ always start from main function
  int z;
  z = addition(3, 5);
  cout << "The result is " << z;
}
*/

/*** R
addition(3, 5)
*/
