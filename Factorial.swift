//
//  Factorial.swift
//
//  Created by Ryan Chung
//  Created on 2021-12-01
//  Version 1.0
//  Copyright (c) 2021 Ryan Chung. All rights reserved.
//
//  This program calclates the factorial of a user-inputted integer.
//

import Foundation

// Returns a factorial via recursion
func factorial(input: Int) -> Int {

    if input == 0 {
        return 1
    } else {
        return input * factorial(input: input - 1)
    }
}

// Captures user input, feeds it to factorial() and outputs the reversed string
print("Enter an integer: ", terminator: "")

guard let inputString = readLine(), !inputString.isEmpty else {
    print("Please enter an integer.")
    exit(001)
}

if let input = Int(inputString) {
    let factorialValue = factorial(input: input)
    print(factorialValue)
}

print("\nDone.")
