/*
 platform: HackerRank
 link: https://www.hackerrank.com/challenges/ctci-find-the-running-median/problem
 */

// solution #1

protocol Heap {
    var items: [Int] { get set }
    var index: Int { get set }
    
    var size: Int { get }
    
    var leftChildIndex: Int { get }
    var rightChildIndex: Int { get }
    var parentIndex: Int { get }
    
    var hasParent: Bool { get }
    var hasRightChild: Bool { get }
    var hasLeftChild: Bool { get }
    
    func add(_ item: Int)
    func heapifyUp()
    func poll() -> Int
    func heapifyDown()
    func peek() -> Int
}

class MinHeap: Heap {
    var items: [Int] = []
    var index = 0
    
    var size: Int { items.count }
    
    var leftChildIndex: Int { (index * 2) + 1 }
    var rightChildIndex: Int { (index * 2) + 2 }
    var parentIndex: Int { (index - 1) / 2 }
    
    var hasParent: Bool { parentIndex >= 0 }
    var hasRightChild: Bool { rightChildIndex < size }
    var hasLeftChild: Bool { leftChildIndex < size }
    
    
    
    // add element to heap
    func add(_ item: Int) {
        items.append(item)
        heapifyUp()
    }
    
    func heapifyUp () {
        index = size - 1
        
        while (hasParent && items[parentIndex] > items[index]) {
            swap(index, parentIndex)
            index = parentIndex
        }
    }
    
    // remove minimum element
    @discardableResult
    func poll() -> Int {
        swap(0, size - 1)
        let removedMinimum = items.removeLast()
        heapifyDown()
        return removedMinimum
    }
    
    @discardableResult
    func peek() -> Int {
        if size == 0 { fatalError() }
        return items[0]
    }
    
    func heapifyDown() {
        index = 0
        while (hasLeftChild) {
            var smallerChildIndex = leftChildIndex
            if hasRightChild && items[rightChildIndex] < items[leftChildIndex] {
                smallerChildIndex = rightChildIndex
            }
            
            if items[index] < items[smallerChildIndex] {
                break;
            } else {
                swap(index, smallerChildIndex)
                index = smallerChildIndex
            }
        }
    }
    
    
    func swap(_ firstIndex: Int, _ secondIndex: Int) {
        let temp = items[firstIndex]
        items[firstIndex] = items[secondIndex]
        items[secondIndex] = temp
    }
}

class MaxHeap: Heap {
    
    var items: [Int]
    var index = 0
    var size: Int {
        items.count
    }
    
    init(items: [Int] = []) {
        self.items = items
    }
    
    var leftChildIndex: Int { (index * 2) + 1 }
    var rightChildIndex: Int { (index * 2) + 2 }
    var parentIndex: Int { (index - 1) / 2 }
    
    var hasLeftChild: Bool { leftChildIndex < size }
    var hasRightChild: Bool { rightChildIndex < size }
    var hasParent: Bool { parentIndex >= 0 }
    
    func add(_ item: Int) {
        items.append(item)
        heapifyUp()
    }
    
    func heapifyUp() {
        index = size - 1
        while hasParent && items[parentIndex] < items[index] {
            swap(index, parentIndex)
            index = parentIndex
        }
    }
    
    func poll() -> Int {
        swap(0, size - 1)
        let removedMaximum = items.removeLast()
        heapifyDown()
        return removedMaximum
    }
    
    func peek() -> Int {
        if size == 0 { fatalError() }
        return items[0]
    }
    
    func heapifyDown() {
        index = 0
        while hasLeftChild {
            var largerChildIndex = leftChildIndex
            if hasRightChild && items[leftChildIndex] < items[rightChildIndex] {
                largerChildIndex = rightChildIndex
            }
            
            if items[index] > items[largerChildIndex] {
                break;
            } else {
                swap(largerChildIndex, index)
                index = largerChildIndex
            }
        }
    }
    
    func swap(_ firstIndex: Int, _ secondIndex: Int) {
        let temp = items[firstIndex]
        items[firstIndex] = items[secondIndex]
        items[secondIndex] = temp
    }
}

func runningMedian(arr: [Int]) -> Void {
    // Print your answer within the function
    let lowers = MaxHeap()
    let highers = MinHeap()
    
    for i in 0..<arr.count {
        addNumber(arr[i], lowers, highers)
        rebalance(lowers, highers)
        print(getMedian(lowers, highers))
    }
}

func addNumber(_ number: Int, _ lowers: MaxHeap, _ highers: MinHeap) {
    if (lowers.size == 0 || number < lowers.peek()) {
        lowers.add(number)
    } else {
        highers.add(number)
    }
}

func rebalance(_ lowers: Heap, _ highers: Heap) {
    let largerHeap: Heap = lowers.size > highers.size ? lowers : highers
    let smallerHeap: Heap = lowers.size > highers.size ? highers : lowers
    
    if largerHeap.size - smallerHeap.size >= 2 {
        smallerHeap.add(largerHeap.poll())
    }
}

func getMedian(_ lowers: MaxHeap, _ highers: MinHeap) -> Float {
    let largerHeap: Heap = lowers.size > highers.size ? lowers : highers
    let smallerHeap: Heap = lowers.size > highers.size ? highers : lowers
    
    if largerHeap.size == smallerHeap.size {
        return (Float(lowers.peek()) + Float(highers.peek())) / 2
    } else {
        return Float(largerHeap.peek())
    }
}

runningMedian(arr: [12,4,5,3,8,7])

// 12.0
// 8.0
// 5.0
// 4.5
// 5.0
// 6.0

/*
 How I approached this problem:
    Heap을 활용. 중간 값 기준 아래의 값들을 maxHeap 에 두고, 기준 위의 값들을 minHeap에 두어서 요소가 짝수 갯수일 때는 각각의 root element의 평균을 중간값으로 반환하고, 요소가 홀수 갯수일 때는 기준 위의 minHeap의 root 엘리먼트를 중간값으로 반환한다.
        
        배열에 요소가 추가될 때마다 heap 에 추가하고, 밸런스하고, 중간값을 구한다.
 Interesting part:
    스위프트에는 따로 heap이 없어서 만들어서 썼다. 이번 경험을 바탕으로 Heap 에 대한 좋은 공부가 되었다.
 */
