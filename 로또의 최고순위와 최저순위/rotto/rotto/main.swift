//
//  main.swift
//  rotto
//
//  Created by 전상민 on 2021/06/15.
//

import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var count = 0
    var zeroNum = 0
    var result: [Int] = []
    let dic: [Int:Int] = [6:1,5:2,4:3,3:4,2:5,1:6,0:6]
    
    for i in lottos{
        for j in win_nums{
            if i == j{
                count += 1
            }
        }
        if i == 0{ zeroNum += 1 }
    }
    result.append(dic[count]!)
    count += zeroNum
    result.append(dic[count]!)
    
    return result.sorted()
}

print(solution([45, 4, 35, 20, 3, 9], [20, 9, 3, 45, 4, 35]))
