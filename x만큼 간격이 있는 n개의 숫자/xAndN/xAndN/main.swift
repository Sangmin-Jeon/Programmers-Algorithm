//
//  main.swift
//  xAndN
//
//  Created by 전상민 on 2021/05/27.
//

import Foundation
func solution(_ x:Int, _ n:Int) -> [Int64] {
    //var x: Int = -4
    //var n: Int = 2
    var result: Int64 = numericCast(x)
    var arr = [Int64]()
    arr = [Int64](repeating: 0, count: n)

    for i in 0 ..< n{
        arr[i] = result
        result += numericCast(x)
     }

//print(arr)
    return arr
}

print(solution(-4, 2))
