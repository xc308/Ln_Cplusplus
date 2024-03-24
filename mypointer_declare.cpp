// my first pointer
#include <Rcpp.h>
#include <iostream>
using namespace Rcpp;
using namespace std;


// [[Rcpp::export]]

int main(){
  
  int firstvalue, secondvalue;
  int * mypointer; // declare a pointer the data type it points to is int
  
  mypointer = &firstvalue;
  *mypointer = 10;  // dereference the pointer 
  
  mypointer = &secondvalue;
  *mypointer = 20;
  
  cout << "first value is " << firstvalue << "\n";
  cout << "second value is " << secondvalue << "\n";
  
  return 0;
}





/*** R
main()
*/
