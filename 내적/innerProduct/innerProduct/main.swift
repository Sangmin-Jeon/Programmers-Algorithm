//
//  main.swift
//  innerProduct
//
//  Created by 전상민 on 2021/05/29.
//

import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var arr: [Int] = []
    for i in 0 ..< a.count{
        arr.append(a[i] * b[i])
    }
    let sum = arr.reduce(0, +)
    return sum
}
print(solution([-1,0,1], [1,0,-1]))
