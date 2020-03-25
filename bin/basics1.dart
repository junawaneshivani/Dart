
// Note: All datatypes in dart are objects. Therefore, values are null by default.

void main() {

    print(12/4); 
    print(12~/4); // integer division

    var s = 'This is going to be a very large string. '
            'Dart allows you to join strings without using the + symbol';            
    print(s);

    var name = 'Shivani';
    var msg = 'My name is $name'; //This is called as string interpolation
    print(msg);
    print('The length of string is: ' + name.length.toString());
    print('The length of string is: ${name.length}');

    //final and const
    final pi = 3.14; // not initialized i.e assigned memory until used
    const PI = 3.14; // same as final, cannot be modified, but initialized during compilation
    print('Final pi: $pi ${pi.runtimeType}, Const PI: $PI ${PI.runtimeType}');
    
    // instance variable can be final but not const.
    // if you want to use a constant in class you will need to use static const

    var a = 2;
    var b = 3;
    var smallerNumber = a > b ? b : a;
    print('$smallerNumber is smaller.');

    var str = 'Shivani';
    var name_to_print = str ?? 'Guest User';
    print(name_to_print);

    var mylist = ['Shivani', 'Sarjerao', 'Junawane'];
    for (var str in mylist) {
        print(str);
    }

}