/*
 platform: Codewars
 link: https://www.codewars.com/kata/5af15a37de4c7f223e00012d
 */

// solution #1

func menFromBoys(_ arr: [Int]) -> [Int] {
    let oddArr = arr.filter { $0 % 2 != 0 }.removeDuplicates().sorted(by: >)
    let evenArr = arr.filter { $0 % 2 == 0 }.removeDuplicates().sorted()
    return evenArr + oddArr
}

extension Array where Element: Hashable {
    func removeDuplicates() -> [Element] {
        var addedDic = [Element: Bool]()
        
        return filter {
            addedDic.updateValue(true, forKey: $0) == nil
        }
    }
    
    mutating func removeDuplicates() {
        self = self.removeDuplicates()
    }
}

/*
 How I approached this problem:
    - Hashable 한 Element를 담는 Array extension을 추가하였다.
    - mutating func, 일반 func를 활용하였다. 일반 func는 filter된 copy를 리턴하고, mutating func는 이를 self에 assign 한다.
    - Dictionary의 updateValue는 옵셔널 값을 반환한다. 딕셔너리에 새로운 값이 추가된 경우에는 nil을 반환하고, 해당 키에 이미 존재하는 값이 대체되는 경우에는 기존 값을 반환한다.
 */


// solution #2

func menFromBoys(_ arr: [Int]) -> [Int] {
    var uniqueArr = Array(Set(arr))
    var evenArr =  [Int]()
    var oddArr = [Int]()
    
    uniqueArr.forEach{ value in
        value % 2 == 0 ? evenArr.append(value) : oddArr.append(value))
    }
    
    evenArr.sort()
    oddArr.sort().reverse()
    return evenArr + oddArr
}

/*
 How I approached this problem:
    - 중복을 없애기 위해 Set을 활용함.
    - 짝수는 evenArr 에, 홀수는 oddArr에 각각 추가 후에 알맞게 정렬해주었다.
 
 */
