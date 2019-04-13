//: Playground - noun: a place where people can play

import Cocoa
/*
We can do more with the properties, including creating properties that use code to figure out  thir value. These are known as computed properties, and we can use them to provide a simpler interface to information stored in our classes.
*/
class Rectangle{
    var width: Double = 0.0
    var height: Double = 0.0
    
    var aread: Double{
        //computed getter
        get{
            return width*height
        }
        set{
            width = sqrt(newValue)
            height = sqrt(newValue)
        }
    }
    
}

let rect = Rectangle()
rect.width = 3.0
rect.height = 4.5
rect.aread
rect.aread = 9
