//
//  main.swift
//  weirdCharacter
//
//  Created by 전상민 on 2021/05/29.
//

import Foundation

func solution(_ s:String) -> String {
    
    var count = 0
    var result: String = ""
    let arr = s.components(separatedBy: " ")
    for i in 0 ..< arr.count{
        for j in arr[i]{
            if count%2 == 1{
                result.append(j.lowercased())
            }else{
                result.append(j.uppercased())
            }
            count += 1
        }
        result.append(" ")
        count = 0
        
    }
    result.removeLast()
    return result
}

print(solution("try hello world"))
