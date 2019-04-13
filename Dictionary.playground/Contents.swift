//: Playground - noun: a place where people can play

import Cocoa

/*
        Dictionaries
 A Dictionary is a collection type that organizes its content by key-value pair's.
 The keys in a dictionary map onto values.
 A key is like the ticket you give to the attendant at a coat check.
 The keys in a dictionary must be unique.
 
 Syntax:
 var dict: Dictionary<Key, Value>
 This code creates a mutable instance of te Dictionary type called dict.
 
 The only requirement for Swift's Dictionary type's keys is that the key must be hashable.
 Swift's basic type such as String, Int, Float, Double and Bool are all hasable.
 
 Following are the different ways we can get an instance of a dictionary
 1) var dict1: Dictionary<String, Double> = [:]
 2) var dict2: Dictionary <String, Double>()
 3) var dict3: [String: Double] = [:]
 4)var dict4: [String: Double]()
*/
var movieRatings = ["Donnie Darko": 4, "Chungking Express": 5]//Creation of mutable dictionary
print("I have rated \(movieRatings.count) movies. ")
//Now we will read a value from the movieRatings dictionary.
let darkoRating = movieRatings["Donnie Darko"]
movieRatings["Dark Knight"] = 5
movieRatings
//There is another way to update vlaues associated with a dictionary's keys:
//The updateValue(_:forKey:) returns an optional. This return type is handy because the key may not exist in the dictionary.
let oldRating: Int? = movieRatings.updateValue(5, forKey: "Donnie Darko")
if let lastRating = oldRating, let currentRating = movieRatings[
    "Donnie Darko"]{
    print("Old rating:\(lastRating); current rating: \(currentRating)")
}
