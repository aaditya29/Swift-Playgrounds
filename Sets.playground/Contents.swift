//: Playground - noun: a place where people can play

import Cocoa
/*
//Creating a set
var groceryBag = Set<String>()
groceryBag.insert("Apples")
groceryBag.insert("Oranges")
groceryBag.insert("Pineapple")
for food in groceryBag{
    print(food)
}
*/
var groceryBag: Set = ["Apples", "Oranges", "Pineapple"]
for food in groceryBag {
    print(food)
}
let hasBananas = groceryBag.contains("Bananas")
let friendsGroceryBag = Set(["Bananas", "Cereals", "Milk", "Orange"])
let commonGroceryBag = groceryBag.union(friendsGroceryBag)
