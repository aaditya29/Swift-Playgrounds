//: Playground - noun: a place where people can play

import Cocoa

/*
Classes in Swift contain both properties and methods. Properties are variables that are part of a class, and methods are functions that are part of a class.
*/

class Vehicle{
    var color: String?
    var maxSpeed = 80
    func description() -> String{
        return "A \(self.color ?? "uncolored")vehicle"
    }
    func travel() {
        print("Travelling at \(maxSpeed) kph")
    }
}
//We can omit the self keyword if it's obvious that the property is part of the current object.
/*
 To define an instance of the Vehicle class, we define a variable and call the class' initializer. Once that's done, we can work with the class's functions and properties:
*/
let redVehicle = Vehicle()
redVehicle.color = "Red"
redVehicle.maxSpeed = 90
redVehicle.travel()
redVehicle.description()
