#++++++++++++++++++
# Program structure
#++++++++++++++++++

# Statements and flow control
# Functions
# Overloads and templates
# Name visibility


#============================
# Statements and flow control
#============================

# flow control statements that serve to specify what has to be done 
  # by our program, when, and under which circumstances

# A compound statement is a group of statements (each of them terminated by its own semicolon), 
  # but all grouped together in a block, enclosed in curly braces: {}:
  # { statement1; statement2; statement3; } 
  # The entire block is considered a single statement 

# Whenever a generic statement is part of the syntax of a flow control statement, 
# this can either be a simple statement or a compound statement.


#-----------------------------------
# Selection statements: if and else
#-----------------------------------

#  If this condition is true, statement is executed
  # is false, statement is not executed (it is simply ignored),

  # the program continues right after the entire selection statement.

# if (condition) statement1 else statement2

if (...) {
  bala
} else if (....) {
  bala
} else {
  balalala
}

# if (x > 0)
#   cout << "x is positive";
# else if (x < 0)
#   cout << "x is negative";
#else
#   cout << "x is 0";


#-----------------------------
# Iteration statements (loops)
#-----------------------------

# Loops repeat a statement a certain number of times, 
  # or while a condition is fulfilled.

# introduced by the keywords while, do, and for


#~~~~~~~~~~~~
# while loop
#~~~~~~~~~~~~

#  simplest kind of loop, syntax:
  # while (expression) statement

# If, after any execution of statement, 
  # expression is no longer true, the loop ends, 
    # and the program continues right after the loop


library(Rcpp)
sourceCpp("while_loop_countdown.cpp")



#~~~~~~~~~~~~~~~~~~~
# The do-while loop
#~~~~~~~~~~~~~~~~~~~

# do statement while (condition);

# behaves like a while-loop, 
  # except that condition is evaluated after the execution of statement 
    # instead of before, guaranteeing at least one execution 
      # of statement, even if condition is never fulfilled

# following example program echoes any text the user introduces 
  # until the user enters goodbye:

sourceCpp("do_while_echo_machine.cpp")



#---------
# for loop
#---------

# The for loop is designed to iterate a number of times
# for (initialization; condition; increase) statement;
  # this loop repeats statement while condition is true
  #  it is especially useful to use counter variables as condition.


library(Rcpp)
sourceCpp("for_loop.cpp")

  # The three fields in a for-loop are optional. 
  # They can be left empty, but in all cases the semicolon signs between them are required. 

  # for (;n<10;) is a loop without initialization or increase (equivalent to a while-loop);
  # for (;n<10;++n) is a loop with increase, but no initialization 
  # A loop with no condition is equivalent to a loop with true as condition (i.e., an infinite loop).


  # execute more than a single expression as any of initialization, condition, or statement
  # make use of the comma operator (,): 
      # This operator is an expression separator, 
      # and can separate multiple expressions where only one is generally expected


#~~~~~~~~~~~~~~~~~~~~~~
# Range-based for loop
#~~~~~~~~~~~~~~~~~~~~~~

# for ( declaration : range ) statement;
# iterates over all the elements in range, 
# where declaration declares some variable able to 
  # take the value of an element in this range

# Ranges are sequences of elements, 
  # including arrays, containers, 
  # and any other type supporting the functions begin and end; 

    # e.g.  strings, which are sequences of characters.

sourceCpp("range_for_loop.cpp")



#-----------------
# Jump statements
#-----------------

# performing jumps to specific locations.
      # The break statement
      # The continue statement
      # The goto statement


#~~~~~~~~~~~~~~~~~~~~
# The break statement
#~~~~~~~~~~~~~~~~~~~~

# break leaves a loop, even if the condition for its end is not fulfilled.

# It can be used to end an infinite loop, or to force it to end before its natural end.

# let's stop the countdown before its natural end:
  # 


library(Rcpp)
sourceCpp("break_count_down.cpp")


#~~~~~~~~~~~~~~~~~~~~~~~~
# The continue statement
#~~~~~~~~~~~~~~~~~~~~~~~~

# The continue statement causes the program to 
  # skip the rest of the loop in the current iteration, 
    # as if the end of the statement block had been reached, 
      # causing it to jump to the start of the following iteration

sourceCpp("continue_loop.cpp")


#~~~~~~~~~~~~~~~~~~~~
# The goto statement
#~~~~~~~~~~~~~~~~~~~~

