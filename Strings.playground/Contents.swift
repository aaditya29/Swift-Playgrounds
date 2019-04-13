//: Playground - noun: a place where people can play

import Cocoa

let playground = "Hello, Playground"
var mutablePlayground = "Hello, mutable playground"
mutablePlayground += "!"
for c: Character in mutablePlayground.characters{
    print("'\(c)'")
//This loop iterates through every character c in mutablePlayground. In it, you access the characters property of the String mutablePlayground.
}
