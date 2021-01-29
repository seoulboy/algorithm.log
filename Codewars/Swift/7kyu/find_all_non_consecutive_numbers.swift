/*
 platform: Codewars
 link: https://www.codewars.com/kata/58f8b35fda19c0c79400020f
 */

// solution #1

func allNonConsecutive (_ arr: [Int]) -> [(Int, Int)] {
  arr.enumerated().dropFirst()
  .filter {
    print($0.0, $0.0 - 1)
    return arr[$0.0 - 1] != $0.1 - 1
  }
}

// solution #2

func allNonConsecutive (_ arr: [Int]) -> [(Int, Int)] {
  arr.enumerated().filter { (index, value) in index > 0 ? arr[index] != arr[index - 1] + 1 : false }
}

// solution #3

func allNonConsecutive (_ arr: [Int]) -> [(Int, Int)] {
  arr.enumerated().dropFirst().filter { arr[$0.0 - 1] != $0.1 - 1 }
}
