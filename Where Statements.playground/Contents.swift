//: Playground - noun: a place where people can play

import Cocoa

var statusCode: Int = 404
var errorString: String = "The request failed with the error:"

switch statusCode{
case 100, 101:
    errorString += " Informational, \(statusCode)"
    
case 204:
    errorString += " Successfu; but no content, 204."
case 300...307:
    errorString += "Redirection, \(statusCode)"

case 400...417:
    errorString += "Client error, \(statusCode)"

case 500...505:
    errorString += "Server error, \(statusCode)"

case let unknownCode where (unknownCode >100 && unknownCode <300 || unknownCode> 505):
    errorString = "\(unknwonCode) is now a known error code."

default:
    errorString = "Unexpected error occured."
    
}
