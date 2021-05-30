//
//  main.swift
//  removeMinNumber
//
//  Created by 전상민 on 2021/05/30.
//

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var sortedArr: [Int] = []
    sortedArr = arr.sorted() //  기존배열 정렬
    let minNumber = sortedArr.first! // 제일 작은 수
    
    let result = arr.filter({ (r: Int) -> (Bool) in // 제일 작은수 제거
        if r == minNumber { return false }
        return true
    })
    // 기존 배열의 요소가 1개여서
    // 제일 작은수 제거 했을때 빈배열이 되는경우 [-1]리턴
    if result == []{
        return [-1]
    }
    return result
}

print(solution([4,3,2,1]))
