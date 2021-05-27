//
//  main.swift
//  waterMelon
//
//  Created by 전상민 on 2021/05/25.
//

import Foundation

var solution: String
var waterMelon: [String] = []

var n: Int = Int(readLine()!)!

for i in 0 ..< n{
    if i % 2 ==  1{ // 홀수
        waterMelon.append("박")
    }else{ // 짝수
        waterMelon.append("수")
    }
}
solution = waterMelon.joined(separator: "") // 문자 합치기
print("\(solution)")
