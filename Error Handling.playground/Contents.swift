//: Playground - noun: a place where people can play

import Cocoa

/*
In Swift, erros can be any type that conforms to the error protocol. The Error protocol doesn't have any required functions or properties, which means that any class, enum or structure can be an error.
 When our code encounters an error, it throw an error.
*/


//For example, let's define an enumeration for problems that can relate to a band account.

enum BankError: Error{
    //Not enough money in the account
    case notEnoughFunds
    
    //can't create account with negative money
    case cannotBeginWithNegativeFunds
    
    //Can't make a negative deposit or withdrawl
    case cannotMakeNegativeTransaction(amount: Float)
}
class BankAccount{
    //The amount of money in the account
    private(set) var balance: Float = 0.0
    
    //Initializes the account with an amount of money.
    //Throws an error if we try to create the account with negative funds.
    init(amount: Float) throws{
        //Ensure that we have a non-negative amount of money
        guard amount > 0 else{
            throw BankError.cannotBeginWithNegativeFunds
        }
        balance = amount
    }
    
    
    //Adds some money to the account
    func deposit(amount: Float) throws{
        //ensure that we're trying to deposit a non-negative amount
        guard amount > 0 else{
            throw BankError.cannotMakeNegativeTransaction(amount: amount)
        }
        balance += amount
    }
    
    //Withdraws money from the bank account
    func withdraw(amount: Float) throws{
        //Ensure that we're trying to deposit a non-negative amount
        
        guard amount > 0 else{
            throw BankError.cannotMakeNegativeTransaction(amount: amount)
        }
        //Ensure that we have enough to withdraw this amount
        guard balance >= amount else{
            throw BankError.notEnoughFunds
        }
        balance -= amount
    }
}

/*
When we call any function, method, or initializer that throws, we are required to wrap it up in a do-catch block/
 In the do block, we call the methods that may potentially throws errors; each time we do this, we preface the potentially throwing cal with try. If the method call throws an error, they do block stops executing and the catch clause runs:
*/
do {
    let vacationFund = try BankAccount(amount: 5.0)
    try vacationFund.deposit(amount: 5.0)
    try vacationFund.withdraw(amount: 11.0)
} catch let error as BankError{
    //catching any bank error that was thrown
    switch  (error) {
        
    case .notEnoughFunds:
        print("Not enough funds in account!!")
    
    case .cannotBeginWithNegativeFunds:
        print("Tried to start an account with negative money!!")
    
    case .cannotMakeNegativeTransaction(let amount):
        print("Tried to do a transaction with a negative amount of \(amount)!")
    }
}
