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



#-------------------
# Declaring pointers
#-------------------

# a pointer has different properties when it points to a char 
    # than when it points to an int or a float

# Once dereferenced, the type needs to be known.

# the declaration of a pointer needs to include the data type 
  # the pointer is going to point to.


# the declaration of pointers follows this syntax:
  # type * name;

  # type is the data type pointed to by the pointer
  # This type is not the type of the pointer itself, 
  # but the type of the data the pointer points to

# int * number; 
# char * character;
# double * decimals;

# pointers are likely going to occupy the same amount of space in memory
# the data to which they point to do not occupy the same amount of 
  # space nor are of the same type: 
    # the first one points to an int, 
    # the second one to a char, 
    # and the last one to a double.

# although these three example variables are all of them pointers, 
  # they actually have different types: int*, char*, and double* 
    # respectively, depending on the type they point to.

# asterisk (*) used when declaring a pointer only means that it is a pointer
# should not be confused with the dereference operator 


library(Rcpp)
sourceCpp("mypointer_declare.cpp")

# to specify two pointers on the fly"
  # int * p1, * p2;

# differenciate the 
  # int * p1, p2;

# the 1st is pointer with data type it point to being int
# the 2nd is an int number p2
# put one asterisk per pointer is enough for most pointer users 
  # interested in declaring multiple pointers per statement.

# or even better: use a different statement for each variable.


#---------------------
# Pointers and arrays
#---------------------

# concept of arrays is related to that of pointers
# arrays work very much like pointers to their first elements, 
# and,an array can always be implicitly converted to the pointer of the proper type.

# int myarray [20];
# int * mypointer;
# mypointer = myarray;

# mypointer and myarray would be equivalent and would have very similar properties.
# he main difference being that mypointer can be assigned a different address, 
# whereas myarray can never be assigned anything, 
# and will always represent the same block of 20 elements of type int.

# the following assignment would not be valid:
# myarray = mypointer;
    # a[5] = 0;       // a [offset of 5] = 0
    # *(a+5) = 0;     // pointed to by (a+5) = 0  

# These two expressions are equivalent and valid


#------------------------
# Pointer initialization
#------------------------

# Pointers can be initialized to point to specific locations at the very moment they are defined:
  # int myvar;
  # int * mypointer (declare a pointer) = &myvar (get the location of myvar)

# the same as:
  # int myvar; 
  # int * mypointer; 
  # mypointer = &myvar; // initialize the pointer with address 


# differentiate:
  # int myvar;
  # int * myptr;
  # *myptr = &myvar;


#---------------------
# Pointer arithmetics
#---------------------

# only addition and subtraction operations are allowed
# both addition and subtraction have a slightly different behavior with pointers
# according to the size of the data type to which they point.

# data types have different sizes
  # char always has a size of 1 byte, 
  # short is generally larger than that, 
  # int and long are even larger; 
  # the exact size of these being dependent on the system. 

# we define three pointers in this compiler:

  # char *mychar; 
  # short *myshort;
  # long *mylong;

# if they point to the memory locations 1000, 2000, and 3000, 
  # then 
    # ++mychar; // point to 1001
    # ++myshort; // point to 2002
    # ++mylong; // point to 3004

# even though they have each been incremented only once.

  # Reason: when adding one to the pointer, 
    # the pointer must point to the next element of the same type
      # accounting the size of the type in bytes of the previous element

  # mychar is size 1
    # next pointer = 1000 + 1

  # myshort is size 2
    # next pointer = 2000 + 2

  # mylong is size 4
    # next pointer = 3000 + 4


# *p++
  # the same as *(p++)
  # to increase the value of p, but ++ is used as postfix,
    # the whole expression is evaluated as the value pointed originally by the pointer 

# four possible combinations of the dereference operator:
  # *p++ // same as *(p++): increment pointer, dereference unincremented address
  # *++p // same as *(++p):increment pointer, deref increamented address
  # ++*p // same as ++(*p): deref the pointer, increament the value it points to
  # (*p)++ // deref the pointer, post-increament the value it points to


# ++ has a higher precedence than *, both p and q are incremented
  # but both increment operators (++) are used as postfix and not prefix,
  # the value assigned to *p is *q 
  # before both p and q are incremented
  # and then both are incremented.

# be roughly equivalent to
  # *p = *q;
  # ++p;
  # ++q;


#--------------------
# Pointers and const
#--------------------

# declare pointers that can access the pointed value to read it, 
  # but not to modify it.

# it is enough with qualifying the type as const (pointed to by the pointer)

  # int x; 
  # int y = 10; 
  # const int * p = &y;
  # x = *p;
  # *p = x; // error: pointer p is const type the value they point to cannot modify 
   #         // # but the pointer itself can still be increament, assign different address

