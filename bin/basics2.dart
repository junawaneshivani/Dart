
// Functions in Dart are objects similar to python
// functions can be assigned to variables or passed as arguments

// Short hand syntax , Fat arrow (=>)
int getArea(int length, int breadth) => length*breadth;
void printArea(int area) => print('Area is $area');

// Optional positional parameters
void printNames(String name1, [String name2, String name3]) {
    print(name1);
    print(name2);
    print(name3);
}

// Named parameters
int getVolume(int length, {int breadth, int height=10}){
    return length * breadth * height;
}

void main() {

    printArea(getArea(5,5));
    printNames('shivani','sayali','kunal');
    printNames('shivani','sayali');
    print(getVolume(5, height: 5, breadth: 5)); // sequence does not matter
    print(getVolume(5, breadth: 5));
    // print(get_volume(5, 5, 5)); // this will give error
}