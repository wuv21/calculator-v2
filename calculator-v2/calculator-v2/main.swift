//
//  main.swift
//  calculator-v2
//
//  Created by Vincent Wu on 4/5/16.
//  
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

func addPt(p1: CartPt, p2: CartPt) -> CartPt {
    return (p1.0 + p2.0, p1.1 + p2.1)
}

func subPt(p1: CartPt, p2: CartPt) -> CartPt {
    return (p1.0 - p2.0, p1.1 - p2.1)
}

typealias CartPt_dict = Dictionary<String, Double>

func addPt_dict(p1: CartPt_dict, p2: CartPt_dict) -> CartPt_dict {
    var ans = ["x": 0.0, "y": 0.0]
    
    for (key, _) in ans {
        if p1[key] == nil {
            ans[key] = p2[key]!
        } else if p2[key] == nil {
            ans[key] = p1[key]!
        } else {
            ans[key] = p1[key]! + p2[key]!
        }
    }
    return ans
}

func subPt_dict(p1: CartPt_dict, p2: CartPt_dict) -> CartPt_dict {
    var ans = ["x": 0.0, "y": 0.0]
    
    for (key, _) in ans {
        if p1[key] == nil {
            ans[key] = -p2[key]!
        } else if p2[key] == nil {
            ans[key] = p1[key]!
        } else {
            ans[key] = p1[key]! - p2[key]!
        }
    }
    return ans
}

// examples - point addition
print("\nexamples - - - point addition")
print("(0,0) + (3,3) = \(addPt((0,0), p2: (3,3)))")
print("(2,4) + (3,3) = \(addPt((2,4), p2: (3,3)))")
print("(1,5) + (2,3) = \(addPt((1,5), p2: (2,3)))")
print("(1,1) + (4,1) = \(addPt((1,1), p2: (4,1)))")

// examples - point substraction
print("\nexamples - - - point substraction")
print("(0,0) - (3,3) = \(subPt((0,0), p2: (3,3)))")
print("(2,4) - (3,3) = \(subPt((2,4), p2: (3,3)))")
print("(1,5) - (2,3) = \(subPt((1,5), p2: (2,3)))")
print("(1,1) - (4,1) = \(subPt((1,1), p2: (4,1)))")

// examples - point dictionary addition
print("\nexamples - - - point dictionary addition")
print("(0,0) + (3,3) = \(addPt_dict(["x": 0, "y": 0], p2: ["x": 3, "y": 3]))")
print("(2,4) + (3,3) = \(addPt_dict(["x": 2, "y": 4], p2: ["x": 3, "y": 3]))")
print("(1,5) + (2,3) = \(addPt_dict(["x": 1, "y": 5], p2: ["x": 2, "y": 3]))")
print("(1,1) + (4,1) = \(addPt_dict(["x": 1, "y": 1], p2: ["x": 4, "y": 1]))")
print("(1) + (4,1) = \(addPt_dict(["x": 1], p2: ["x": 4, "y": 1]))")
print("(1,2) + (4) = \(addPt_dict(["x": 1, "y": 2], p2: ["x": 4]))")

// examples - point dictionary substraction
print("\nexamples - - - point dictionary substraction")
print("(0,0) + (3,3) = \(subPt_dict(["x": 0, "y": 0], p2: ["x": 3, "y": 3]))")
print("(2,4) + (3,3) = \(subPt_dict(["x": 2, "y": 4], p2: ["x": 3, "y": 3]))")
print("(1,5) + (2,3) = \(subPt_dict(["x": 1, "y": 5], p2: ["x": 2, "y": 3]))")
print("(1,1) + (4,1) = \(subPt_dict(["x": 1, "y": 1], p2: ["x": 4, "y": 1]))")
print("(1) - (4,1) = \(subPt_dict(["x": 1], p2: ["x": 4, "y": 1]))")
print("(1,2) - (4) = \(subPt_dict(["x": 1, "y": 2], p2: ["x": 4]))")