# goto allows to make an absolute jump to another point in the program
# This unconditional jump ignores nesting levels, 
  # and does not cause any automatic stack unwinding.

# it is a feature to use with care, 
  # and preferably within the same block of statements, 
    # especially in the presence of local variables


# The destination point is identified by a label,
  # which is then used as an argument for the goto statement.

# A label is made of a valid identifier followed by a colon (:).
  # e.g., mylable:
        
sourceCpp("goto.cpp")


#-------------------------------------
# Another selection statement: switch
#-------------------------------------

# Its purpose is to check for a value among a number of possible constant expressions. 
#  similar to concatenating if-else statements, but limited to constant expressions. 

# syntax:
  # switch(expression) {

      # case constant1:
        # group-statement-1;
        # break;


      # case constant2:
        # group-statement-2;
        # break;


      #...


      # default:
        # default-group-statement;
  #}

# switch is limited to compare its evaluated expression 
  # against labels that are constant expressions
  # not possible to use variables as labels or ranges
  # they are not valid C++ constant expressions.


#-------------
# Functions
#-------------

# a function is a group of statements that is given a name, 
# and which can be called from some point of the program. 

# most common syntax to define a function:
  # type name ( parameter1, parameter2, ...) { statements }
    
    # type :  the type of the value returned by the function.
    # name : the identifier by which the function can be called.
    # parameters (as many as needed):
        # Each parameter consists of a type followed by an identifier,
        # parameter being separated from the next by a comma
        # each parameter looks very much like a regular variable declaration (for example: int x), 
        # acts within the function as a regular variable which is local to the function.

    # The purpose of parameters is to allow passing arguments to the function 
        # from the location where it is called from.
    
    #  statements: the function's body.   
           #  a block of statements surrounded by braces { } that specify 
            # what the function actually does  

    
library(Rcpp)
sourceCpp("function.cpp")

# a C++ program always starts by calling main
# main is the only function called automatically, 
  # and the code in any other function is only executed if its function is called from main



#----------------------------------------
# Functions with no type. The use of void
#----------------------------------------

# the function does not need to return a value
  # the type to be used is void
      # a special type to represent the absence of value.

# a function that simply prints a message may not need to return any value:


library(Rcpp)
sourceCpp("void.cpp")

# void can also be used in the function's parameter list 
  # to explicitly specify that the function 
    # takes no actual parameters when called.

  # void printmessage (void) {
      # cout << "I'm a function!";
      # }

# In C++, an empty parameter list can be used instead of void 
    # with same meaning,
  
# an empty pair of parentheses shall always be appended to the function name

# the parentheses are what differentiate functions from other kinds of declarations or statements

# printmessage ();
# vs printmessage;



#---------------------------
# The return value of main
#---------------------------

# the return type of main is int, 
# but most examples in this and earlier chapters did not 
    # actually return any value from main.


#  If the execution of main ends normally without 
    # encountering a return statement 
      # the compiler assumes the function ends with an implicit 
        # return statement:1 return 0;

#  this only applies to function main 

# All other functions with a return type shall end with 
  # a proper return statement that includes a return value,

# When main returns zero (either implicitly or explicitly), 
  # it is interpreted by the environment as that 
    # the program ended successfully.



#--------------------------------------------
# Arguments passed by value and by reference
#--------------------------------------------

# arguments have always been passed by value
  # when calling a function, what is passed to the function 
    # are the values of these arguments on the moment of the call
  # are copied into the variables represented by the function parameters

    # int x=5, y=3, z;
    # z = addition ( x, y );

# These values (5 and 3) are used to initialize the variables 
  # set as parameters in the function's definition

#  but any modification of these variables within the function 
  # has no effect on the values of the variables x and y outside it, 
  # because x and y were themselves not passed to the function on the call, 
    # but only copies of their values at that moment.


#  may be useful to access an external variable from within a function
  # arguments can be passed by reference, instead of by value. 

  # the function duplicate in this code duplicates 
    # the value of its three arguments, 
      # causing the variables used as arguments 
        # to actually be modified by the call:


# To gain access to its arguments, the function declares its parameters as references.
  # In C++, references are indicated with an ampersand (&) following the parameter type,

# When a variable is passed by reference, 
  # what is passed is no longer a copy,
    # but the variable itself, 
      # the variable identified by the function parameter, 
        # becomes associated with the argument passed to the function, 
          # and any modification on their corresponding local variables
            # within the function are reflected in the variables 
              # passed as arguments in the call.


