//: Playground - noun: a place where people can play

import Cocoa

let playground = "Hello, Playground"
var mutablePlayground = "Hello, mutable playground"
mutablePlayground += "!"
for c: Character in mutablePlayground.characters{
    print("'\(c)'")
}
let oneCoolDude = "\u{1F60E}"
let aAcute = "\u{0061}\u{0301}"
for scalar in playground.unicodeScalars{
    print("\(scalar.value)")
}
