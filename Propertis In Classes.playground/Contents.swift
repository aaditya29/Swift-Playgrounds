//: Playground - noun: a place where people can play

import Cocoa

/*
Classes store their data in properties. Properties are variables or constants that are attached to instances of clases.
 
 Properties that we've added to a class are usually accessed like this:
*/
class Counter{
    var number: Int = 0
}
let myCounter = Counter()
myCounter.number = 2

/*
The most basic type of properties are stored properties.
*/
class BiggerCounter{
    var number: Int
    var optionalNumber: Int?
    
    init(value: Int){
        number = value
        //self.number now has a value
        //self.optionalNumber does not
    }
}
var anotherCounter = BiggerCounter(value: 3)
anotherCounter.number

