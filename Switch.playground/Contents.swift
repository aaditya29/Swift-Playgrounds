//: Playground - noun: a place where people can play
/*
import Cocoa

var statusCode: Int = 404
var errorString: String
switch statusCode
{
    case 400:
        errorString = "Bad request"
case 401:
    errorString = "Unauthorized"
case 403:
    errorString = "Forbidden"
case 404:
    errorString = "Not Found"
default:
    errorString = "None"
}
*/

//fallthrough: fallthrough is a control transfer statement. fallthrough statements allow you to modify the order of execution in some control flow. These statements transfer control from one chunk of code to another
import Cocoa
var statusode: Int = 404
var errorString: String = "The request failed"
switch statusode
{
case 400, 401, 403, 404:
    errorString = "There was something wrong with the request"
    fallthrough
default:
    errorString += "Please review the request and try again"
//Here fallthrough tells the switch statement to " fall through" the bottom of a case to the next one.
//If a matching case has a fallthrough contrl transfer statement at the end of it, it will first execute its code, and then transfer control to the case immediately below.

}
