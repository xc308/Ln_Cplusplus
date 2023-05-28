#=====================
# Compound Data Types
#=====================

## Contents
    # Arrays
    # Character sequences
    # Pointers
    # Dynamic memory
    # Data structures
    # Other data types


#---------
# Arrays
#---------

# An array is a series of elements of the same type 
  # placed in contiguous memory locations 
    # that can be individually referenced by 
      # adding an index to a unique identifier.

# means five values of type int can be declared as an array
  # without having to declare 5 different variables (each with its own identifier)

# Instead, using an array, 
  # the five int values are stored in contiguous memory locations, 
  # and all five can be accessed using the same identifier, 
  # with the proper index.

# an array containing 5 integer values of type int called foo could be represented as
  #      0     1      2       3      4
  # foo 

  # each blank panel represents an element of the array
  # these are values of same type e.g., int

# These elements are numbered from 0 to 4, 
  # being 0 the first and 4 the last; In C++, 
  # the first element in an array is always numbered with a zero (not a one),

# Like a regular variable, an array must be declared before it is used
# A typical declaration for an array in C++ is:
  # type name [elements];
    #  type: a valid type (such as int, float...),
    #  name: a valid identifier
    #  elements: field (which is always enclosed in square brackets []), 
          # specifies the length of the array 
          # in terms of the number of elements.

# the foo array, with five elements of type int, can be declared as:
  #  int foo [5];

# NOTE: The elements field within square brackets [], 
  # representing the number of elements in the array, 
  # must be a constant expression

  # since arrays are blocks of static memory 
  # whose size must be determined at compile time, 
  # before the program runs.


#--------------------
# Initializing arrays
#--------------------

# By default, regular arrays of local scope 
  # (for example, those declared within a function) 
    # are left uninitialized

    # means This means that none of its elements are set to any particular value;
    # their contents are undetermined at the point the array is declared.

# But the elements in an array can be explicitly initialized to specific values when it is declared, by enclosing those initial values in braces {}.
  # int foo [5] = {0, 3, 7, 9, 6};

# If declared with less, the remaining elements are set to their default values 
  # (which for fundamental types, means they are filled with zeroes).

  # int foo [5] = {20, 3, 4}

  #      0     1     2      3       4
  # foo 20     3     4      0       0


# The initializer can even have no values, just the braces
  # int foo [5] = {};
  # all 5 elements are set to default value 0s


# When an initialization of values is provided for an array,
# C++ allows the possibility of leaving the square brackets empty []. 
    # the compiler will assume automatically a size for 
      # the array that matches the number of values included
        # between the braces {}:

    # int foo [] = {3, 40, 5, 29, 9}

# array foo would be 5 int long, since we have provided 5 initialization values.


#  universal initialization for arrays
  # there is no longer need for the equal sign between 
    # the declaration and the initializer. 
      # Both these statements are equivalent:
        # int foo [] = {20, 30, 40};
        # int foo [] {20, 30, 40};


# Static arrays, and those declared directly in a namespace 
  # (outside any function), are always initialized. 
    # If no explicit initializer is specified,  
      # all the elements are default-initialized 
        # (with zeroes, for fundamental types).



#-----------
# Accessing the values of an array
#-----------

# name[index]

#  stores the value 75 in the third element of foo:
  # foo [2] = 75;

# copies the value of the third element of foo to a variable called x
  # x = foo[2];

# if we write foo[5], we would be accessing the sixth element of foo, 
  # and therefore actually exceeding the size of the array.

# In C++, it is syntactically correct to 
  # exceed the valid range of indices for an array. 

# This can create problems, 
  # since accessing out-of-range elements do not cause errors 
    # on compilation, but can cause errors on runtime.

# two uses that brackets []:
    # 1.to specify the size of arrays when they are declared; 
    # 2.to specify indices for concrete array elements when they are accessed


library(Rcpp)
sourceCpp("array_example.cpp")


#-------------------------
# Multidimensional arrays
#-------------------------

# Multidimensional arrays can be described as "arrays of arrays"

# bidimensional array can be imagined as a two-dimensional table 
  # made of elements, all of them of a same uniform data type

#       0    1    2    3     4      5
# 0        
# 1
# 2

# an array of 3 arrays, each of which is of element of 5 int type
#  C++ syntax for this;
  # int jimmy [3][5];


# to reference the second element vertically and fourth horizontally in an expression
  # jimmy[1][3]

# Multidimensional arrays are not limited to two indices (i.e., two dimensions).
# They can contain as many indices as needed
  # the amount of memory needed for an array increases exponentially with each dimension.


# declares an array with an element of type char for each second in a century.
  # char centry [100][365][24][60][60]
  # This amounts to more than 3 billion char! 
  # this declaration would consume more than 3 gigabytes of memory!


# multidimensional arrays are just an abstraction for programmers, 
  # since the same results can be achieved with a simple array, 
    # by multiplying its indices:

  # int jimmy[3][5];
  # int jimmy[15];

# only difference that with multidimensional arrays, 
  # the compiler automatically remembers the depth of each imaginary dimension.

# the following two pieces of code produce the exact same result, 
  # but one uses a bidimensional array while the other uses a simple array:


# float Mark [2][3] = {{1, 3, 5}, {2, 4, 6}}
  # Mark[1][1] = 4; the 2nd array the 2nd element

  # 

#-------------
# Pointers
#-----------
# Another way to work with arrays is through the use of pointers.
# The value of an object of type pointer is a memory location.

# The address of a program component can
  # be accessed in C/C++ using the address operator &.

library(Rcpp)
sourceCpp("address&.cpp")

## Pointers are variables that allow us to work with addresses.
  # A pointer takes a memory location address as its value 
    # and provides the facility to access 
      # (i.e., read from and write to) that location.

