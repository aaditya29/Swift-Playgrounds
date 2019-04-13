//: Playground - noun: a place where people can play

import Cocoa

/*
When we work with arrays and dictionaries we use square brackets to indicate to Swift what part of the collection we want to work with The term for this is subscripting. And it's something that our own classes and types can adopt.
 
 We define what it means to get and set values via a subscript keyword.
 */

//For example wi want to acess the individual bits inside an 8-bit integer. We can do this with subscripting, like:

//Extend the unsigned 8-bit integer type
extension UInt8{
    //Allowing subscripting this type using UInt8s
    subscript(bit: UInt8) -> UInt8{
        //This is run when we do things like "Value(s)"
        get {
            return (self >> bit & 0x07) & UInt8(1)
        }
        //This is run when we do things like "value[x] = y"
        set {
            let cleanBit = bit & 0x07
            let mask: UInt8 = 0xFF ^ (1 << cleanBit)
            let shiftedBit = (newValue & 1) << cleanBit
        }
        
    }

}

