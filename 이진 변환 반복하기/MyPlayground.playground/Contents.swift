import Foundation

func solution(_ s:String) -> [Int] {

    var get = Array(s).map({String($0)})
    var result: [Int] = []
    var zeroCount = 0
    var count = 0

    while true{
        get.forEach({
            if $0 == "0"{
                zeroCount += 1
            }
        })
        let mergeArr = get.reduce("",+).filter({ $0 == "1" })
        let getCount = mergeArr.count
        let decimal = String(getCount, radix: 2).map({String($0)})
        get = decimal
        count += 1
        if get == ["1"]{
            result.append(count)
            result.append(zeroCount)
            break
        }
    }
    return result
}

print(solution("110010101001"))




