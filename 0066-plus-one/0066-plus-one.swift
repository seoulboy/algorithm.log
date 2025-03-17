class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var a = digits
        for i in stride(from: digits.count-1, through: 0, by: -1) {
            guard a[i] == 9 else {
                a[i] += 1
                return a
            }
            a[i] = 0
        }
        a.insert(1, at: 0)
        return a
    }
}