//#include <iostream> //instructs the preprocessor to include a section of standard C++ code, known as header iostream, that allows to perform standard input and output operations, 
#include <Rcpp.h>
using namespace Rcpp;


// [[Rcpp::export]]
int main() { // initiates a declaration of a function; type (int), name (main), a parenthese, with optional parameters
  std::cout << "Hello World!";
  std::cout << "I am studying C++ on Saturday night.";
}

// std::cout  identifies STanDard Character OUTput usually is computer screen
// << insersion operator that indicates what follows will be inserted into the std::cout
// "Hello world" the sentence within the quote is the content inserted into the standard output
// ; ends a statement of C++


// can alternatively comment using block comment /*blabla*/
/* std::cout identifies the standard character output (the computer screen)
 * << insersion operator indicates what follows will be inserted into the std cout
 * "Hello world" is the content inserted into the computer screen
 * each C++ statement ends with a semicolom; 
 */



/*std is a namespace
 * all elements in the standard library is declared within the namespace;
 * cout is a part of the std library, so shall be declared within the namespace;
 * 
 * To refer to the elements of the std library, 
 * either qualify every use of the element with prefixing std::
 * or introduce visability of its components via using declaration
 * using namespace std; stated after using namespace Rcpp;
 * then can directly use cout << "Hello world!"
 * and no need to use std::cout
 * 
 * pros of the explicit namespace guarantees name colission never happens
 */





/*** R
main()
*/
