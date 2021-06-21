import Foundation


var number: [Int] = []
var targets = 0
var index = 0
var sum = 0
var count = 0

func solution(_ numbers:[Int], _ target:Int) -> Int {
    number = numbers
    targets = target
    
    dfs(index: index, sum: sum)

    return count
}
func dfs(index:Int, sum: Int){
    if index == number.count{
        if sum == targets{
            count += 1
        }
        return
    }
    dfs(index: index + 1, sum: sum + number[index])
    dfs(index: index + 1, sum: sum - number[index])
}

print(solution([1, 1, 1, 1, 1], 3))
