//
//  main.swift
//  sumDivisor
//
//  Created by 전상민 on 2021/05/31.
//

import Foundation

var arr: [Int] = []
var count = 0

func solution(_ left:Int, _ right:Int) -> Int {
    for i in left ... right{
        for j in 1 ... i{
            if i%j == 0{ count += 1 }
        }
        if count%2 == 0{ arr.append(i) }
        else{ arr.append(-i) }
        count = 0
    }
    return arr.reduce(0, +)
}

print(solution(24, 27))
