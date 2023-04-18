#========
# Ln C++
#========
install.packages("Rcpp")
library(Rcpp)


##-------------------------
# Structure of the program
##-------------------------
sourceCpp("Structure_of_program.cpp")

# the insertion operator (<<) indicates that 
  # what follows is inserted into std::cou



#---------------------
# Variables and types
#---------------------

# define variable as 
  # a portion of memory to store a value.


# Each variable needs a name that identifies it 
  # and distinguishes it from the others.


cppFunction('
  a = 2; 
  b = 3; 
  a = a + 1;
  result = a - b;
 ')


# variable names were a, b, and result
  # could have called the variables any names
  # as long as they were valid C++ identifiers


#-------------
# Identifiers
#-------------

# A valid identifier is a sequence of 
  # one or more letters, digits, or underscore characters (_).

# Spaces, punctuation marks, and symbols 
  # cannot be part of an identifier

# identifiers shall always begin with a letter.

# they can also begin with an underline character (_), 
  # but such identifiers are -on most cases- considered reserved 
  # for compiler-specific keywords or external identifiers
  # identifiers containing two successive underscore characters anywhere


# C++ uses a number of keywords to identify operations and data descriptions
#  identifiers created by a programmer cannot match these keywords.

# The standard reserved keywords that cannot be used for programmer created identifiers are:
  # alignas, alignof, and, and_eq, asm, auto, bitand, bitor, bool, break, case, 
  # catch, char, char16_t, char32_t, class, compl, const, constexpr, const_cast, 
  # continue, decltype, default, delete, do, double, dynamic_cast, else, enum, 
  # explicit, export, extern, false, float, for, friend, goto, if, inline, int, 
  # long, mutable, namespace, new, noexcept, not, not_eq, nullptr, operator, or, 
  # or_eq, private, protected, public, register, reinterpret_cast, return, short, 
  # signed, sizeof, static, static_assert, static_cast, struct, switch, template, 
  # this, thread_local, throw, true, try, typedef, typeid, typename, union, 
  # unsigned, using, virtual, void, volatile, wchar_t, while, xor, xor_eq



# Very important: The C++ language is a "case sensitive" language
  # an identifier written in capital letters is not equivalent to another one 
  # with the same name but written in small letters.

# the RESULT variable is not the same as the result variable or the Result variable
# These are three different identifiers identifiying three different variables.



#-------------------------
# Fundamental data types
#-------------------------

# The values of variables are stored in an unspecified location in the computer 
  # memory as zeros and ones. 

# the program needs to be aware of is the kind of data stored in the variable

# not the same to store a simple integer as it is to store a letter 
  # or a large floating-point number

# even though they are all represented using zeros and ones, 
  # they are not interpreted in the same way,

# and in many cases, they don't occupy the same amount of memory.

# Fundamental data types are basic types implemented directly by the language 
  # that represent the basic storage units supported natively by most systems

# mainly be classified into:
  # Character types: 
      # represent a single character, such as 'A' or '$'. 
      # The most basic type is char, which is a one-byte character. 

  # Numerical integer types:
      # can store a whole number value, such as 7 or 1024.
      # exist in a variety of sizes, and can either be signed or unsigned, 
      # depending on whether they support negative values or not


  # Floating-point types:
      # represent real values, such as 3.14 or 0.01, 
      # with different levels of precision, 
      # depending on which of the three floating-point types is used.

  # Boolean type:
      # boolean type, known in C++ as bool, can only represent one of two states,
        # true or false.

  # types described above (characters, integers, floating-point, and boolean) 
    # are collectively known as arithmetic types

  # two additional fundamental types exist:
    # void, which identifies the lack of type
    # nullptr, a special type of pointer

  
#--------------------------
# Declaration of variables
#--------------------------

# C++ requires every variable to be declared with its type before its first use
  # inform the compiler:
      # the size to reserve in memory
      # the type of value to interpret

  # syntax to declare a new variable:
    # type followed by its variable name (identifier)
    # Once declared, the variables a and mynumber can be used within the 
        # rest of their scope in the program

#int a; 
#float mynumber; 

    # if declaring more than one variable of the same type, 
      # they can all be declared in a single statement 
#int a, b, c;


#----------------------------
# Initialization of variables
#----------------------------


# the variable has a value at the moment when it's declared
  # called the initialization of the variable.

# In C++, there are three all equivalent ways to initialize variables:
  # c-like initialization:
      # appending an equal sign followed by the value to which the variable is initialized:
      # int x = 0;
  #



#-----------------------------------
# Type deduction: auto and decltype
#-----------------------------------

# When a new variable is initialized, 
  # the compiler can figure out what the type of the variable is automatically by the initializer. 
  # For this, it suffices to use auto as the type specifier for the variable:

  # int foo = 0;
  # auto bar = foo;


#------------------------
# Introduction to strings
#------------------------

# Variables of this type are able to store sequences of characters

# the program needs to include the header where 
  # the type is defined within the standard library (header <string>)

library(Rcpp)
sourceCpp("string.cpp")



#-----------
# Constants 
#-----------

# Constants are expressions with a fixed value.

### Literals ##
  # used to express particular values within the source code of a program
  # used to give specific values to variables or to express messages

  # can be classified into: 
   # integer, floating-point, characters, strings, Boolean, pointers, and user-defined literals.

  # By default, integer literals are of type int

  # certain suffixes be appended to an integer literal to specify a different integer type:
    # u or U	unsigned
    # l or L	long
    # ll or LL	long long

  # Unsigned may be combined with any of the other two in any order to form unsigned long or unsigned long long.


  # 75         // int
  # 75u        // unsigned int
  # 75l        // long
  # 75ul       // unsigned long 
  # 75lu       // unsigned long
  
  #  the suffix can be specified using either upper or lowercase letters.


# Floating Point Numerals
    # express real values, with decimals and/or exponents
    # an include either a decimal point, an e character 
    # or both a decimal point and an e character:
      # 3.14159    // 3.14159
      # 6.02e23    // 6.02 x 10^23
      # 1.6e-19    // 1.6 x 10^-19
      # 3.0        // 3.0  

    # The default type for floating-point literals is double
    # Floating-point literals of type float or long double can be specified by adding one of the following suffixes:
      # f or F	float
      # l or L	long double

    # 3.14159L   // long double
    # 6.02e23f   // float 


## Character and string literals:

  # Character and string literals are enclosed in quotes: 
  # 'z'  //single-character literals, single quotes
  #  'p'
  #  "Hello world"  //string literals, double quotes

  #  can also represent special characters:
    # \n	newline
    # \r	carriage return
    # \t	tab
    # \v	vertical tab
    # \b	backspace
    # \f	form feed (page feed)
    # \a	alert (beep)
    # \'	single quote (')
    # \"	double quote (")
    # \?	question mark (?)
    # \\	backslash (\)


  # All the character literals and string literals described above are made of characters of type char
  # 

# Other literals:
  # true and false are the two possible values for variables of type bool.
  # nullptr is the null pointer value.

  # bool foo = true;
  # bool bar = false;
  # int* p = nullptr;



#============================
# Typed constant expressions
#============================

# t is just convenient to give a name to a constant value:

library(Rcpp)
sourceCpp("name_constant_values.cpp")

sourceCpp("name_const.cpp")

#====================================
# Preprocessor definitions (#define)
#====================================

# Another mechanism to name constant values is the use of preprocessor definitions

# they have the form: #define identifier replacement
              # e.g.  #define PI 3.14159
                      #define NEWLINE '\n'

# After this directive, 
  # any occurrence of identifier in the code is interpreted as replacement, 
  # where replacement is any sequence of characters (until the end of the line). 
  # This replacement is performed by the preprocessor, 
  # and happens before the program is compiled, 
  # thus causing a sort of blind replacement: 
  # the validity of the types or syntax involved is not checked in any way



#===========
# Operators
#===========

# operate with variables and constant by using operators.
  
# Assignment operator (=)
  # x = y
  # assing the value of y to variable x

  # when the value of y changed later
    # it does not affect y

library("Rcpp")
sourceCpp("assign_operator.cpp")
  # notice final a was NOT affected by the change of b at last step
  # even a = b earlier


# Compound assignment
  #  modify the current value of a variable by performing an operation on it.
  # y += x : y = y + x
  # y -= x : y = y - x
  # x /= y : x = x / y
  # price *= (unit + 1) : price = price * (unit + 1)

sourceCpp("compound_operator.cpp")



#=================================
# Increment and decrement (++, --)
#=================================

#  the increase operator (++) and the decrease operator (--) 
  # increase or reduce by one the value stored in a variable. 
  # They are equivalent to +=1 and to -=1,


# ++x 
# x+=1
# x = x+1

# can be used both as a prefix and as a suffix
  # before the variable name (++x) or after it (x++).
  # in simple expressions like x++ or ++x, 
      # both have exactly the same meaning

  # in other expressions in which the result of the increment or decrement 
    # operation is evaluated, 
    # they may have an important difference in their meaning

  # the increase operator is used as a prefix (++x) of the value
    # the expression evaluates to the final value of x

  # a suffix (x++), 
    # expression evaluates to the value that x had before being increased.

  # e.g. x = 3;
        #y = ++x;
        # // x contains 4, y contains 4

      # x = 3;
        # y = x++;
        # // x contains 4, y contains 3

# In Example 1, the value assigned to y is the value of x after being increased. 
  # While in Example 2, it is the value x had before being increased.



#=====================================
# Relational and comparison operators
#=====================================

# Two expressions can be compared using relational and equality operators
# The result of such an operation is either true or false (i.e., a Boolean value)
  # ==	Equal to
  # !=	Not equal to
  # <	Less than
  # >	Greater than
  # <=	Less than or equal to
  # >=	Greater than or equal to


#====================
# Logical operators 
#====================

# ! returns the opposite Boolean value of evaluating its operand
# && corresponds to the Boolean logical operation AND,
  # yields true if both its operands are true, and false otherwise. 

# && OPERATOR (and)
  # a	   b	 a && b
  #true	true	true
  #true	false	false
  #false	true	false
  #false	false	false

# || corresponds to the Boolean logical operation OR
  # yields true if either of its operands is true, 
  # thus being false only when both operands are false. 

# || OPERATOR (or)
    #  a	 b	  a || b
    # true	true	true
    # true	false	true
    # false	true	true
    # false	false	false

# short-circuit evaluation:
  # &&: if the left side operand is false, the combined result is false
          # then right side operand never evaluated
  # ||: if the right side operand is ture, the combined result is true
          # then right side operand never evaluated


# e.g. if ( (i<10) && (++i<n) ) { /*...*/ }  
    # if the left side is false, then the right side is never evaluated


#===================================
# Conditional ternary operator ( ? )
#===================================

# The conditional operator evaluates an expression, 
  # returning one value if that expression evaluates to true, 
  # and a different one if the expression evaluates as false. 

# condition ? result1 : result2

# If condition is true, the entire expression evaluates to result1, 
  # and otherwise to result2.

  # e.g. 5>3 ? a : b  

library("Rcpp")
sourceCpp("conditional_operand.cpp")


#=====================
# Comma operator ( , )
#=====================

# a = (b=3, b+2);

  # 1st assign b = 3, then b+2 evaluate, then assign 3+2 to a;


#=========================================
# Bitwise operators ( &, |, ^, ~, <<, >> )
#=========================================

# Bitwise operators modify variables considering 
  # the bit patterns that represent the values they store.

# operator	asm equivalent	description
#&	AND	Bitwise AND
# |	OR	Bitwise inclusive OR
#^	XOR	Bitwise exclusive OR
#~	NOT	Unary complement (bit inversion)
#<<	SHL	Shift bits left
#>>	SHR	Shift bits right


#================================
# Explicit type casting operator
#================================
# Type casting operators allow to convert a value of a given type 
  # to another type
# several ways to do this in C++. 
#  simplest one:
  #  precede the expression to be converted by the new type enclosed between parentheses (()):

      # 
      #int i;
      #float f = 3.14;
      #i = (int) f;


# alternatively
  # the functional notation preceding the expression to be 
  # converted by the type and enclosing the expression between
  # parentheses:
    # i = int(f);


#========
# sizeof
#========

# his operator accepts one parameter, which can be either a type or a variable, 
  # and returns the size in bytes of that type or object:

# x = sizeof (char);
  # x is assigned the value 1, 
  # because char is a type with a size of one byte


#=======
# Others
#=======
# like the ones referring to pointers 
  # or the specifics for object-oriented programming.

#=========================
# Precedence of operators
#=========================

# x = 5 + (7 % 2);    // x = 6 (same as without parenthesis)
# x = (5 + 7) % 2;    // x = 0 

# When an expression has two operators with the same precedence level, 
  # grouping determines which one is evaluated first: either left-to-right or right-to-left.

# Enclosing all sub-statements in parentheses improves code readability.


#====================
# Basic Input/Output
#====================

# standard library provides many additional ways to interact 
  # with the user via its input/output features.

# C++ uses a convenient abstraction called streams to 
  # perform input and output operations in sequential media 
    # such as the screen, the keyboard or a file

# A stream is an entity where a program can either 
  # insert or extract characters to/from. 

# All we need to know is that streams are a 
  # source/destination of characters,
  #  these characters are provided/accepted sequentially (i.e., one after another).

# The standard library defines a handful of stream objects 
  # that can be used to access what are considered the 
    # standard sources and destinations of characters 
      # by the environment where the program runs:


# stream	description
#   cin	  standard input stream
#   cout	standard output stream
#   cerr	standard error (output) stream
#   clog	standard logging (output) stream


#-----------------------
# Standard output (cout)
#-----------------------

# The standard output by default is the screen, 
  # and the C++ stream object defined to access it is cout.

# For formatted output operations,
  # cout is used together with the insertion operator, which is written as <<

# cout << "Output sentence"; // prints Output sentence on screen
# cout << 120;               // prints number 120 on screen
# cout << x;                 // prints the value of x on screen 

# cout << "Hello";  // prints Hello string
# cout << Hello;    // prints the content of variable Hello

# Multiple insertion operations (<<) may be chained in a single statement:
  # cout << "This " << " is a " << "single C++ statement";

# Chaining insertions is especially useful to 
  # mix literals and variables in a single statement:
  # cout << "I am " << age << " years old and my zipcode is " << zipcode;


# What cout does not do automatically is add line breaks at the end
  # To insert a line break, 
    # a new-line character shall be inserted at the exact position 
      # the line should be broken.


# cout << "First sentence.\n";
# cout << "Second sentence.\nThird sentence.";



#---------------------
# Standard input (cin)
#---------------------

#  the standard input by default is the keyboard, 
    # and the C++ stream object defined to access it is cin.

# For formatted input operations, 
  # cin is used together with the extraction operator, 
    # which is written as >>

# This operator is then followed by the variable 
  # where the extracted data is stored

# int age;  // declares a variable of type int called age
# cin >> age; //extracts from cin a value to be stored in age.
  
# This operation makes the program wait for input from cin
# this means that the program will wait for the user 
  # to enter some sequence with the keyboard.

# note that the characters introduced using the keyboard are only 
  # transmitted to the program when the ENTER (or RETURN) key 
    # is pressed. 

# Once the statement with the extraction operation on cin is reached, 
# the program will wait for as long as needed until some input 
  # is introduced.

# The extraction operation on cin uses the type of the variable 
  # after the >> operator to determine how it interprets the 
    # characters read from the input; if it is an integer, 
      # the format expected is a series of digits, 
        # if a string a sequence of characters


install.packages("Rcpp")
library(Rcpp)

sourceCpp("cin_cout_example.cpp")
812

#  this method also has a big drawback
  # user enters something else that cannot be interpreted as an integer
  # the extraction operation fails

#  this, by default, lets the program continue without setting a value for variable i, producing undetermined results if the value of i is used later.
#  very poor program behavior

# Most programs are expected to behave in an expected manner no matter 
  # what the user types, handling invalid values appropriately. 


# Only very simple programs should rely on values 
  # extracted directly from cin without further checking
  # how stringstreams can be used to have better control over user input.

# Extractions on cin can also be chained to request more than one datum in a single statement:
  # cin >> a >> b;
  # This is equivalent to:
    # cin >> a;
    # cin >> b;

# In both cases, the user is expected to introduce two values,
  # one for variable a, and another for variable b

# Any kind of space is used to separate two consecutive input 
  # operations; 
  # this may either be a space, a tab, or a new-line character.


#-----------------
# cin and strings
#-----------------

# The extraction operator can be used on cin to get 
  # strings of characters in the same way as with 
    # fundamental data types:


  # string mystring;
  # cin >> mystring;


# cin extraction always considers spaces 
  # (whitespaces, tabs, new-line...) 
    # as terminating the value being extracted, 
      # and thus extracting a string means 
        # to always extract a single word, 
          # not a phrase or an entire sentence.


# To get an entire line from cin,
  # there exists a function, called getline, 
    # that takes the stream (cin) as first argument,
      # and the string variable as second.

# should always use getline to get input in your console 
  # programs instead of extracting from cin.

library(Rcpp)
sourceCpp("cin_string_getline.cpp")


#--------------
# stringstream
#--------------

# The standard header <sstream> defines a type called 
  # stringstream that allows a string to be treated as 
  # a stream, and thus allowing extraction or insertion 
  # operations from/to strings in the same way as 
  # they are performed on cin and cout.

  # most useful to convert strings to numerical values and vice versa

# string mystr ("1024");
# int myint;
# stringstream(mystr) >> myint;

library(Rcpp)
sourceCpp("stringstream.cpp")


# acquire numeric values from the standard input indirectly:
  # Instead of extracting numeric values directly from cin, 
  # we get lines from it into a string object (mystr), 
  # and then we extract the values from this string into 
  # the variables price and quantity

  # Once these are numerical values, 
  # arithmetic operations can be performed on them, 
  # such as multiplying them to obtain a total price.







