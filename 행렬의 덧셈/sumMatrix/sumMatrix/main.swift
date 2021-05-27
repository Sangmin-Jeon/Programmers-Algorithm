//
//  main.swift
//  sumMatrix
//
//  Created by 전상민 on 2021/05/25.
//

import Foundation

let arr1: [[Int]] = [[1],[2]]
let arr2: [[Int]] = [[3],[4]]
var result = [[Int]]()

for i in 0 ..< arr1.count{
    result.append([])
    for j in 0 ..< arr1[i].count{
        result[i].append(arr1[i][j] + arr2[i][j])
    }
}
print(result)
