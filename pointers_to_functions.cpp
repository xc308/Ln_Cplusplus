// pointer to functions
#include <Rcpp.h>
#include <iostream>
using namespace Rcpp;
using namespace std;

// [[Rcpp::export]]

int addition (int a, int b) {
  return (a + b);
}

int substraction (int a, int b) {
  return (a - b);
}

int operation (int x, int y, int (*functocall) (int, int) ) {
  
  int g; 
  g = int (*functocall) (x, y); // functocall is a pointer to function
  return(g); 
}


int main() {
  
  int m, n;
  int (*minus)(int, int) = substraction; // minus is a pointer to function with 
                                        // 2 args, and is directly initialized to a function called substraction
  
  m = operation(7, 5, addition);
  n = operation(20, m, minus);
  cout << n << "/n";
  return 0;
  
}


/*** R

*/
