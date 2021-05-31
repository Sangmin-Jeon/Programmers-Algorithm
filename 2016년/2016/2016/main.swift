//
//  main.swift
//  2016
//
//  Created by 전상민 on 2021/05/31.
//

import Foundation


func solution(_ a:Int, _ b:Int) -> String {
    
    let day = ["FRI","SAT","SUN","MON","TUE","WED","THU"]
    let arr = [31,29,31,30,31,30,31,31,30,31,30,31]
    var result = 0
    
    result = (arr[0 ..< a-1].reduce(0, +) + b) % 7
    print(result)
    if result == 0{
        result = 7
    }
    return day[result-1]
}


print(solution(5,24))


