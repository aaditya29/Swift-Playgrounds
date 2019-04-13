//: Playground - noun: a place where people can play

import Cocoa

/*
Functions can return more than one value. To do this, Swift uses the tuple data type
*/
func sortedEvenOddNumbers(_numbers: [Int]) -> (evens: [Int], odds: [Int])
{
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers {
        if number % 2 == 0{
            evens.append(number)
        }
        else {
            odds.append(number)
        }
    }
    return (evens, odds)
}
let aBunchOfNumbers = [10,1,4,3,57,42,84,27,156,111]
let theSortedNumbers = sortedEvenOddNumbers(aBunchOfNumbers)
print("The even numbers are: \(theSortedNumbers.evens);
    the odd numbers are: \(theSortedNumbers.odds)")
