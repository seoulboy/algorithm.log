/*
 platform: Codewars
 link: https://www.codewars.com/kata/57f36495c0bb25ecf50000e7/train/swift
 */

// solution #1

func findSum(_ n: Int) -> Int {
  [Int](0...n).filter { $0 % 3 * $0 % 5 == 0 }.reduce(0, +)
}
/*
 
 How I approached this problem:
    0부터 n까지의 숫자에서 3이나 5로 나누었을 때 나머지가 0인 경우를 모두 더한다.
 */

// solution #2

func findSum(_ n: Int) -> Int {
  (0...n).filter{ $0.isMultiple(of: 3) || $0.isMultiple(of: 5) }.reduce(0,+)
}

/*
 How I approached this problem:
    - 위와 동일한 풀이 방법이나 [Int]배열을 명시해주지 않고 (0...n) range 에 filter을 사용했다.
    - Int의 메서드 중 isMultiple(of:)를 사용했다.
 */
