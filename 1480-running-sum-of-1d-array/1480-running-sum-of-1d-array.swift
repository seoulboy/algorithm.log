class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var list: [Int] = []
        var sum = 0
        nums.forEach { 
            sum += $0
            list += [sum]
        }
        return list
    }
}