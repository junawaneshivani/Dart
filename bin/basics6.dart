
class Base {    
    int base;
    Base(int base){
        print('This is base class constructor.');
        this.base = base;
    }
}

class Child extends Base {
   int child;
    // we need to use the super keyword as there is no default constructor in Base class
    Child() : super(-1) {
        print('This is child class constructor.');
    }
    Child.myNamedConstructor(int child) : super(-1) {
        print('This is child class named constructor.');
        this.child = child;
    }
}

// abstract class just defines prototype of atleast one function
abstract class Shape {
    void draw();
    void paint() {
        print('I am painting Shape.');
    }
}

class Rectangle extends Shape {
    @override
    void draw(){
        print('I am drawing Rectange.');
    }
}

void main(){

    var baseObj = Child.myNamedConstructor(1);
    print(baseObj.child);
    print(baseObj.base);

    // var shape = Shape(); // abstract class cannot be instantiated
    var rectangle = Rectangle();
    rectangle.draw();
    rectangle.paint();
}