# In fact, a, b, and c become aliases of the arguments 
  # passed on the function call (x, y, and z) 
      # and any change on a within the function 
        # is actually modifying variable x outside the function. 
          # Any change on b modifies y, and any change on c modifies z. 


library(Rcpp)
sourceCpp("assign_par_by_reference.cpp")

# Note that if modify the function as not as by reference 
# void duplicate(int a, int b, int c)
# NOT void duplicate(int& a, int& b, int& c)
  # then if set x = 1, y = 2, z = 7
  # duplicate(x, y, z) would just duplicate x, y, z as 2x, 2y, 2z
      # rather than duplicate the values



#-------------------------------------------------
# Efficiency considerations and const references
#-------------------------------------------------

# Calling a function with parameters taken by value 
    # causes copies of the values to be made

# This is a relatively inexpensive operation for fundamental types 
    # such as int, 
      # but if the parameter is of a large compound type, 
        # it may result on certain overhead. 


# example:
  # string concatenate (string a, string b) {
      #  return a+b;
    # }

# This function takes two strings as parameters (by value)
  # returns the result of concatenating them

# passing the arguments by value, 
    # the function forces a and b to be copies of the arguments 
      # passed to the function when it is called.

#  if these are long strings, 
    # it may mean copying large quantities of data just for the function call.


# But this copy can be avoided altogether 
  # if both parameters are made references:

# string concatenate (string& a, string& b){
  # return a+b;
# }

# Arguments by reference do not require a copy. 
  # the function operates directly on (aliases of) the strings passed as arguments,


# the version of concatenate taking references is more efficient 
    # than the version taking values, 
      # since it does not need to copy expensive-to-copy strings.

# On the flip side, functions with reference parameters 
  # are generally perceived as functions that modify the arguments passed, 

# The solution is for the function to guarantee 
  # that its reference parameters are not going to be modified 
    # by this function. 

# string concatenate (const string& a, const string& b){
  # return a+b;
#}

#By ualifying them as const
  #  the function is forbidden to modify the values of 
      # neither a nor b, 
        # but can actually access their values as references
          # without having to make actual copies of the strings.

# So, const references provide functionality similar to 
    # passing arguments by value, 
        # but with an increased efficiency for parameters of 
          # large types.


# Note though, that for most fundamental types, 
  # there is no noticeable difference in efficiency, 
    # and in some cases, const references may even be less efficient!


#------------
# Inline functions
#-------------

# for very short functions, it may be more efficient to 
  # simply insert the code of the function where it is called, 
    # instead of performing the process of formally calling a function

# Preceding a function declaration with the inline specifier
  # informs the compiler that inline expansion is preferred over the usual function call 

# This does not change at all the behavior of a function, 
  # but is merely used to suggest the compiler 
    # that the code generated by the function body 
      # shall be inserted at each point the function is called, 
        # instead of being invoked with a regular function call.


# Example:
  # inline string Concatenate(const string& a, const string& b) {
      # return a + b;
  # }


# This informs the compiler that when concatenate is called,
  # the program prefers the function to be expanded inline, instead of performing a regular call

# inline is only specified in the function declaration, not when it is called.

# most compilers already optimize code to generate inline functions 
  # when they see an opportunity to improve efficiency, 
    # even if not explicitly marked with the inline specifier.


# Therefore, this specifier merely indicates the compiler that inline is preferred for this function, although the compiler is free to not inline it, and optimize otherwise. 


#------------
# Default values in parameters
#------------

#  functions can also have optional parameters, 
  # for which no arguments are required in the call,
    # a function with three parameters may be called with only two.
      #  For this, the function shall include a default value for its last parameter, 
        # which is used by the function when called with fewer arguments.



#-----------
# Declaring functions
#-----------

# identifiers can only be used in expressions once 
    # they have been declared

# some variable x cannot be used before being declared with a statement, 
  # such as: int x;

# The same applies to functions.
  # Functions cannot be called before they are declared
  # That is why,
    # the functions were always defined before the main function, 
    # which is the function from where the other functions were called.

# If main were defined before the other functions, 
  # this would break the rule that functions shall be declared 
    # before being used, and thus would not compile

#------------------------------------------------------#
# The prototype of a function can be declared without 
  # actually defining the function completely, 
    # giving just enough details to allow 
      # the types involved in a function call to be known. 

# the function shall be defined somewhere else, 
  # But at least, once declare, it can already be called.

