//: Playground - noun: a place where people can play

import Cocoa

/*
A lazy property is one that doesn't get set up until the first time it's accessed.
 This lets us defer some of the more time-consuming work of setting up a class to when it's actually needed.
 To define a property lazy, we put the lazy keyword in front of it. Lazy loading is very useful for properties that are not essential to class's operation, or those that are very resource intensive.
*/

class SomeExpensiveClass{
    init(id: Int){
    print("Expensive class \(id) created")
    }
}

class LazyPropertyExample{
    var expensiveClass1 = SomeExpensiveClass(id: 1)
    //We're creating a class with a keyword lazy.
    lazy var expensiveClass2 = SomeExpensiveClass(id: 2)
    init() {
        print("Example class created!")
    }
}

var lazyExample = LazyPropertyExample()

lazyExample.expensiveClass1
lazyExample.expensiveClass2
