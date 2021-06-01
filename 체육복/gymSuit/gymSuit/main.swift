//
//  main.swift
//  gymSuit
//
//  Created by 전상민 on 2021/06/01.
//

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    
    var students = [Int](repeating: 1, count: n) // n개 만큼 1로 초기화

    for l in lost { // 잃어버린 학생 = 0
        students[l-1] = 0
    }
    for r in reserve { // 여분이 있는 학생 = 2
        students[r-1] += 1
    }
    
    var count = 0 // 못빌리는 학생 수
    for i in 0 ..< n{
        if students[i] == 0 { // 체육복이 없는 학생 찾기
              if i>0 && students[i-1] > 1 { // 뒤에서 빌리기
                  students[i] = 1 // 빌림
                  students[i-1] = 1 // 빌려줌
              } else if i<n-1 && students[i+1] > 1 { // 앞에서 빌리기
                  students[i] = 1 // 빌림
                  students[i+1] = 1 // 빌려줌
              } else {
                  count += 1 // 못 빌릴때마다 +1
              }
          }
    }
    return n - count // 전체 학생 - 못빌린 학생수 = 나갈 수 있는 학생 수
}

print(solution(5, [2,4], [1,3,5]))

 
