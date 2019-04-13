//: Playground - noun: a place where people can play

import Cocoa

/*
A protocol can be thought of as a list of requirements for a class. When we define a protocol, you're creating a list of properties and methods that classes can declare that they have.
 Failing to implement the protocol correctly is a compiler error.
 
 A protocol looks very much like a class, with the exception that we don't provide and actual code- we just define what kinds of properties and functions exist and how they can be accessed.
 
 For example, if we wanted to create a protocol that describes any object that can blink on and off, we could use this:
*/

protocol Blinkable{
    //This property must be at least gettable
    var isBlinking: Bool{get}
    //This property must be gettable and settable
    var blinkSpeed: Double {get set}
    //This function must exist, but what it does is up to the implementor
    func startBlinking(blinkSpeed: Double) -> Void
}

class TrafficLight: Blinkable{
    var isBlinking: Bool = false
    
    var blinkSpeed: Double = 0
    
    func startBlinking(blinkSpeed: Double) {
        print("I am a light and i am now blinking")
        
        isBlinking = true
        
        self.blinkSpeed = blinkSpeed
    }
}

class Lighthouse: Blinkable{
    var isBlinking: Bool = false
    
    var blinkSpeed: Double = 0.0
    
    func startBlinking(blinkSpeed: Double) {
        print("I am a lighthouse, and i am now blinking")
        isBlinking = true
        self.blinkSpeed = blinkSpeed
    }
}

var aBlinkingThing: Blinkable
//can be any object that has the Blinkable protocol

aBlinkingThing = TrafficLight()

aBlinkingThing.startBlinking(blinkSpeed: 4.0)

aBlinkingThing.blinkSpeed

aBlinkingThing = Lighthouse()
