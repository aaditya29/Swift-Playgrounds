//: Playground - noun: a place where people can play

import Cocoa
/*
Closures are discrete bundles of functionality that can be used in yor application to accomplish apecific tasks. Functions, which learned are special case of closures.
 
*/
let volunteerCounts = [1,3,40,44,55,2,77,31]

func sortAscending(_ i: Int, _ j: Int)->Bool{
    return i < j
}

let volunteersSorted = volunteerCounts.sorted(by: sortAscending)
/*
 sorted(by:) takes one argument: a closure that describes how the sorting should be done. The closure takes two arguments, whose types must match the type of the elements in the array and returns a Bool.
 
*/
