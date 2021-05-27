//
//  main.swift
//  programmers
//
//  Created by 전상민 on 2021/05/24.
//

import Foundation

var anser: [Int] = []
var array: [Int] = [1, 5, 2, 6, 3, 7, 4]
var commands: [[Int]] = [[2, 5, 3], [4, 4, 1], [1, 7, 3]]

// print("\(commands.count)") // 3

for command in commands{ // 3번 돈다 , command가 commands의 모든 index를 돈다.
    let i = command[0] - 1 // 2,4,1 , commands의 0번 index들
    let j = command[1] - 1 // 5,4,7
    let k = command[2] - 1 // 3,1,3
    
    // 배열의 [i] ~ [j]까지 정렬후 [k]번째 인덱스를 num에 저장
    let num = Array(array[i ... j]).sorted()[k]
    anser.append(num) // 빈 배열 anser에 anppend로 num추가
    
}

print("\(anser)") // return [5,6,3]
