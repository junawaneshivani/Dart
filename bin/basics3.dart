
class MyException implements Exception {
    @override
    String toString(){
        return 'Value cannot be less than 0';
    }
}

void depositMoney(int amount){
    if(amount < 0){
        throw MyException();
    }
}

void main() {

    try {
        print (12~/0);
    } on IntegerDivisionByZeroException { // when you know the exception
        print('Cannot divide by zero.');
    } catch (e , s) { // use when you do not know the exception
        print('The exception thrown is $e');
        print('Stack Trace \n $s');
    } finally {
        print('This clause is always executed');
    }

    try{
        depositMoney(-5);
    } catch (e) {
        print(e.toString());
    }

}