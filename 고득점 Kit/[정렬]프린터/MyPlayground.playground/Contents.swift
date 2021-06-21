import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    
    var queue: [(Int, Int)] = []
    var priorityQueue = priorities.sorted(by : >)
    var result = 0

    priorities.enumerated().forEach { (index, property) in
        queue.append((index, property))
    }
    
    while !queue.isEmpty  {
        if queue.first!.1 == priorityQueue.first{
            if queue.first!.0 == location{
                return result + 1
            }
            result += 1
            queue.removeFirst()
            priorityQueue.removeFirst()
        }else{
            queue.append(queue.first!)
            queue.removeFirst()
        }
    }
    
    return result
}

print(solution([1, 1, 9, 1, 1, 1], 0))

