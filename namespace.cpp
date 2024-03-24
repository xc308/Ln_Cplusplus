// namespaces
#include <Rcpp.h>
#include <iostream>
using namespace Rcpp;
using namespace std;


// [[Rcpp::export]]

namespace foo {

  int value() {
    return 5;
  }
}

namespace bar {
  
  const double pi = 3.456; 
  double value() {
    return 2 * pi;
  }
}

int main() {
  
  cout << foo::value() << "\n";
  cout << bar::pi << "\n";
  cout << bar::value() << "\n";
  return 0;
}


/*** R
main()
*/
