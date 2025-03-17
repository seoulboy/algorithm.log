import HeapModule

class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        var heap = Heap<Int>()
        heap.insert(contentsOf: nums)
        for _ in 0..<k-1 { heap.popMax() }
        return heap.popMax()!
    }
}