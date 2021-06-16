//
//  main.swift
//  ternary
//
//  Created by 전상민 on 2021/05/26.
//

import Foundation

var arr:[Int] = []
var result = 0
var count = 1
var num = 125

while(num > 0){ // 3진법으로 변환
   arr.append( num % 3)
   num = num / 3
}
// stride() arr.count -1 부터 -1까지(-1은 포함 안됨), -1씩
for i in stride(from: arr.count-1, to: -1, by: -1){
   result = result + arr[i] * count // count의 초기값은 1
   count *= 3 // 3제곱근

}
print(result)

// --------------------------------------------------------------------------------
// 잘 푼 예제 

// let n  = 45

// let flipToThree = String(n,radix: 3) // 3진법으로 변환, String Type이 된다.
// let answer = Int(String(flipToThree.reversed()),radix:3)!
// print(answer)

// --------------------------------------------------------------------------------

// 진수 변환 >
// radix에 변환하고 싶은 진수의 수를 넣음
// let decimal: Int = 30 // 10 진수는 Int Type
// let binary: String = String(decimal, radix: 2)
// print(binary)
/* 11110 */

// let binary: String = "11011" // 10진수가 아닌 다른 진수는 String Type이다.
// let decimal: Int = Int(binary, radix: 2)! // 문자가 숫자가 아닌경우 때문에 force Unrapping 해줌
// print(decimal)
/* 27 */

// 제곱근 함수
//func powerUsingFor(x: Int , a:Int) -> Int {
//    var result = 1
//    for _ in 0 ..< a{
//        result = result * x
//    }
//    return result
//}
//func powerUsingRecursive(x: Int, a: Int) -> Int{
//    if a == 0{
//        return 1
//    }
//    return x*powerUsingFor(x: x, a: a-1)
//}
