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







