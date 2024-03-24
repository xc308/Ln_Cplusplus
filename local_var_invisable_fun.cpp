// global variable and local variable
#include <Rcpp.h>
using namespace Rcpp;
using namespace std;


// [[Rcpp::export]]

int foo; // global variable

int some_fun (){
  
  int bar;  // local variable
  bar = 2;
}

int other_fun () {
  
  foo = 2; // ok, foo is global variable
  bar = 3; // wrong, bar is a local variable in some_fun not for this function.
          // bar is not visible from this function.
}



/*** R

*/
