class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 { return false }

        var arr: [Int] = []

        var temp = x
        while temp > 0 {
            arr.append(temp % 10)
            temp /= 10
        }

        var start = 0, end = arr.count-1

        while start < end {
            if arr[start] != arr[end] {
                return false
            }
            start += 1
            end -= 1
        }

        return true
    }
}