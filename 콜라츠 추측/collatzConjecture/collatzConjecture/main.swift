//
//  main.swift
//  collatzConjecture
//
//  Created by 전상민 on 2021/05/28.
//

import Foundation

var n = 4
var n1 = 0
var count = 0
var result = 0

func solution(_ num:Int) -> Int {
    n = num
    if num == 1{
        return 0
    }
    while count != 501 && result != 1{
        let n1 = n%2
        if n1 == 0 {
            n = n/2
        }else{
            n = n*3+1
        }
        result = n
        count += 1
    }
    if count > 500 || count == 1{
        return -1
    }else{
        return count
    }

}

print(solution(n))
