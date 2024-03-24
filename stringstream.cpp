#include <Rcpp.h>
#include <iostream>
#include <sstream>
#include <string>
using namespace Rcpp;
using namespace std;


// [[Rcpp::export]]
int main() {
  
  string mystr;
  float price = 0;
  int quantity = 0;
  
  cout << "Enter price:";
  getline(cin, mystr);
  stringstream(mystr) >> price;
  cout << "Enter quantity:";
  getline(cin, mystr);
  stringstream(mystr) >> quantity;
  cout << "Total price: " << price * quantity << endl;
  return 0;
}


/*** R
main()
*/
