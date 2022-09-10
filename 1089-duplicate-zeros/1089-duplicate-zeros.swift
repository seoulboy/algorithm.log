class Solution {
    func duplicateZeros(_ arr: inout [Int]) {
        var newArr = [Int]()
        for num in arr {
            if newArr.count == arr.count {
                break
            }
            
            newArr.append(num) 
            
            if newArr.count == arr.count {
                break
            }
            
            if num == 0 {
                newArr.append(0)
            }
        }
        
        arr = newArr
    }
}