// inner block scope
#include <Rcpp.h>
#include <iostream>
using namespace Rcpp;
using namespace std;


// [[Rcpp::export]]

int main () {
  
  int x = 10; // declare in outer block
  int y = 20; 
  
  {
    int x;  // declare in inner block
    x = 50; 
    y = 50; 
    
    cout << "inner block : \n";
    cout << "x = " << x << "\n"; 
    cout << "y = " << y << "\n"; // y is NOT declared in the inner block, 
                              // 50 assignment replaces the original assignment
  }
  
  cout << "outer block: \n" ;
  cout << "x = " << x << "\n";
  cout << "y = " << y << "\n"; // outer y is replaced by 50 as y = 50 is 
                            // NOT local variable
 
 return 0; 
}


/*** R
main()
*/
