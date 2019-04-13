//: Playground - noun: a place where people can play

import Cocoa

/*
In Swift, we can extend existing types and add further methods and computed properties. This is avery heavily used feature in Swift and is the general preferred way to add a new functionality to a class, rather than inhertiance.
 Most of the standard library and Cocoa are built up using extensions in place of subclassing.
 
 In Swift, we can extend any type- that is, we can extend classes that we wrtie, as well as built-in types like Int and String.
 
 To create an extension, we use the extension keyword, followed by the name of type we want to extend.
*/

extension Int{
    var double: Int{
        return self*2
    }
    func multiplyWith(anotherNumber: Int) -> Int{
        return self * anotherNumber
    }
}
