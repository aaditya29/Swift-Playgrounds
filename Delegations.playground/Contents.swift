//: Playground - noun: a place where people can play

import Cocoa
/*
Delegation is Cocoa's term for passsing off some responsibilities of an object to another.
 
 Let's say object A wants to let object B know that something is goint to happen or has happened, and store a reference to object B as an instance variable.
 This reference to Object B is known as the delegate.
 When the evenet happens, Object A checks to see if the delegate object(Object B) implements a method that suits the event- for delegates of the UI-Application class.
*/
//Working with delegates in Swift is easy. Let's we have two classes and we want one of thmto act as the delegate for the another.

//Define a protocol
protocol HouseSecurityDelegate{
    /*
     We don't define the function here, but rather
     indicate that any class that is a HouseSecurityDelegate
     is required to have a handleIntruder() function.
     */
    func handleIntruder()
}

class House{
    //The delegate can be any objet that conforms
    //to the HouseSecurityDelegate protocol
    var delegate: HouseSecurityDelegate?
    
    func burglarDetected(){
        //Check to see if the delegate is there, then call it
        delegate?.handleIntruder()
    }
}

class GuardDog: HouseSecurityDelegate{
    func handleIntruder() {
        print("Releasing the hounds!!")
    }
}
let myHouse = House()
myHouse.burglarDetected()//does nothing

let theHounds = GuardDog()
myHouse.delegate = theHounds
myHouse.burglarDetected()
