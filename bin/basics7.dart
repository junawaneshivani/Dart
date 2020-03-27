
class Remote {
    void volumeUp(){
        print('Volume up from remote');
    }
    void volumeDown(){
        print('Volume down from remote');
    }
}

class AnotherClass {
    void myFunction(){
        print('Just another function');
    }
}

//interface can inherit from multiple classed, but extends cannot (Dreaded Diamond problem)
class Television implements Remote, AnotherClass {
    @override
    void volumeUp() {
        // compulsory to implement as we are using implements
        print('Volume up from Television');
    }

    @override
    void volumeDown() {
        // compulsory to implement as we are using implements
        print('Volume down from Television');
    }

    @override
    void myFunction() {
        print('Function from Television');
    }
}

class Monitor extends Remote {
    // using extends hence no need to implement
}

void main() {

    var tv = Television();
    tv.volumeUp();
    tv.volumeDown();
    tv.myFunction();

    var monitor = Monitor();
    monitor.volumeUp();
    monitor.volumeDown();
}