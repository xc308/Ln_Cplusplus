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



