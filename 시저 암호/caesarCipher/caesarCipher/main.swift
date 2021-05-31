//
//  main.swift
//  caesarCipher
//
//  Created by 전상민 on 2021/05/31.
//

import Foundation

func solution(_ s:String, _ n:Int) -> String {
    var ascii = 0
    var c: Character
    var arr: String = ""
    for i in s{
        ascii = Int(i.asciiValue!) // Int Type
//        ascii += n
        if ascii>64 && ascii<91{ // 대문자
            ascii += n
            if ascii > 90{
                ascii -= 90
                ascii += 64
            }
        }
        if ascii > 96 && ascii < 123{
            ascii += n
            if ascii > 122{
                ascii -= 122
                ascii += 96
            }
        }
        if ascii == 32+n{
            ascii -= n
        }
        c = Character(UnicodeScalar(ascii)!)
        arr.append(c)
    }
    return arr
}

print(solution("abcdefghijklmnopqrstuvwxyz",25))

