//
//  main.swift
//  getTheMiddleNumber
//
//  Created by 전상민 on 2021/05/26.
//

import Foundation

// 문자열(strTest)의 index번째 문자를 뽑으려면
// 어디서부터 어디까지라는 메소드는 strTest.index[어디서부터,offsetBy:어디까지) 어디까지라는 파라미터는 offsetBy이다
// startIndex부터 offsetBy까지 알려줘라는 뜻이다.
// Index는 0부터 시작

var strTest = "abcde"
var s = "abcde"
if strTest.count%2 == 0{
     print("\(strTest[strTest.index(strTest.startIndex, offsetBy:  strTest.count/2 - 1)])\(strTest[strTest.index(strTest.startIndex, offsetBy: strTest.count/2)])")
 }
     print("\(strTest[strTest.index(strTest.startIndex, offsetBy:  strTest.count/2)])")

//------------------------------------------------------------------------------------------------------------------------

print("\(String(s[String.Index(encodedOffset: (s.count-1)/2)...String.Index(encodedOffset: s.count/2)]))")