# A pointer p to an object of type dataType is declared via the syntax:
  # dataType* p;
    # int* p; a pointer p to hold an address of a variable of type int
      # double* p;  a pointer p to hold an address of a variable of type double

# int* p; define a pointer to hold the address of a variable of type int
# int i = 1; 
# p = &i;
  # the result is the pointer p holds the address of int i in memory



#----------------------
# Character sequences
#----------------------

# The string class a very powerful class to handle and manipulate strings of characters
# strings are, in fact, sequences of characters,
# we can represent them also as plain arrays of elements of a character type.

# char foo [20];
  # is an array that can store up to 20 elements of type char

# this array has a capacity to store sequences of up to 20 characters
  # But this capacity does not need to be fully exhausted: the array can also accommodate shorter sequences

# By convention, the end of strings represented 
  # in character sequences is signaled by a special character: 
    # the null character, whose literal value can be written as '\0' 
      # (backslash, zero).



#-------------------------------------------------------
# Initialization of null-terminated character sequences
#-------------------------------------------------------

# arrays of characters are ordinary arrays, they follow the same rules as these.
# to initialize an array of characters with some predetermined sequence of characters,
# we can do it just like any other array:

# char myword[] = { 'H', 'e', 'l', 'l', 'o', '\0' };
  # declares an array of 6 elements of type char initialized 
    # with the characters that form the word "Hello" 
      # plus a null character '\0' at the end.

# arrays of character elements have another way to be initialized: 
  # using string literals directly.


# These are specified by enclosing the text between double quotes (")
  # "the result is: "
    # This is a string literal,

# Sequences of characters enclosed in double-quotes (") 
  # are literal constants.
    # And their type is a null-terminated array of characters

# This means that string literals always have a null character ('\0') 
  # automatically appended at the end.

#  the array of char elements called myword can be initialized with 
  # a null-terminated sequence of characters by either one of these two statements:

# char myword[] = { 'H', 'e', 'l', 'l', 'o', '\0' };
# char myword[] = "Hello";

# in both case, the array of char elements named myword decalared 
  # with a size of 6 char type elements, 
      # 5 characters and one null character \0 

# the string literal append the null character automatically

# are talking about initializing an array of characters when it is being declared, 
# and not about assigning values to them later (once they have already been declared)

# because string literals are regular arrays, 
  # canNOT be assigned values.

    # myword = "Bye";
    # myword[] = "Bye";
    # myword = { 'B', 'y', 'e', '\0' };

# each of its elements can be assigned a value individually. 
  # myword[0] = 'B';
  #  myword[1] = 'y';
  #  myword[2] = 'e';
  #  myword[3] = '\0';



#------------------------------------------------
# Strings and null-terminated character sequences
#------------------------------------------------

# string literals still always produce null-terminated character sequences,
# and not string objects.


# In the standard library, both representations for strings 
  # most functions requiring strings are overloaded to support both.

# cin and cout support null-terminated sequences directly, 
# allowing them to be directly extracted from cin or inserted into cout, 
# just like strings



#==============
# Pointers
#=============

# variables have been explained as locations in the 
  # computer's memory which can be accessed by their identifier 
    # (their name)

#  the program does not need to care about the physical address of the data in memory;
  # it simply uses the identifier


# a C++ program, the memory of a computer is like a succession of memory cells,
# each one byte in size, and each with a unique address.

# These single-byte memory cells are ordered in a way that 
  # allows data representations larger than one byte 
    # to occupy memory cells that have consecutive addresses.

# This way, each cell can be easily located in the memory by means of its unique address.
# memory cell with the address 1776 always follows immediately after
  # the cell with address 1775 and precedes the one with 1777, 
    # and is exactly one thousand cells after 776 and 
      # exactly one thousand cells before 2776.


# When a variable is declared, the memory needed to store its value 
  # is assigned a specific location in memory (its memory address). 


# C++ programs do not actively decide the exact memory addresses where its variables are stored.
# at task is left to the environment where the program is run
# an operating system that decides the particular memory locations on runtime

# it may be useful for a program to be able to obtain the address
# of a variable during runtime in order to access data cells 
# that are at a certain position relative to it.


#------------------------
# Address-of operator (&)
#------------------------

# the address of a variable can be obtained by preceding the name of
  # a variable with an ampersand sign (&), 
    # known as address-of operator.

# foo= &myvar;
  # assign the address of var myvar to foo

  # by preceding the name of the variable myvar with the 
    # address-of operator (&), we are no longer assigning 
      # the content of the variable itself to foo, but its address


# the actual address of a variable in memory cannot be known before runtime, 


# The variable that stores the address of another variable, 
  # is called a pointer. 

# Pointers are a very powerful feature of the language 
  # that has many uses in lower level programming.



#-------------------------
# Dereference operator (*)
#-------------------------

# a variable which stores the address of another variable is called a pointer.
# "point to" the variable whose address they store

# interesting property of pointers is that they can be used 
  # to access the variable they point to directly

# done by preceding the pointer name with the dereference operator (*).

# can be read as "value pointed to by".
  # baz = *foo;

  # read as the value pointed to by foo is assigned to baz
  #  actually assign the value 25 to baz, 
    # since foo is 1776, 
    # and the value pointed to by 1776 would be 25.

# foo refers to the value 1776, 
# *foo refers to the value stored at the address 1776, which is 25

# & is the address-of operator, read as "address of"
# * is the dereference operator, andread as "value pointed to by

# myvar == 25
# &myvar == 1776
# foo == 1776
# *foo == 25


















one <- matrix(rep(1, 16), nrow = 4, ncol = 4)
norm(one) # [1] 4












