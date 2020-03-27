
class Student {
    String name;
    double _percent; // making _percent private to its own library, no private functionality in Dart

    // custom setter
    set percentage(double marks) => _percent = (marks / 500) * 100;
    
    // custom getter
    double get percentage => _percent; 
}

void main(){

    var student1 = Student();
    student1.name = 'Shivani'; // default setter
    print(student1.name); // default getter

    student1.percentage = 438;
    print(student1.percentage);

}