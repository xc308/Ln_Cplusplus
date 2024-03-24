// declare functions prototype
#include <Rcpp.h>
#include <iostream>
using namespace Rcpp;
using namespace std;

// [[Rcpp::export]]

void odd(int x); // prototype function
void even(int x); 


int main() {
  
  int i; 
  do {
    cout << "Please enter a number (0 to exit): ";
    cin >> i;
    odd(i);
  } while (i != 0);
  
  return 0;
}


void odd (int x) {
  if ((x % 2) != 0) {
    cout << "It's odd. \n";
  }else even(x);
}

void even (int x) {
  if ((x % 2) == 2) {
    cout << "It's even. \n";
  } else odd(x);
}



/*** R
main()
*/
