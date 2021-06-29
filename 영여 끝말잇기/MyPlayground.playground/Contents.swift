import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {

    var arr: [String] = ["\(words[0].first!)"]
    var people = 0
    var cycle = 1
    var result: [Int] = []

    for i in 0 ..< words.count{
        if people + 1 == n{
            cycle += 1
        }
        people = i % n
        if arr.contains(words[i]){
            result.append(people+1)
            result.append(cycle)
            break
        }else{
            if arr[i].last! == words[i].first!{
                arr.append(words[i])
            }else{
                result.append(people+1)
                result.append(cycle)
                break
            }
        }
    }
    if result.isEmpty{
        return [0,0]
    }

    return result
}

print(solution(3, ["tank", "kick", "know", "wheel", "land", "dream", "mother", "robot", "tank"]))

