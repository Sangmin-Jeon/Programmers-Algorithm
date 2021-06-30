import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    
    var result: [Int:Double] = [:]
    var challenger = 0
    var notCleared = 0
    
    let stages = stages.map({Double($0)})

    for i in 1 ... N{
        for j in stages{
            if Double(i) <= j{
                challenger += 1
                if Double(i) == j{
                    notCleared += 1
                }
            }
        }
        result.updateValue(Double(notCleared) / Double(challenger), forKey: i)
        notCleared = 0
        challenger = 0
    }

    return result.sorted(by: <).sorted(by: {$0.value > $1.value}).map({Int($0.key)})
}

print(solution(4, [4,4,4,4,4]))
