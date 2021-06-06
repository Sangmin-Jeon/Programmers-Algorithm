//
//  main.swift
//  spyWear
//
//  Created by 전상민 on 2021/06/06.
//

import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var dicList: [String:Int] = [:]
    
    for i in clothes{
        if dicList[i[1]] != nil{
            dicList[i[1]]! += 1
        }else{
            dicList[i[1]] = 1
        }
    }

    var count = 1
    print(dicList)
    for (_, value) in dicList{
        count *= (value + 1)
    }
    return count - 1
}


print(solution([["yellowhat", "headgear"], ["bluesunglasses", "eyewear"], ["green_turban", "headgear"]]))
