//: Playground - noun: a place where people can play

import Cocoa

func areaOfTriangleWith(base: Double, height: Double) -> Double {
    
    let numerator = base * height
    func divide() -> Double {
        return numerator / 2
    }
    return divide()
}
areaOfTriangleWith(base: 3.0, height: 5.0)
/*
The return value is denoted by the -> String syntax, which indicates that the function will return an instance of the specified type.
 Because you want to log a string to the console, your function returns an instance of the String type.
 
*/