# One of the use of pointers to const elements is as function parameters
  # a function that takes a pointer to non-const as parameter can modify the value passed as argument, 
  # while a function that takes a pointer to const as parameter cannot.


library(Rcpp)
sourceCpp("pointers_as_arg_fun.cpp")


# the const qualifier can either precede or follow the pointed type, 
  # with the exact same meaning:
    # const int * p2a = &x;  //      non-const pointer to const int
    # int const * p2b = &x;  // also non-const pointer to const int


#---------
# Pointers and string literals
#---------

# string literals are arrays containing null-terminated character sequences
#  string literals have been used to be directly inserted into cout, 
  # to initialize strings and to initialize arrays of characters.

# can also be accessed directly. 

# String literals are arrays of the proper array type to contain 
  # all its characters plus the terminating null-character,
  # with each of the elements being of type const char 

# const char * foo = "hello";
# This declares an array with the literal representation for "hello",
 # then a pointer to its first element is assigned to foo. 

# The pointer foo points to a sequence of characters

# because pointers and arrays behave essentially in the same way in expressions, 
# foo can be used to access the characters in the same way arrays of 
  # null-terminated character sequences are.

# *(foo+4)
# foo[4]


#-----------
# Pointers to pointers
#-----------

# use of pointers that point to pointers, in its turn, point to data 
# The syntax simply requires an asterisk (*) for each level of indirection 
  # in the declaration of the pointer:

  # char a; 
  # char * b;
  # char ** c; 
  # a = "z";
  # b = &a;
  # c = &b;

# a has adress 7728
  # b contains 7728 at momery location 8804
    # c contains 8804

# variable c, which is a pointer to a pointer

  # c is of type char ** and value 8804
  # *c is of type char * and value 7728
  # **c is of type char and value "z"


#-------------
# void pointers
#-------------
# void: empty, null

#  void type of pointer is a special type of pointer
#  void represents the absence of type
# void pointers are pointers that point to a value that has no type 
  # also an undetermined length and undetermined dereferencing properties)

  # gives void pointers a great flexibility, by being able to point to any data type
  # from an integer value or a float to a string of characters. 

  # they have a great limitation: 
    # the data pointed to by them cannot be directly dereferenced 
    # any address in a void pointer needs to be transformed into some other pointer type that points to a concrete data type before being dereferenced.

# One of its possible uses may be to pass generic parameters to a function.


#---------
# Invalid pointers and null pointers
#---------

# pointers are meant to point to valid addresses, 
  # such as the address of a variable or 
  # the address of an element in an array

# but pointers can actually point to any address, 
  # including addresses that do not refer to any valid element.

# Typical examples of this are uninitialized pointers 
  # and pointers to nonexistent elements of an array:

# int * p;   // uninitialized p
# int myarray[10];
# int * q = myarray+20;  // element out of bounds 

# Neither p nor q point to addresses known to contain a value, 
  # but none of the above statements causes an error.

# pointers are allowed to take any address value, 
  # no matter whether there actually is something at that address or not.

# What can cause an error is to dereference such a pointer 
  # (i.e., actually accessing the value they point to). 

# Accessing such a pointer causes undefined behavior, 
  # ranging from an error during runtime to accessing some random value.

# But, sometimes, a pointer really needs to explicitly point to nowhere, 
  # and not just an invalid address

# there exists a special value that any pointer type can take: 
  # the null pointer value

# This value can be expressed in C++ in two ways: 
  # either with an integer value of zero, 
  # or with the nullptr keyword:

# int * p = 0;
# int * q = nullptr;

# both p and q are null pointers, 
  # meaning that they explicitly point to nowhere, 
    # and they both actually compare equal: 
      # all null pointers compare equal to other null pointers. 

# constant NULL be used in older code to refer to the null pointer value:
  # int * r = NULL; // older code


# null pointer vs void pointer
  # null pointer: a value that any pointer can take and 
              # to represent that it is pointing to "nowhere",
  # void pointer: point to somewhere but without specific type predetermined
              # the type of data it points to is empty


# null pointer: the value repsents that the pointer points to nowhere
# void pointer: the type of data it points to is empty not predetermined;
                # needs to be transformed to a concrete data type
                  # before it is dereference. 


#---------
# Pointers to functions
#---------

# The typical use of this is for passing a function as an argument to another function.
# Pointers to functions are declared with the same syntax as 
  # a regular function declaration, 
    # except that the name of the function is enclosed between 
      # parentheses () and an asterisk (*) is inserted before the name:




#================
# Dynamic memory
#================


# two standard mechanisms to check 
  # if the allocation was successful:

# One is by handling exceptions
# an exception of type bad_alloc is thrown when the allocation fails.

# is the method used by default by new, and is the one used in a declaration like:

# foo = new int [5];  // if allocation fails, an exception is thrown  

# The other method is known as nothrow:
  # the pointer returned by new is a null pointer, and the program continues its execution normally.

