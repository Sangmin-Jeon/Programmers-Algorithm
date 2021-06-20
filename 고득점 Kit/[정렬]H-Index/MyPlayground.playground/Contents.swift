import Foundation

func solution(_ citations:[Int]) -> Int {
    
    var dic: [Int:Int] = [:]
    var count = 0
    let citations = citations.sorted()
    
    for i in 0 ..< citations.last!{
        for j in citations{
            if i <= j{
                count += 1
            }
        }
        if i <= count{
            dic.updateValue(count, forKey: i)
        }
        count = 0
    }
    if citations.last! == 0{
        return 0
    }
    return dic.keys.max()!
}

print(solution([0,0,0,0]))
