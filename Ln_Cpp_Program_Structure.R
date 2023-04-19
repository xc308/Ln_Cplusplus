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












