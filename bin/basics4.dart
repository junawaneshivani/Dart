

class Student {
    int id;
    String name;

    // you can have only once constructor, unlike overriding in C++
    // Student(this.id, this.name); // similar to below constructor
    Student(int id, String name){
        this.id = id;
        this.name = name;
    }

    // this is a named contructor
    Student.myCustomConstructor();

    // There can be multiple named constructors
    Student.myAnotherCustomConstructor() {
        id = -1;
        name = 'custom constructor';
    }

    
}

// There is a concept called as constant constructor, check it out
// When using the const keyword for initialization, 
// no matter how many times you instantiate an object with the same values, only one instance exists in memory.
// Class fields that are assigned using a const constructor must be marked as final
class Location {
  final int x;
  final int y;
  const Location(this.x, this.y);
}

    
void main() {

    var student1 = Student(1, 'Shivani');
    print(student1.id);
    print(student1.name);

    var student2 = Student.myAnotherCustomConstructor();
    print(student2.id);
    print(student2.name);

    var gate = const Location(400, 200);
    var tower = const Location(500, 200);
    var tube = const Location(400, 200);

    //false – different values results on a new object
    print(gate == tower);

    //true – same class & values results in the same reference
    print(gate == tube);

    var runway = Location(400, 200);
    var tarmac = Location(500, 200);
    var field = Location(400, 200);
    print(runway == tarmac); //false – not using const results on a new object
    print(runway == field); //false – not using const results on a new object
}