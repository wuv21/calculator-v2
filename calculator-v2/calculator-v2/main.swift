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

// examples - add
print("examples - - - add")
print("3 + 4 = \(mathOp(3, x2: 4, op: add))")
print("5 + 0 = \(mathOp(5, x2: 0, op: add))")
print("1 + 8 = \(mathOp(1, x2: 8, op: add))")
print("2 + 6 = \(mathOp(2, x2: 6, op: add))")

// examples - substract
print("\nexamples - - - substract")
print("3 - 4 = \(mathOp(3, x2: 4, op: substract))")
print("5 - 0 = \(mathOp(5, x2: 0, op: substract))")
print("1 - 8 = \(mathOp(1, x2: 8, op: substract))")
print("2 - 6 = \(mathOp(2, x2: 6, op: substract))")

// examples - multiply
print("\nexamples - - - multiply")
print("3 * 4 = \(mathOp(3, x2: 4, op: multiply))")
print("5 * 0 = \(mathOp(5, x2: 0, op: multiply))")
print("1 * 8 = \(mathOp(1, x2: 8, op: multiply))")
print("2 * 6 = \(mathOp(2, x2: 6, op: multiply))")

// examples - divide
print("\nexamples - - - divide")
print("3 / 4 = \(mathOp(3, x2: 4, op: divide))")
print("5 / 1 = \(mathOp(5, x2: 1, op: divide))")
print("1 / 8 = \(mathOp(1, x2: 8, op: divide))")
print("2 / 6 = \(mathOp(2, x2: 6, op: divide))")

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
    if val.count == 0{
        total = 0
    }

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

// examples - array add
print("\nexamples - - - array add")
print("[3, 4, 5, 6] = \(mathArrayOp([3, 4, 5, 6], op: addArray))")
print("[] = \(mathArrayOp([], op: addArray))")
print("[1] = \(mathArrayOp([1], op: addArray))")
print("[2, 2, 2] = \(mathArrayOp([2, 2, 2], op: addArray))")

// examples - array multiply
print("\nexamples - - - array multiply")
print("[3, 4, 5, 6] = \(mathArrayOp([3, 4, 5, 6], op: multiplyArray))")
print("[] = \(mathArrayOp([], op: multiplyArray))")
print("[1] = \(mathArrayOp([1], op: multiplyArray))")
print("[2, 2, 2] = \(mathArrayOp([2, 2, 2], op: multiplyArray))")

// examples - array count
print("\nexamples - - - array count")
print("[3, 4, 5, 6] = \(mathArrayOp([3, 4, 5, 6], op: count))")
print("[] = \(mathArrayOp([], op: count))")
print("[1] = \(mathArrayOp([1], op: count))")
print("[2, 2, 2] = \(mathArrayOp([2, 2, 2], op: count))")

// ******************
// Points
typealias CartPt = (Int, Int)

func addPt(x1: CartPt, x2: CartPt) -> CartPt {
    return (x1.0 + x2.0, x1.1 + x2.1)
}

func subPt(x1: CartPt, x2: CartPt) -> CartPt {
    return (x1.0 - x2.0, x1.1 - x2.1)
}


