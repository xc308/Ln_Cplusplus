// pointers as argument of a function
#include <Rcpp.h>
#include <iostream>
using namespace Rcpp;
using namespace std;


// [[Rcpp::export]]

void print_all (const int * start, const int * stop) {
  
  const int * current = start; 
  
  while (current != stop) {
    cout << *current << "\n";
    ++current; // although current is a const type of pointer, 
              // it only means the value it pointed to cannot be modified
              // the pointer itself is still able to be increamented, 
              // assign new address
  }
}


int main() {
  int numbers[] = {10, 20, 30};
  print_all(numbers, numbers + 2);
  return 0;
}


/*** R
main()
*/
