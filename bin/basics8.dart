
// lamda function is a nameless function

// higher order function accepts/returns another function

void main() {
    // lamda function
    var lamdaFunction = (int a, int b) {
                var sum = a+b;
                print(sum);
            };
    lamdaFunction(1, 2);

    // lamda expression
    var lamdaExpression = (int a, int b) => a+b;
    print(lamdaExpression(1, 2));

    print(higherOrderFunction('Shivani', mySampleFunction));

}

String higherOrderFunction(String name, Function myFunction){
    print(name);
    return myFunction();
}

String mySampleFunction(){
    return 'You just called me from a higher order function';
}