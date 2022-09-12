class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        if n == 0 {
            return
        }
        
        var idx1 = 0
        var idx2 = 0
        
        var newArr = [Int]()
        
        for i in (0..<(m+n)) {
            if idx1 == m {
                newArr.append(nums2[idx2])
                idx2 += 1
                continue
            } else if idx2 == n {
                newArr.append(nums1[idx1])
                idx1 += 1
                continue
            }
            
            var elem1 = nums1[idx1]
            var elem2 = nums2[idx2]
            
            if elem1 > elem2 {
                newArr.append(elem2)
                print("append elem2: \(elem2), newArr: \(newArr)")
                idx2 += 1
            } else {
                newArr.append(elem1)
                print("append elem1: \(elem1), newArr: \(newArr)")
                idx1 += 1
            }
            
        }
        
        nums1 = newArr
    }
}