/*
 platform: Codewars
 link: https://www.codewars.com/kata/599c7f81ca4fa35314000140/train/swift
 */

// solution #1

func countTargets(_ n: Int, _ sequence: [Int]) -> Int {
  var i = 0
  var count = 0
  
  while i + n < sequence.count {
    if sequence[i] == sequence[i + n] { count += 1 }
    i += 1
  }
  
  return count
}

/*
 How I approached this problem:
    알고리즘 문제 설명을 이해하는데 어려움을 겪었다. 문제를 이해하는 것도 중요한 부분 중 하나인 것 같다. 
 */
