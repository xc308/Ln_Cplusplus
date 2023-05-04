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






