//
//  main.swift
//  featureDevelopment
//
//  Created by 전상민 on 2021/06/06.
//

import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
        
    var arr1: [Int] = []
    var arr2: [Int] = []
    var buf:[Int] = [100]
    var result: [Int] = []
    var count = 0
    var day = 0
    var rel = 0

    for i in 0 ..< progresses.count{
       arr1.append(100 - progresses[i])
       while arr1[i] >= count+1 {
           count += speeds[i]
           day += 1
       }
       arr2.append(day)
       count = 0
       day = 0
    }
    arr2.append(101)
    buf[0] = arr2[0]
    for i in 0 ..< arr2.count{
        if buf[0] < arr2[i]{
            result.append(rel)
            buf[0] = arr2[i]
            rel = 0
        }
        rel += 1
    }
    
    return result
    
}

print(solution([93, 30, 55, 60, 40, 65], [1, 30, 5 , 10, 60, 7]))
