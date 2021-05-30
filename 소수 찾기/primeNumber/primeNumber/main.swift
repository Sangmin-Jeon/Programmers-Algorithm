//
//  main.swift
//  primeNumber
//
//  Created by 전상민 on 2021/05/30.
//

import Foundation

func solution(_ n:Int) -> Int {
    var arr = [Int].init(repeating: 0, count: n+1)
    var result = 0
    
    for index in 2 ... n {
        arr[index] = index
    }
    for index in 2 ... n {
        if arr[index] == 0{
            continue
        }
        var j = index + index
        while j <= n {
            arr[j] = 0
            j += index
        }
    }
    for index in 2 ... n{
        if arr[index] != 0{
            result += 1
        }
    }
    return result
}

print(solution(5))
