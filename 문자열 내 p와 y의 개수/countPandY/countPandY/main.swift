//
//  main.swift
//  countPandY
//
//  Created by 전상민 on 2021/05/27.
//

import Foundation

var s = "Ppy3"
var count = -1
var count2 = 0
var index1 = [Int]()
var index2 = [Int]()


for index in s.utf16{ // 문자열안의 문자를 ASCII Code(index)로 변환
    if index > 64 && index < 123{
    }else{
        count2 += 1 // (A - z)까지의 범위에 포함 안될때(알파벳이 아닐때)
    }
}

if (s.count <= 50) && (count2 == 0){ // 문자열의 길이 && 알파벳으로만 구성
    for i in s {
        count += 1
        if i == "P" || i == "p" { // P,p가 있을때 마다 count +1
            index1.append(count)
        }else if i == "Y" || i == "y"{ // Y,y가 있을때 마다 count +1
            index2.append(count)
        }
    }
    if index1.count == index2.count{ // P,p 와 Y,y의 개수 비교
        print(true)
    }else{
        print(false)
    }

}else{ // 조건에 해당이 안될때
    print(false)
}

// components 사용
let string = s.lowercased()
print(string.components(separatedBy: "p").count == string.components(separatedBy: "y").count)
