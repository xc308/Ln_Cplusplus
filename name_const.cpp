#include <Rcpp.h>
#include <iostream>
using namespace std;
using namespace Rcpp;


// [[Rcpp::export]]

#define PI 3.14159
#define NEWLINE '\n'

int main ()
{
  double r=5.0;               // radius
  double circle;
  
  circle = 2 * PI * r;
  cout << circle;
  cout << NEWLINE;
  
}

// You can include R code blocks in C++ files processed with sourceCpp
// (useful for testing and development). The R code will be automatically 
// run after the compilation.
//

/*** R
main()
*/
