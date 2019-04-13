//: Playground - noun: a place where people can play

import Cocoa

/*
 Optionals are a special feature in Swift used to indicate that an instance may not have a value. When we see an optional, we know that on of two things is true about instance:
 1) It either has a value and it is ready to use. OR
 2) It has no value.
 If an instance has no vaule associated with it, we say it is nil.

Optionals in Swift ake the language safer. An instance that may potentially be nil should be declared to be an optionnal type. This means that is an instance is not declared as an optional type, this instance is guarnteed to not be nil. This way, the compiler knows whether an can be nil.
*/
//Delcaration of an optional type
var errorCodeString: String?
errorCodeString = "404"
//By putting ? at the end of string we are making errorCodeString an optional of type string.

//print(errorCodeString)
if errorCodeString != nil{
    let theError = errorCodeString!
    print(theError)
}
//Here we set up a conditional with code that executes if errorCodeString is not nil
