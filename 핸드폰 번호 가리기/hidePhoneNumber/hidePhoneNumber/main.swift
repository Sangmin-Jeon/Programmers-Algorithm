//
//  main.swift
//  hidePhoneNumber
//
//  Created by 전상민 on 2021/05/26.
//

import Foundation

var phoneNumber: String = "01033334444"

var arr = Array(phoneNumber) // String -> Array

for i in 0 ..< arr.count - 4{
    arr[i] = "*"
}

phoneNumber = String(arr) // Array -> String
print(phoneNumber)
