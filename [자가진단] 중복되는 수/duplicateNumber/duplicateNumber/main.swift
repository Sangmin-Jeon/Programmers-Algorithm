//
//  main.swift
//  duplicateNumber
//
//  Created by 전상민 on 2021/06/15.
//

import Foundation


func solution(number: [Int]) -> [Int]{
    
    var num = number
    var arr: [Int] = []
    var buf: [Int] = [0]
    var count = 0
    
    num.sort()
    for i in 0 ..< num.count{
        for j in 0 ..< num.count{
            if buf[0] != num[i]{
                if num[j] == num[i]{
                    count += 1
                }
            }
        }
        if count > 1{
            buf[0] = num[i]
            arr.append(count)
        }
        count = 0
    }
    if arr.reduce(0,+) == 0{
        arr.append(-1)
    }
    return arr
}
print(solution(number: [1,1,1,2,1,5,9,5,5,8,8,1,8,5,5]))

