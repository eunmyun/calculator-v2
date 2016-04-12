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
// create a function that expects one of them along with two Ints
func add (input1 : Int, input2 : Int) -> Int {
    return input1 + input2
}

func subtract (input1 : Int, input2 : Int) -> Int {
    return input1 - input2
}

func multiply (input1 : Int, input2 : Int) -> Int {
    return input1 * input2
}

func divide (input1 : Int, input2 : Int) -> Int {
    return input1 / input2
}

func simpleCalc (input1 : Int, input2 : Int, op : (Int, Int) -> Int) -> Int {
    return op(input1, input2)
}

//  Array fun
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

func subArry (inputs : [Int]) -> Int {
    var result = inputs[0]
    for index in 1...inputs.count {
        result *= inputs[index]
    }
    return result
}

func divArry (inputs : [Int]) -> Int {
    var result = inputs[0]
    for index in 1...inputs.count {
        result *= inputs[index]
    }
    return result
}


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

func _addPoint

addPoint(pointA, b : pointB)
subPoint(pointA, b : pointB)
addPoint(pointC, b : pointD)

