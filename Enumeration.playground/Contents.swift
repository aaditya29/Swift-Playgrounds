//: Playground - noun: a place where people can play

import Cocoa

/*
Creating an enumeration is an easy way to group a collection of related or like values and work with them in a safe, clean way.
 An enumeration is a first-class type that is restricted to a defined list of possible values.
*/
enum FutureiPad{
    case iPadSuperPro
    case iPadTotallyPro
    case iPadLudicruos
}
//Once we have got enum, we can use it like any other variable in swift.
var nextiPad = FutureiPad.iPadTotallyPro
//We can also change it to a different value of the same type
nextiPad = .iPadSuperPro
//Or we can use a Switch statement to match enumeration values
switch nextiPad{
case .iPadSuperPro:
    print("Too Big")
case .iPadTotallyPro:
    print("Too Small")
case .iPadLudicruos:
    print("Just right")
}
/*
Enum in Swift allow you to store associated values. The associated values can be of any type, and each member of the enum can have a different set of values.
*/
//For example
enum BasicWeapon {
    case laser
    case missiles
}
enum AdvancedWeapons{
    case laser(powerLevel: Int)
    case missiles(range: Int)
}
//To work with these associated values, we provide them while assigning the variables
let spaceLaser = AdvancedWeapons.laser(powerLevel: 5)
//Also we can use switch statement with associated values, which allows us to pattern-match on more specific values in the enum.
switch spaceLaser{
case .laser(powerLevel: 0...10):
    print("It's a laser with power from 0 to 10!")
case .laser:
    print("It's a Laser")
case .missiles(let range):
    print("It's a missile with range \(range)!")
}
/*
Enum can alsi have default values, or raw values, as an alternative to associated values. All raw values must be of the same type and can be provided for each of the enumeration
*/
enum Response: String {
    case hello = "Hi"
    case goodbye = "See you next time"
    case thankYou = "No Worries"
}
//We can get the raw values like this
let hello = Response.hello
hello.rawValue//"Hi"

