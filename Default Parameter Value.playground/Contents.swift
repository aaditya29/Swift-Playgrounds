//: Playground - noun: a place where people can play

import Cocoa

/*
Swift's parameters can take default values. Default values should be placed at the end of the function's parameters.
*/

func divisionDescriptionFor(numerator: Double,
                            denominator: Double,
                            withPunctuation punctuation: String = ".")
{
    
    print("\(numerator) divided by \(denominator) equals \(numerator/denominator)\(punctuation))")
}
divisionDescriptionFor(numerator: 9.0, denominator: 3.0)
divisionDescriptionFor(numerator: 9.0, denominator: 3.0, withPunctuation: "!")
