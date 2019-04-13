//: Playground - noun: a place where people can play

import Cocoa

/*
When working with properties, you often may want to run some code whenever a property changes.
 These are the small chunks of code  that can run just before or after a property's value changes.
 To create a property observer, add braces after the property and include willSet and didSet blocks.
 These blocks each get passed a parameter - willSet, which is called before the property's value changes, is given the value that is about to be set, and didSet is given the old value.
*/

class PropertyObserverExample{
    var number: Int = 0{
        willSet(newNumber){
            print("About to change to \(newNumber)")
        }
        didSet(oldNumber){
            print("Just changed from \(oldNumber) to \(self.number)")
        }
    }
}
 var observer = PropertyObserverExample()
observer.number = 4
