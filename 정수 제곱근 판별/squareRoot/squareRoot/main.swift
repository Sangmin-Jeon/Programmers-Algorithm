//
//  main.swift
//  squareRoot
//
//  Created by 전상민 on 2021/05/28.
//

import Foundation

let a = 400
var c: Double = Double(a) + 0.0
var b = sqrt(c)


if b > 0 && ceil(b) == floor(b){
    print(Int64(pow(b+1, 2.0)))
}else{
    print(-1)
}




