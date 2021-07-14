import Foundation

func solution(_ s:String) -> Int{
    var stack = [String]()
    
    if s.count % 2 == 0{
        for i in s {
            if stack.last == String(i) {
                stack.popLast()
            }else {
                stack.append(String(i))
            }
        }
        return stack.count == 0 ? 1 : 0
    }else {
        return 0
    }
}

print(solution("baabaa"))
