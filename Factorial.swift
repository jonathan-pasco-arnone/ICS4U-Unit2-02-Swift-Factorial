//
//  Created by Jonathan Pasco-Arnone
//  Created on 2021-11-30
//  Version 1.0
//  Copyright (c) 2021 MTHS. All rights reserved.
//
//  This program calculates the amount of time to reheat a
//  specific quantity of a specific type of food.

import Foundation

// Making an error case.
enum MyError: Error {
    case invalidInteger(String)
}

func factorial(someInt: Int) -> Int {
    // Variables.
    var returnValue: Int = 0

    if someInt == 1 {
        returnValue = 1
    } else if someInt == -1 {
        returnValue = -1
    } else if someInt > 1 {
        returnValue = factorial(someInt: (someInt - 1)) * someInt
    } else if someInt == 0 {
        returnValue = 1
    } else {
        returnValue = factorial(someInt: (someInt + 1)) * someInt
    }

    return returnValue

}

var number: Int = 0

// Inputs
print("Please enter some string to be reversed: ")

do {

    if let numberInput: Int = Int(readLine()!) {
        number = numberInput
    } else {
        throw MyError.invalidInteger("Error")
    }

    let factorialResult: Int = (factorial(someInt: number))

    print("The factorial is: ", factorialResult)

} catch {
    print("That was an invalid input")
}

print("\nDone.")
