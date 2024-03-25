
#include <iostream>
#include <string>
using namespace std;

// Declare a structure named "pet"
struct pet {           
        string category; 
        string breed;
        int age;
        string color;
        bool like;
};


int main() {
    // create a pet structure and store it in myPet1;
    pet myPet1;
    myPet1.category = "Cat";
    myPet1.breed = "BSH";
    myPet1.age = 1;
    myPet1.color = "black totie bicolor";
    myPet1.like = true;

    // create a pet structure and store it in myPet2;
    pet myPet2;
    myPet2.category = "dog";
    myPet2.breed = "Dalmatian";
    myPet2.age = 1;
    myPet2.color = "white and black spots";
    myPet2.like = true;

    // print the structure members
    cout << myPet1.category << " " << myPet1.breed << "\n";
    cout << myPet2.category << " " << myPet2.breed << "\n";

    return 0;
}


