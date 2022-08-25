class Solution {
    func numberOfSteps(_ num: Int) -> Int {
        var currentNum = num
        var count = 0

        while currentNum > 0 {
            if (currentNum & 1) == 0 {
                currentNum >>= 1
            } else {
                currentNum -= 1
            }
            count += 1
        }
        return count
    }
}