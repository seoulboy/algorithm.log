class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let l = nums.count
        let k = k % l
        if k != l {
            nums.reverse()
            // reverse(array: &nums, left: 0, right: (k-1))
            // reverse(array: &nums, left: k, right: l-1)   

            nums[0..<k].reverse()
            nums[k..<l].reverse()
        }
    }
    
    func reverse(array: inout [Int], left: Int, right: Int) {
        var l = left
        var r = right
        while l < r {
            array.swapAt(l, r)
            l += 1
            r -= 1
        }
    }
}