#===========
# Classes(I)
#==========

# Classes are an expanded concept of data structures: 
  # like data structures, they can contain data members, 
  # but they can also contain functions as members.

# An object is an instantiation of a class. 

# a class would be the type, 
# and an object would be the variable.

# Classes are defined using either keyword class or keyword struct, 
    # class class_name {

      # access_specifier_1: member 1;
      # access_specifier_2: member 2;
      #...
   # } object_names;



# The body of the declaration can contain members, 
# which can either be data or function declarations, 
# and optionally access specifiers.

# An access specifier is one of the following three keywords:
  # private, public or protected.

  # private members of a class are accessible only from within other members of the same class (or from their "friends").
  # protected members are accessible from other members of the same class (or from their "friends"), 
      # but also from members of their derived classes.
  # public members are accessible from anywhere where the object is visible.


# By default, all members of a class declared with the class keyword have private access for all its members. 

# any member that is declared before any other access specifier 
  # has private access automatically.

# class Rectangle {
      #  int width, height;
      # public:
          # void set_values (int,int);
          # int area (void);
#} rect;

    # Declares a class (i.e., a type) called Rectangle
    # an object (i.e., a variable) of this class, called rect
    # class contains four members: 
      # two data members of type int (member width and member height) with private access 
      # and two member functions with public access: the functions set_values and area, 
        # for now we have only included their declaration, but not their definition.

# After the declarations of Rectangle and rect, any of the public members of object rect can be accessed a
  # by simply inserting a dot (.) between object name and member name

  # rect.set_values (3,4);
  # myarea = rect.area();

# The only members of rect that cannot be accessed from outside 
# the class are width and height, since they have private access
# and they can only be referred to from within other members 
# of that same class.


#------------
# Constructors
#-------------

#  what if we called the member function area before 
  # having called set_values? 

# An undetermined result, since the members width and height 
  # had never been assigned a value.

# to avoid that, a class can include a special function 
  # called its constructor:
    # automatically called whenever a new object of this class is created, 
    # allowing the class to initialize member variables or allocate storage.


# This constructor function is declared just like a regular member function, 
# with a name that matches the class name and without any return type; 
# not even void.

# 

library("Rcpp")

sourceCpp("constructor.cpp")


#--------------------------
# Overloading constructors
#--------------------------

# a constructor can also be overloaded with different versions
  # taking different parameters: with a different number of parameters 
    # and/or parameters of different types


# The compiler will automatically call the one whose parameters 
  # match the arguments:

#  the default constructor. 
  # The default constructor is the constructor that takes no parameters,
  # and it is special because it is called when an object is declared
  # but is not initialized with any arguments.



#-------------------------
# Uniform initialization
#-------------------------

# 1. constructors with a single parameter can be called using 
  # the variable initialization syntax (an equal sign followed by the argument):

  #class_name object_name = initialization_value;


# 2. uniform initialization
  # essentially is the same as the functional form, but using braces ({}) 
  # class_name object_name { value, value, value, ... }

library(Rcpp)
sourceCpp("Uniform_declaration.cpp")

# Adv:
  # easy differentiation from functional form initialization Circle foo (10.0)
  # which is easy to confused with function declaration Circle foo()


#======================================
# Member initialization in constructors
#======================================

# done by inserting, before the constructor's body, a colon (:) and a list of initializations for class members. 

# Rectangle::Rectangle (int x, int y) { width=x; height=y; }
# Rectangle::Rectangle (int x, int y) : width(x) { height=y; }
# Rectangle::Rectangle (int x, int y) : width(x), height(y) { }


#=====================
# Pointers to classes
#=====================
# Objects can also be pointed to by pointers
# Once declared, a class becomes a valid type, 
#so it can be used as the type pointed to by a pointer

# Rectangle * prect;
  # is a pointer to an object of class Rectangle
  
# the members of an object can be accessed directly from a pointer
  # by using the arrow operator (->), x -> y
    # THE pointer x points to a member of an obj y

# *x: dereference pointer x
# &x: address of x
# x.y: member y of an obj x
# x -> y: a member y of obj pointed to by x
# (*x).y: member y of obj pointed to by x; 
# x[0]: the 1st obj pointed to by x
# x[1]: the 2nd obj pointed to by x
# x[n]: the n+1 obj pointed to by x












