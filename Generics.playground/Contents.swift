//: Playground - noun: a place where people can play

import Cocoa

/*
Swift is a statically typed language. This means that the Swift compiler needs to definitively know what type of information your code is dealing with.
 
Generics allow us to write code that doesn't need to know precisely what information it's dealing with.
 An example of this kind of use is in arrays: they don't actually do any work with the data they store, but instead just store it in an ordered collection. Arrays are, in face, generics.

 To create a generic type, you name your object as usual, and then specify a place-hokler type name between angle brackets.
*/
class Tree <T>{
    //T can be used as a type inside this class
    
    //value is of type T
    var value: T
    //Children is an array of tree objects that have the same type as this one
    private (set) var children: [Tree <T>] = []
    
    //We can initialize this object with a value of type T
    init(value: T){
        self.value = value
    }
    
    func addChild(value: T) -> Tree <T>{
        let newChild = Tree<T>(value: value)
        children.append(newChild)
        return newChild
    }
}
/*
Once a generic type is defined, we can create a specific, nogeneric type from it.
 For example, the Tree heneric type just defined can be used to create a version that works with Ints and one that works with Strings.
*/
//Tree of integers
let integerTree = Tree<Int>(value: 5)

//Can add children that contain Ints
integerTree.addChild(value: 10)
integerTree.addChild(value: 5)

//Tree of strings
let stringTree = Tree<String>(value: "Hello")

stringTree.addChild(value: "Yes")
stringTree.addChild(value: "Internets")
