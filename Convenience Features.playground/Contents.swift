//: Playground - noun: a place where people can play

import Cocoa

/*
        The Defer Keyword
 The defer keyword lets you write code that will run at a later time, allowing you to write your teardown code next to your setup code.
*/
func doSomeWork(){
    print("Getting Started!")
    defer{
        print("All Done!")
    }
    print("Getting to work!")
}
doSomeWork()

/*
    The guard KeyWord
 This might sound similar to if statement but the block of code that runs if the test doesn't pass is required to exit the current flow of the execution.
 That is if it's inside a function, it has to return from that function
*/
func doAThing(){
    guard 2+2 == 4 else{
        print("The universe makes no sense")
        return
    }
    print("We can continue with our daily lives")
}
