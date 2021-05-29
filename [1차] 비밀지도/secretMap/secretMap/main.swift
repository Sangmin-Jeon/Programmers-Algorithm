//
//  main.swift
//  secretMap
//
//  Created by 전상민 on 2021/05/29.
//

import Foundation

let n = 6
let arr1 = [46, 33, 33 ,22, 31, 50]
let arr2 = [27 ,56, 19, 14, 14, 10]
var answer: [String] = []
var result = ""

for i in 0 ..< arr1.count {
    let bi = String(arr1[i] | arr2[i], radix: 2) // 2진수 or연산
    for i in bi {
       if i == "1" { // 벽
           result += "#"
       } else { // 공백
           result += " "
       }
    }

    if result.count < n { // 문자열 맨앞이 공백일경우 공백 표시
        for _ in 0 ..< n - result.count {
            print(result.count)
            result = " \(result)" // "(공백)result" 형태
        }
    }
    answer.append(result)
    result = ""
}
print(answer)
