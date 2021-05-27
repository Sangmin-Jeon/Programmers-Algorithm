//
//  main.swift
//  avg
//
//  Created by 전상민 on 2021/05/25.
//

import Foundation

var arr: [Int] = [1,2,3,4]
var i: Int = 0
var j: Double = 0.0

i = arr.reduce(0, +)
j = Double(i) / Double(arr.count)
print("\(j)")
