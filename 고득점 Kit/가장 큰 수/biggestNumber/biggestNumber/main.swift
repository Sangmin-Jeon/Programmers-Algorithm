//
//  main.swift
//  biggestNumber
//
//  Created by 전상민 on 2021/06/17.
//

import Foundation

//var arr: [[Int]] = []
//var merge: [Int] = []
//var arr2: [String] = []
//
//func solution(_ numbers:[Int]) -> String {
//
//    permuteWirth(numbers,numbers.count - 1)
//
//    for i in  0 ..< arr.count{
//        arr2.append(arr[i].map{"\($0)"}.reduce("", +))
//        for _ in 0 ..< 1{
//            merge.append(Int(arr2[i])!)
//        }
//    }
//
//    let result = merge.sorted().last.map{"\($0)"}
//    return result!
//}
//
//func permuteWirth( _ a: [Int], _ n: Int) {
//    if n == 0 {
//        arr.append(a)
//    } else {
//        var a = a
//        permuteWirth(a, n - 1)
//        for i in 0 ..< n {
//            a.swapAt(i, n)
//            permuteWirth(a, n - 1)
//            a.swapAt(i, n)
//        }
//    }
//}

func solution(_ numbers:[Int]) -> String {
    
    var sort = numbers.sorted(by: { "\($0)\($1)" > "\($1)\($0)"})
    
    if sort.first == 0{
        sort = [0]
    }
    return sort.map({"\($0)"}).reduce("",+)
}

print(solution([3, 30, 34, 5, 9]))

