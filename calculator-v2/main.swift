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
    for index in 0...inputs.count - 1 {
        sum += inputs[index]
    }
    return sum
}

func multArry (inputs : [Int]) -> Int {
    var result = inputs[0]
    for index in 1...inputs.count - 1 {
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
    for index in 1...inputs.count - 1 {
        sum += inputs[index]
    }
    return sum / inputs.count
}

// refactor all four down to another "generic math operation" approach
func genFunc (inputs : [Int], op : ([Int]) -> Int) -> Int {
    return op(inputs)
}

print("Add 1, 2, 3, 4 = \(addArry([1, 2, 3, 4]))")
print("multiply 1, 2, 3, 4 = \(multArry([1, 2, 3, 4]))")
print("count 1, 2, 3, 4 = \(count([1, 2, 3, 4]))")
print("average 1, 2, 3, 4 = \(avg([1, 2, 3, 4]))")

print("Add 1, 2, 3, 4 = \(genFunc([1, 2, 3, 4], op: addArry))")
print("Multiply 1, 2, 3, 4 = \(genFunc([1, 2, 3, 4], op: multArry))")
print("count 1, 2, 3, 4 = \(genFunc([1, 2, 3, 4], op: count))")
print("average 1, 2, 3, 4 = \(genFunc([1, 2, 3, 4], op: avg))")


//  Points
// use tuples to represent x/y point pairs
var pointA : (x1 : Int, y1 : Int) = (1, 2)
var pointB : (x2 : Int, y2 : Int) = (3, 4)

// create two functions for adding and subtracting points
func addPoint (a : (x1 : Int, y1 : Int), b : (x2 : Int, y2 : Int)) -> (x : Int, y : Int) {
    return (a.x1 + b.x2, a.y1 + b.y2)
}

func subPoint (a : (x1 : Int, y1 : Int), b : (x2 : Int, y2 : Int)) -> (x : Int, y : Int) {
    return (a.x1 - b.x2, a.y1 - b.y2)
}

print("(1, 2) + (3, 4) = \(addPoint(pointA, b : pointB))")
print("(1, 2) - (3, 4) = \(subPoint(pointA, b : pointB))")

// now use Dictionaries to represent points
var pointC = [
    "x": 1,
    "y": 2,
]

var pointD = [
    "x": 3,
    "y": 4,
]

// create two functions for adding and subtracting points
func _addPoint (c : [String: Int], d : [String: Int]) -> [String: Int] {
    let x = c["x"]! + d["x"]!
    let y = c["y"]! + d["y"]!
    let result = [
        "x": x,
        "y": y,
    ]
    return result
}

func _subPoint (c : [String: Int], d : [String: Int]) -> [String: Int] {
    let x = c["x"]! - d["x"]!
    let y = c["y"]! - d["y"]!
    let result = [
        "x": x,
        "y": y,
        ]
    return result
}

print("(1, 2) + (3, 4) = \(_addPoint(pointC, d : pointD))")
print("(1, 2) - (3, 4) = \(_subPoint(pointC, d : pointD))")
