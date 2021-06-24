import Foundation

func solution(_ s:String) -> String {

    var result: [[String]] = []
    var count = 0
    var count1 = 0

    for i in s{

        if i == " "{
            result.append([" "])
            count += 1
        }else if count >= 1{
            let a = String(i).map({$0.uppercased()})
            result.append(a)
            count = 0
        }else{
            var b = String(i).map({$0.lowercased()})
            result.append(b)
            if count1 == 0{
                result.removeFirst()
                b = String(i).map({$0.uppercased()})
                result.append(b)
                count1 += 1
            }
        }
    }

    let resultString = result.joined()

    return resultString.reduce("", + )
}

print(solution("fpeople  unFollowed me"))


