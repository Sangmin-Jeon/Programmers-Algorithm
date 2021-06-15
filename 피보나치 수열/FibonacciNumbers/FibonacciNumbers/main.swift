//
//  main.swift
//  FibonacciNumbers
//
//  Created by 전상민 on 2021/06/14.
//

import Foundation

func solution(_ n:Int) -> Int {
    var arr: [Int] = [0,1] // 처음 배열에 F(0) = 0 , F(1) = 1을 설정
    
    if n == 1{ return 1 } // F(1)일때 1을 반환
    for i in 2 ... n{
        let result = arr[i-1] + arr[i-2]
        arr.append(result % 1234567)
    }
    return arr.last! % 1234567
}

print(solution(5))
