#include <Rcpp.h>
#include <iostream>
#include <string>
using namespace Rcpp;
using namespace std;

// This is a simple example of cin with string

// [[Rcpp::export]]
int main() {
  
  string mystr; //declare type
  cout << "What's your name?";
  getline(cin, mystr);
  cout << "Hello" << mystr << ".\n";
  cout << "What's your favourite team?";
  getline(cin, mystr);
  cout << "Oh, I like " << mystr << "too! \n";
  return 0;
}

/*** R
main()
*/
