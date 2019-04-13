//: Playground - noun: a place where people can play

import Cocoa

func greetByMiddleName(fromFullName name: (first: String, middle: String?, last: String)){
    guard let middleName = name.middle else{
        print("Hey There !")
        return
    }
    print("Hey \(middleName)")
}
greetByMiddleName(fromFullName: ("Matt", "Danger", "Mathias"))
/*
The code guard let middleName = name.middle binds the valuse in middle to a constant called middleName. If there is no value in the optional, then the code in the guard statement's body is executed. 

*/
