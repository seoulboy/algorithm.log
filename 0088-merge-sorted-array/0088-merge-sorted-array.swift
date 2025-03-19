class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var arr = (Array(nums1.prefix(m))+nums2).sorted()

        nums1 = arr
    }
}