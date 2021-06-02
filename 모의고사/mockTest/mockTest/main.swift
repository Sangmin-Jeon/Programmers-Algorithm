//
//  main.swift
//  mockTest
//
//  Created by 전상민 on 2021/06/02.
//

import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var count = 0
    var count1 = 0
    var score1 = 0
    var count2 = 0
    var score2 = 0
    var count3 = 0
    var score3 = 0
    let people1:[Int] = [1,2,3,4,5]
    let people2:[Int] = [2,1,2,3,2,4,2,5]
    let people3:[Int] = [3,3,1,1,2,2,4,4,5,5]
    var result:[Int] = []
    
    for _ in 0 ..< answers.count{ // [2,1,2,3,2,4,2,5]
        if people1[count1] == answers[count]{
            score1 += 1 // 수포자1
        }
        if people2[count2] == answers[count]{
            score2 += 1 // 수포자2
        }
        if people3[count3] == answers[count]{
            score3 += 1 // 수포자3
        }
        count += 1
        count1 += 1
        count2 += 1
        count3 += 1
        if count1 == people1.count{
            count1 = 0
        }
        if count2 == people2.count{
            count2 = 0
        }
        if count3 == people3.count{
            count3 = 0
        }
    }
    print(score1)
    print(score2)
    print(score3)
    if(score1 > score2 && score2 > score3) || (score1 > score2 && score2 == score3) || (score1 > score3 && score3 > score2){
        result.append(1)
    }else if(score2 > score1 && score1 > score3) || (score2 > score1 && score1 == score3) || (score2 > score3 && score3 > score1){
        result.append(2)
    }else if(score3 > score2 && score2 > score1) || (score3 > score1 && score1 == score2) || (score3 > score1 && score1 > score2) || (score3 > score1 && score1 > score2){
        result.append(3)
    }else if(score1 == score2 && score2 > score3){
        result.append(1)
        result.append(2)
    }else if(score2 == score3 && score3 > score1){
        result.append(2)
        result.append(3)
    }else if(score1 == score3 && score3 > score2){
        result.append(1)
        result.append(3)
    }else if(score1 == score2 && score2 == score3){
        result.append(1)
        result.append(2)
        result.append(3)
    }
    
    return result.sorted()

}

print(solution([1,2,3,4,5]))
