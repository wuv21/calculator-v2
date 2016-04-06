//
//  main.swift
//  calculator-v2
//
//  Created by studentuser on 4/5/16.
//  Copyright © 2016 Vincent Wu. All rights reserved.
//

import Foundation

// ******************
// Build a calculator
func mathOp(x1 : Int, x2 : Int, op: (Int, Int) -> Int) -> Int {
    return op(x1, x2)
}

func add(x1 : Int, x2 : Int) -> Int {
    return x1 + x2
}

func substract(x1: Int, x2: Int) -> Int {
    return x1 - x2
}

func multiply(x1: Int, x2: Int) -> Int {
    return x1 * x2
}

func divide(x1: Int, x2: Int) -> Int {
    return x1 / x2
}

// examples...todo
print(mathOp(3, x2: 4, op: add))

// ******************
// Array fun

func mathArrayOp(x: [Int], op: ([Int]) -> Int) -> Int {
    return op(x)
}

func addArray(val: [Int]) -> Int {
    var total = 0
    for x in val {
        total += x
    }
    
    return total
}

func multiplyArray(val: [Int]) -> Int {
    var total = 1
    for x in val {
        total *= x
    }
    
    return total
}

func count(val: [Int]) -> Int {
    return val.count
}

func avg(val: [Int]) -> Int {
    return mathArrayOp(val, op: addArray) / val.count
}

// examples...todo

// ******************
// Points
typealias CartPt = (Int, Int)
