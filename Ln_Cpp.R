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

























































