//
//  main.swift
//  stringFoundation
//
//  Created by 전상민 on 2021/05/27.
//

import Foundation


var s: String = "1111"
if s.count == 4 || s.count == 6{
    let filterStr = s.filter {$0.isNumber} // 문자열에서 숫자만 출력
    if s.count == filterStr.count{ // 숫자만 출력했을때의 문자열 길이와 원래 문자열 길이 비교
        print("true") // 같으면 true
    }else{
        print("false") // 틀리면 false
    }
}else{
    print("false")
}
// ------------------------------------------------------------------------------

for i in 0 ..< s.count{
    let index = s[s.index(s.startIndex, offsetBy: i)] // 문자열 인덱싱
    // index는 char Type
    let S_index = String(index) // char -> String
    print(S_index)
}


