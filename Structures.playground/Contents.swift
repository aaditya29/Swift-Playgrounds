//: Playground - noun: a place where people can play

import Cocoa

/*
So far everything we've veen talking about has been applied to classes.
 However, there is another construct in Swift: structures.
 For the most part, structures are very simmilar to classes; we can put properties and methods in them, they have initializers, and they generally behave in an object like way, just like class does.
*/
//Declaration Of Structure

struct NumberStruct{
    var number: Int
}
class NumberClass{
    var number: Int
    init(_ number: Int){
        self.number = number
    }
}
var numberClass1 = NumberClass(3)
var numberClass2 = numberClass1
numberClass1.number
numberClass2.number

var numberStruct1 = NumberStruct(number: 3)
var numberStruct2 = numberStruct1
numberStruct1.number
numberStruct2.number
