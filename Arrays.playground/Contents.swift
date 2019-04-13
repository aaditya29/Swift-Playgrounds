//: Playground - noun: a place where people can play

import Cocoa

var bucketList: [String] = ["Climb Mt. Everest"]
//Here we are creating a new variable called bucketList that is the type of Array.
/*
    There is probably new in the syntax is <String>. This code tells bucketList what sort of instances it can accept.
    Here, our array will accept the instances of the String type.
 Arrays can hold instances of any type.

 Alter way to to define the array:
 var bucketList = ["Climb Mt. Everest"}
*/


/*
        Accessing and Modifying Arrays
 We use append to a a value to te array. The append(_:) method takes an argument of whatever type and array accepts and makes it a new element in the array.
*/
/*
bucketList.append("Fly Hot Air Balloon to Fiji")
bucketList.append("Watch the Lord Of The Rings Trilogy in one day")
bucketList.append("Go on a walkabout")
bucketList.append("Scuba dive in the Great Blue Hole")
bucketList.append("Find a triple rainbow.")
 */
//To remove the item from a list we use the function remove(at:).
var newItems = ["Fly how air balloon to Fiji",
    "Watch the Lord Of The Rigs Trilogy In One Day",
    "Go On A Walkabout",
    "Small dive in the the Great Blue Hole",
    "Find A Triple Rainbow"

]
bucketList += newItems
bucketList.remove(at: 2)
print(bucketList.count)
print(bucketList[0...2])
bucketList[2] += "in Australia"
bucketList[0] = "Climb Mt. Kilminjaro"
bucketList
/*
        To Insert A New Element To your array at a specified index
 Use the insert(_:at:) function to add a new element to the array at a specified index
 */
bucketList.insert("Toboggan across Alaska", at: 2)
bucketList
//Checking two arrays for equality
var myronsList = [
    "Climb Mt. Kilmimnjaro",
    "Fly how air balloon to Fiji",
    "Toboggan across Alaska",
    "Go on a walkabout in Australia",
    "Find a triple rainboow",
    "Scuba dive in the Great Blue Hole"
]
let equal = (bucketList == myronsList)
