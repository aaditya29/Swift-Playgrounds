//: Playground - noun: a place where people can play

import Cocoa
//Functions let you organize your code into small, repeatable chunks like so:
func sayHello(){
    print("Hello")
}
sayHello()//prints "Hello"
/*
Function can return a value to the code that calls them. When we define a function that returns a type, we must indicate the type of the data that it returns by using the arrow(->) symbol.
*/
func usefulNumber() -> Int{
    return 123
}
let anUsefulNumber = usefulNumber()//123

func addNumbers(firstValue: Int, secondValue: Int) -> Int{
    return firstValue + secondValue
}
let result = addNumbers(firstValue: 1, secondValue: 2)


func processNumbers(firstValue: Int, secondValue: Int) -> (doubled: Int, quadrupled: Int)
{
        return (firstValue * 2, secondValue * 4)
}
//Accessing by Number:
processNumbers(firstValue: 2, secondValue: 4).1
//Same thing but with names:
processNumbers(firstValue: 2, secondValue: 4).quadrupled//=16
//By default, all parameters after the first one must have a label associated with them, and the label is necessary in calling the function.

func subtractNumbers(_ num1: Int, _ num2: Int) -> Int{
    return num1-num2
}
subtractNumbers(5,3)//2

//Sometimes, we'll want to use functions with a variable number of parameters. A parameter with a variable number of balues is called a variadic parameter. To do this, we use three dots(...) to indicate that a parameter has a variable number of values.

func sumNumbers(numbers: Int...) -> Int{
    //In tgus function, 'numbers' is an arrat of Ints
    var total = 0
    for number in numbers{
        total += number
    }
    return total
}
sumNumbers(numbers: 1,2,3,4,5,6,7,8,9,10)

//Passing the reference method

func swapValues(firstValue: inout Int, secondValue: inout Int){
    (firstValue, secondValue) = (secondValue, firstValue)
}
var swap1 = 2
var swap2 = 3
swapValues(firstValue: &swap1, secondValue: &swap2)
swap1 //1
swap2 //2
