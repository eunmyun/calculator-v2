//
//  main.swift
//  calculator-v2
//
//  Created by MyungJin Eun on 4/9/16.
//  Copyright © 2016 MyungJin Eun. All rights reserved.
//

import Foundation

//  Build a calculator
// create four functions for add, subtract, multiply, divide
let add = {(input1 : Int, input2 : Int) -> Int in
    return input1 + input2
}

let subtract = {(input1 : Int, input2 : Int) -> Int in
    return input1 - input2
}

let multiply = {(input1 : Int, input2 : Int) -> Int in
    return input1 * input2
}

let divide = {(input1 : Int, input2 : Int) -> Int in
    return input1 / input2
}

// create a function that expects one of them along with two Ints
let simpleCalc = {(input1 : Int, input2 : Int, op : (Int, Int) -> Int) -> Int in
    return op(input1, input2)
}

print("2 + 2 = \(add(2, 2))")
print("13 - 8 = \(subtract(13, 8))")
print("2 * 3 = \(multiply(2, 3))")
print("21 / 3 = \(divide(21, 3))")

print("2 + 2 = \(simpleCalc(2, 2, add))")
print("13 - 8 = \(simpleCalc(13, 8, subtract))")
print("2 * 3 = \(simpleCalc(2, 3, multiply))")
print("21 / 3 = \(simpleCalc(21, 3, divide))")


//  Array fun
// create two new functions for add/mul
func addArry (inputs : [Int]) -> Int {
    var sum = 0
    for index in 0...inputs.count {
        sum += inputs[index]
    }
    return sum
}

func multArry (inputs : [Int]) -> Int {
    var result = inputs[0]
    for index in 1...inputs.count {
        result *= inputs[index]
    }
    return result
}

// create two new functions (count, avg) that take an array of Ints
func count (inputs : [Int]) -> Int {
    return inputs.count
}

func avg (inputs : [Int]) -> Int {
    var sum = inputs[0]
    for index in 1...inputs.count {
        sum += inputs[index]
    }
    return sum / inputs.count
}



// refactor all four down to another "generic math operation" approach


//  Points
var pointA : (x : Int, y : Int) = (1, 2)
var pointB : (x : Int, y : Int) = (3, 4)

func addPoint (a : (Int, Int), b : (Int, Int)) -> (Int, Int) {
    return (a.0 + b.0, a.1 + b.1)
}

func subPoint (a : (Int, Int), b : (Int, Int)) -> (Int, Int) {
    return (a.0 - b.0, a.1 - b.1)
}

var pointC = [
    "x": 1,
    "y": 2,
]

var pointD = [
    "x":3,
    "y":4,
]

func _addPoint (c : [String, Int], d : [String, Int]) -> [String, Int] {
    result["x"] = c["x"] + d["x"]
    result["y"] = c["y"] + d["y"]
    return result
}

addPoint(pointA, b : pointB)
subPoint(pointA, b : pointB)
addPoint(pointC, b : pointD)

