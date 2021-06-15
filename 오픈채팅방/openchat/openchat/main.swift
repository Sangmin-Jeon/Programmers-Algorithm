//
//  main.swift
//  openchat
//
//  Created by 전상민 on 2021/06/14.
//

import Foundation

func solution(_ record:[String]) -> [String] {
    
    var arr: [String] = []
    var dic: [String:String] = [:]
    var result: [String] = []
    
    for i in 0 ..< record.count{
        arr = record[i].components(separatedBy: " ")
        if (arr[0] == "Enter") || (arr[0] == "Change"){
            dic.updateValue(arr[2], forKey: arr[1])
        }
    }
    for i in 0 ..< record.count{
        arr = record[i].components(separatedBy: " ")
        if arr[0] == "Enter"{
            result.append("\(dic[arr[1]]!)님이 들어왔습니다.")
        }else if arr[0] == "Leave"{
            result.append("\(dic[arr[1]]!)님이 나갔습니다.")
        }
    }
    return result
}

print(solution(["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"]))
