//: Playground - noun: a place where people can play

import Cocoa

/*
When we create an object in Swift, a special method known as its initializer is called.
 The initializer is the method that we use to set up the initial state of an object and is always named init.
 
 Swift has two types of ini, convenience initializers and designated.
 
 A designated initializer sets up everything we need to use that object, often usong default settings where necessary.
 A convenience initializer makes setting up the instane more convenient by allowing for more information to be included in the initialization.
*/

class InitAndDeinitExample{
    //Designated (i.e. main) initializer
    init() {
        print("I've been created")
    }
    //conveniemce initalizer, required to call he designated initializer (above)
    convenience init (text: String){
        self.init()//this is mandatory
        print("I was called with the convenience initializer!")
    }
    //Deinitializer
    deinit {
        print("I am going away!!")
    }
}

var example: InitAndDeinitExample?
example = InitAndDeinitExample()
example = nil

//Using convenience initializer
example = InitAndDeinitExample(text: "hello")

