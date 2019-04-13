//: Playground - noun: a place where people can play

import Cocoa
/*
An operator is actually a function that takes one or two values and returns a value.
 Operator, just like other functions, can be overloaded.
 
 Swift let us define new operators and overload existing ones for our types, which means that if we have a new type of data we can operate on that data using both existing operators and new ones we invent ourself.
*/
class Vector2D{
    var x: Float = 0.0
    var y: Float = 0.0
    
    init(x: Float, y: Float){
        self.x = x
        self.y = y
    }
}
