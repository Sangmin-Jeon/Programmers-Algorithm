//
//  main.swift
//  twoNumbers
//
//  Created by 전상민 on 2021/05/24.
//

import Foundation

var arr: [Int]  = [2,1,3,4,1]
var result: [Int] = []

// var total = 0
// 배열의 모든 요소를 더하는 code
//total = arr.reduce(0){ (a: Int , b: Int) -> Int in
//    return a + b
//}
//print("\(total)")

for i in 0 ..<  arr.count{
    for j in i+1 ..< arr.count{ // i+1 : 자기자신은 더하면 안되서
        if !result.contains(arr[i] + arr[j]){ // 결과 배열내 같은 요소가 있는지, 없다면
            result.append(arr[i] + arr[j]) // 두개의 요소를 더한 값을 결과 배열에 추가.
        }
    }
}
result = result.sorted()
print("\(result)")