# pecified by using a special object called nothrow,
  # foo = new (nothrow) int [5];

# if the allocation of this block of memory fails, the failure can be detected by checking if foo is a null pointer:
  # int * foo;
  # foo = new (nothrow) int [5];
  # if (foo == nullptr) {
    # // error assigning memory. Take measures.
#}

# This nothrow method is likely to produce less 
  # efficient code than exceptions, 
    # since it implies explicitly checking 
      # the pointer value returned after each 
        # and every allocation.

# Therefore, the exception mechanism is generally preferred,
# Still, most of the coming examples will use the nothrow mechanism due to its simplicity.



one <- matrix(rep(1, 16), nrow = 4, ncol = 4)
norm(one) # [1] 4


#================================
# Operators delete and delete[]
#================================

# memory allocated dynamically is only needed during specific periods of time within a program;
# once it is no longer needed, it can be freed so that the memory becomes available again for other requests of dynamic memory. 
# This is the purpose of operator delete, whose syntax is:
  # delete pointer; // releases the memory of a single element allocated using new, 
  # delete[] pointer;//releases the memory allocated for arrays of elements using new and a size in brackets ([]).


# The value passed as argument to delete shall be 
  # either a pointer to a memory block previously allocated with new,
  # or a null pointer (a null pointer, delete produces no effect).


library("Rcpp")
sourceCpp("delete_pointer.cpp")


#----------------
# Data structure
#----------------
# A data structure is a group of data elements 
  # grouped together under one name.

# These data elements, known as members, can have different types and different lengths. 
# Data structures can be declared in C++ using the following syntax:
  # struct type_name {
      # member_type1 member_name1;
      # member_type2 member_name2;
      # member_type3 member_name3;
      # ...
      #
  #} object_names;

# type_name: is a name for the structure type
# object_name: can be a set of valid identifiers for objects that have the type of this structure.
# within braces {}, there is a list with the data members, 
  # each one is specified with a type and a valid identifier as its name

# struct product { //declares a structure type, called product, and defines it having two members: weight and price,
    # int weight;
    # double price;
#} ;

# product apple // declare obj (variable) apple of type product
# product banana melon //declare objs bana melon of type product


# Right at the end of the struct definition, 
  # and before the ending semicolon (;), 
    # the optional field object_names can be used to directly 
      # declare objects of the structure type. 

# struct product {

  # int weight;
  # double price;
#} apple, banana, melon; //the optional field object_names can be used to directly declare objects of the structure type. 

# important to clearly differentiate between 
  # what is the structure type name (product), 
  # and what is an object of this type (apple, banana, and melon). 

# Many objects (such as apple, banana, and melon) can be declared 
  # from a single structure type (product).


# Once the three objects of a determined structure type are declared 
  # (apple, banana, and melon) its members can be accessed directly.

  # The syntax for that is simply to insert a dot (.) between the object name and the member name.
  # apple.weight
  # apple.price
  # banana.weight
  # banana.price
  # melon.weight
  # melon.price


# Each one of these has the data type corresponding to the member they refer to: 
  # apple.weight, banana.weight, and melon.weight are of type int,
  # while apple.price, banana.price, and melon.price are of type double.


#=========================
# Pointers to structures
#=========================

# structures can be pointed to by its own type of pointers:
  # struct moive_t {

    # string title;
    # int year;
#  } amovie; // amovie is an obj of type moive_t;

# moive_t * pmoive; 
  # //pmoive is the pointer pointing to the address of objs of type moive_t

# So, 
  # &amoive // get the address of obj of type movie_t 
  # pmovie = &amoive //assign it to pmovie



#--------------------
# The arrow operator: ->
#--------------------
# The arrow operator (->) is a dereference operator 
  # that is used exclusively with pointers to objects that have members. 

# This operator serves to access the member of an object directly from its address. 
# pmoive -> is equivalent to 
  # (*pmoive).  is equivalent to amoive.its memebers 

# pmovie->title is equivalent to (*pmovie).title 
# pmovie -> year is equivalent to (*pmoive).year


#---------------
# differentiate
#---------------

# a.b  : obj a and its member b, evaluate the member b of obj a
# a -> b: mber b of an obj pointed to by pointer a
          # equivalent to (*a).b

# *a.b : derefernce a the adress pointed to by a.b (mber b of obj a)
        # equivalent to *(a.b)


#-------------------
# Nesting structures
#-------------------

# Structures can also be nested in such a way that an element of a structure is itself another structure:

# struct moive_t {
  # string title;
  # int year;
#}

# struct friend_t {

  # string name;
  # double birthday;
  # moive_t favourite movie;
#} Mark, Maria, ZG;

# friend_t * pfriends = &Mark; // get Mark's address, assign it to 
  # a pointer whose name is pfriends and whose type is friend_t













