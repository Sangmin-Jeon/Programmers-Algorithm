import Foundation

func solution(_ board:[[Int]]) -> Int{
    var board1 = board
    var maxValue = 0
    
    for i in 0 ..< board1[0].count{
        if board1[0][i] == 1{
            maxValue = 1
        }
    }
    for i in 1 ..< board1.count{
        for j in 1 ..< board1[i].count{
            if board1[i][j] != 0{
                board1[i][j] += min(board1[i-1][j-1], board1[i-1][j], board1[i][j-1])
            }
        }
        if maxValue < board1[i].max()!{
            maxValue = board1[i].max()!
        }
    }
    let answer = maxValue * maxValue
    
    return Int(answer)
}

print(solution([[0, 1, 1, 1],[0, 0, 0, 0],[0, 0, 0, 0],[0, 0, 0, 0]]))
