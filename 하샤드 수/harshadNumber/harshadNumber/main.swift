//
//  main.swift
//  harshadNumber
//
//  Created by 전상민 on 2021/05/26.
//

import Foundation

var x = 1234
var sum = 0
var xTemp = x

while xTemp >= 1 {
    sum += xTemp % 10
    xTemp /= 10
    print(xTemp)
}

if x % sum == 0 {
    print("o")
}
else {
    print("x")
}

// ------------------------------------------------------------------------------------------------
//func solution(_ x:Int) -> Bool {
//
//    return x % String(x).map{String($0)}.reduce(0){$0 + Int($1)!} == 0 ? true : false
//
//}
