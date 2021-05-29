//
//  main.swift
//  mrKim
//
//  Created by 전상민 on 2021/05/29.
//

import Foundation

let seoul: [String] = ["Jane","Kim"]
var count = 0

for i in seoul{
    count += 1
    if i == "Kim"{
        print("김서방은 \(count-1)에 있다")
    }
}
