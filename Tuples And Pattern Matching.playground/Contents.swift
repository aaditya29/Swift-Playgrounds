
//: Playground - noun: a place where people can play

import Cocoa

var statusCode: Int = 418
var errorString: String = "Th request failed with the error:"

switch statusCode {
    
case 100, 101:
    errorString += " Informational, \(statusCode)"
case 204:
    errorString += " Successful but no content, 204"

case 300...307:
    errorString += "Redirection, \(statusCode)"

case 400...417:
    errorString += "Client error, \(statusCode)"

case 500...505:
    errorString += "Server error, \(statusCode)."

case let unknownCode where (unknownCode >= 200 && unknownCode < 300 || unknownCode > 505):
    errorString = "\(unknownCode) us not a known code error."
default:
    errorString = "Unexpected error encountered"
    
}
let error = (statusCode, errorString)
