//: Playground - noun: a place where people can play

import Cocoa

/*
 Closure Syntax follows this general form:
 {(parameters) -> return type in
    code
 }
*/
let volunteerCounts = [1,3,5,7,40,31,77,81,31]
let volunteersSorted = volunteerCounts.sorted(by:{
    (i: Int, j: Int) ->Bool in
    return i < j
})