# The declaration shall include all types involved
  # the return type and the type of its arguments
    # but replacing the body of the function (the block of statements) with an ending semicolon.

# the parameter list does not need to include the parameter names, 
  # but only their types

# Parameter names can nevertheless be specified, 
  # but they are optional, 
    # and do not need to necessarily match those in the function definition. 


# Example: a function called protofunction with two int parameters 
  # can be declared with either of these statements:

# int protofunction(int first, int second);
# int protofunction(int, int);

library(Rcpp)
sourceCpp("Prototypefunction_declare.cpp")

# Declare the prototype of the functions.
# void odd (int a);
# void even (int b);
# They already contain all what is necessary to call them, 
  # their name, the types of their argument, 
      # and their return type (void in this case)

# With these prototype declarations in place, 
  # they can be called before they are entirely defined, 
# to place the function from where they are called (main) 
  # before the actual definition of these functions.


#-----------
# Recursivity
#-----------

# Recursivity is the property that functions have to be called by themselves.
# It is useful for some tasks, such as sorting elements, 
    # or calculating the factorial of numbers

# Example: to obtain the factorial of a number (n!) 
    # the mathematical formula would be:
    # n! = n * (n-1) * (n-2) * (n-3) ... * 1


# in function factorial we included a call to itself,
  #  only if the argument passed was greater than 1, 

sourceCpp("factorial_calculator.cpp")



#=========================
# Overloads and templates
#=========================

#-----------------------
# Overloaded functions (same function name but different arg types)
#-----------------------

# In C++, two different functions can have the same name 
  # if their parameters are different; 
    # either because they have a different number of parameters, 
    # or because any of their parameters are of a different type

#  example:
  # there are two functions called operate, 
    # but one of them has two parameters of type int, 
      # while the other has them of type double.

# The compiler knows which one to call in each case 
  # by examining the types passed as arguments 
    # when the function is called.

# If it is called with two int arguments,
  # it calls to the function that has two int parameters,

# if it is called with two doubles, 
  # it calls the one with two doubles.

# Two functions with the same name are generally expected to 
  # have -at least- a similar behavior,

# Two overloaded functions (i.e., two functions with the same name) 
  # have entirely different definitions;

# they are different functions, 
  # that only happen to have the same name.

# a function CANNOT be overloaded only by its return type

# At least one of its parameters must have a different type.

# C++ has the ability to define functions with generic types, 
  # known as function templates. 

# Defining a function template follows the same syntax as a regular function
  # except that it is preceded by the template keyword 
    # and a series of template parameters enclosed in angle-brackets <>

# template <template-parameters> function-declaration
  # The template parameters are a series of parameters separated by commas. 

# These parameters can be generic template types 
  # by specifying either the class or typename keyword
    # followed by an identifier
        # This identifier can then be used in the function declaration 
          # as if it was a regular type


# example: 
  # a generic sum function could be defined as:
    # template <class SomeType>  // template parameter class SomeType
    # SomeType sum (SomeType a, SomeType b){
        # return a+b;
# }


# no difference whether the generic type is specified with 
  # keyword class or keyword typename in the template argument list 


# declaring SomeType 
  # (a generic type within the template parameters enclosed in angle-brackets) 
    # allows SomeType to be used anywhere in the function definition

#it can be used as the type for parameters, 
  # as return type, or to declare new variables of this type

  # it represents a generic type that will be determined 
    # on the moment the template is instantiated.

# Instantiating a template is applying the template 
  # to create a function using particular types or values 
    # for its template parameters.

# this is done by calling the function template, 
  # with the same syntax as calling a regular function, 
    # but specifying the template arguments enclosed in angle brackets:

# the sum function template defined above can be called with
  # name <template-arguments> (function-arguments)
  # sum <int> (10, 20)

# The function sum<int> is just one of the possible instantiations of function template sum.
# by using int as template argument in the call, 
  # the compiler automatically instantiates a version of sum 
    # where each occurrence of SomeType is replaced by int, 


library(Rcpp)
sourceCpp("template_fun.cpp")


# Templates are a powerful and versatile feature. 
  # They can have multiple template parameters, 
    # and the function can still use regular non-templated types


# template <class T, class U>
# bool are_equal (T a, U b) {

    # return (a == b);

# }

# are_equal(10, 10.0)
# here is essentially are_equal <int, double> (10, 10.0)
  # uses automatic template parameter deduction in the call to are_equal:

