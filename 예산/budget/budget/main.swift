//
//  main.swift
//  budget
//
//  Created by 전상민 on 2021/06/15.
//

import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    
    var d1 = d.sorted()
    var budget1 = budget
    var count = 0
    
    for i in d1{
        budget1 = budget1 - i
        if budget1 >= 0{
            print(budget1)
            count += 1
        }
    }
    return count
}

print(solution([2,2,3,3], 10))
