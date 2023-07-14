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
# with a name that matches the class name and without any return type; not even void.

# 

library("Rcpp")

sourceCpp("constructor.cpp")