# There is no ambiguity possible because numerical literals are always of a specific type:

  # integer literals always produce values of type int, 
  # and floating-point literals always produce values of type double. 
  # Therefore 10 has always type int and 10.0 has always type double.



#------------
# Non-type template arguments
#------------

# template parameters can not only include types 
  # introduced by class or typename,
# but can also include expressions of a particular type:
  # 

library(Rcpp)
sourceCpp("non-type_temp_arg.cpp")



#================
# Name visibility
#================

#-------
# scopes
#-------

# Named entities, such as variables, functions, and compound types 
  # need to be declared before being used in C++. 


# The point in the program where this declaration happens influences its visibility:

# An entity declared outside any block has global scope
  # meaning that its name is valid anywhere in the code.

# While an entity declared within a block, 
  # such as a function or a selective statement, has block scope, 
    # and is only visible within the specific block 
      # in which it is declared, but not outside it.

# Variables with block scope are known as local variables.

# a variable declared in the body of a function is a local variable 
  # that extends until the end of the the function 
    # (i.e., until the brace } that closes the function definition), 
      # but not outside it:


# In each scope, a name can only represent one entity.
# there cannot be two variables with the same name in the same scope:

# int some_fun () {
    # int x; 
    # x = 0;

    # double x;  //  wrong: name x already used in this scope
    # x = 0.0;

#}


# The visibility of an entity with block scope extends 
  # until the end of the block, including inner blocks.

# Nevertheless, an inner block, because it is a different block, 
  # can re-utilize a name existing in an outer scope 
    # to refer to a different entity

# the name will refer to a different entity only 
    # within the inner block

# hiding the entity it names outside. 
# While outside it, it will still refer to the original entity.

library(Rcpp)
sourceCpp("block_scope.cpp")


#-----------
# Namespaces
#-----------

# Only one entity can exist with a particular name in a particular scope.
# But non-local names bring more possibilities for 
  # name collision, especially considering that libraries may declare many functions, types, and variables, neither of them local in nature, and some of them very generic.

# Namespaces allow us to group named entities 
  # that otherwise would have global scope 
    # into narrower scopes, giving them namespace scope. 

# This allows organizing the elements of programs 
  # into different logical scopes referred to by names.

# The syntax to declare a namespaces is:
  # namespace identifier {
      # named_entities
  # }

    # identifier is any valid identifier
    # named_entities is the 
      # set of variables, types and functions 
        # that are included within the namespace.


# namespace myNamespace {
  #int a, b;
#}

# the variables a and b are normal variables declared within a namespace called myNamespace.

# These variables can be accessed from 
  # within their namespace normally, 
    # with their identifier (either a or b), 
      # but if accessed from outside the myNamespace namespace 
        # they have to be properly qualified with the scope operator ::

# to access the previous variables from outside myNamespace they should be qualified like:
      # myNamespace::a
      # myNamespace::b

# Namespaces are particularly useful to avoid name collisions.

library(Rcpp)
sourceCpp("namespace.cpp")


#-------------
# using
#-----------

# keyword using introduces a name into the current declarative region (
#  (such as a block)
# thus avoiding the need to qualify the name.
# 



#----------
# The std namespace
#----------

# All the entities (variables, types, constants, and functions) 
  # of the standard C++ library are declared within the std namespace.

# using namespace std;
  # This introduces direct visibility of all the names of 
      # the std namespace into the code. 
  # shorten the length of the examples

  # but many programmers prefer to qualify each of the elements of 
    # the standard library used in their programs.

    # std::cout << "Hello world!";

# It is mostly a matter of style preference, 
  # although for projects mixing libraries, 
    # explicit qualification tends to be preferred.


#------------
# Storage classes
#------------

# The storage for variables with global or 
  # namespace scope is allocated for the entire duration of the program

  # this is known as static storage, 

# it contrasts with the storage for local variables 
  # known as automatic storage

# The storage for local variables is only available during the block 
  # in which they are declared; 
# after that, that same storage may be used for a local variable 
  # of some other function, 


# substantial difference between variables with static storage 
  # and variables with automatic storage:

# - Variables with static storage (such as global variables) 
  # that are not explicitly initialized are 
    # automatically initialized to zeroes.    # zero

# - Variables with automatic storage (such as local variables) 
  # that are not explicitly initialized are left uninitialized, 
    # and thus have an undetermined value.   # undetermined value


library(Rcpp)
sourceCpp("static_automatic_storage.cpp")
