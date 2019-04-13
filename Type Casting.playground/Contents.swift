//: Playground - noun: a place where people can play

import Cocoa

/*
Sometimes we need to check the type of an instance, or treat it as a different type.
 Using the is and as operators, we can test for types as well as downcast- that is, treat an instance as one of its subclasses.
 One of the most common reasons you need to perform casting and type checks is when you are dealing with variables of the Any type.
*/
let person: [String: Any] = ["name": "Jane", "Age": 25, "Wears glasses": true]
//We explicitly declared the type. As mixed-type collections are often a bad idea.
let possibleString = person["name"]
if possibleString is String {
    print("\(possibleString) is a string!!")
}//prints "Jane is a string"
//The as? operator checks the type of a variable and returns an optional value of the specified type
if let name = person["name"]{
    var maybeString = name as? String
    //maybeString is an optional String containing 'Jane'
    var maybeInt = name as? Int
}
if let name = person["name"]{
    var maybeString = name as! String
    //maybeString is a String containing "Jane"
}
