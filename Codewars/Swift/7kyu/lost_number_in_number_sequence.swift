/*
 platform: CodeWars
 link: https://www.codewars.com/kata/595aa94353e43a8746000120/train/swift
 */

// solution #1

func findDeletedNumber(_ array: [Int], _ mixArray: [Int]) -> Int {
    array.reduce(0, +) - mixArray.reduce(0, +)
}

/*
 How I approached this problem:
    기존 배열을 총합에서 mixArray 총합을 빼면 빠진 숫자가 나올 것이라는 생각에 작성하였다.
    간결해서 읽기 쉽다. 각각의 reduce는 O(n1), O(n2)이기 때문에 O(n1 + n2) = O(n)
 Interesting part:
    reduce 활용
 */

// solution #2

func findDeletedNumber(_ array: [Int], _ mixArray: [Int]) -> Int {
    array.first{ !mixArray.contains($0) } ?? 0
}

/*
 How I approached this problem:
    
 Interesting part:
 
 */
