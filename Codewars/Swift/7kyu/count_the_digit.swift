/*
 platform: Codewars
 link: https://www.codewars.com/kata/566fc12495810954b1000030/train/swift
 */

// solution #1

func nbDig(_ n: Int, _ d: Int) -> Int {
    [Int](0...n)
      .compactMap{ String(format: "%.0f", pow(Double($0), 2.0)) }
      .joined(separator: "")
      .reduce(0) { "\($1)" == "\(d)" ? $0 + 1 : $0 }
}

/*
 How I approached this problem:
    0부터 n까지 배열을 만들고 각 숫자를 제곱한다. 제곱한 숫자를 문자열로 바꾸고 배열을 join한다.
    문자열을 순회하면서 digit과 같은 숫자가 있으면 reduce한다
 */

// solution #2

func nbDig(_ n: Int, _ d: Int) -> Int {
  (0...n).map{ String($0 * $0).filter{ $0 == Character("\(d)") }}.flatMap{$0}.count
}

/*
 How I approached this problem:
    0부터 n까지의 배열을 만들고, 각 숫자를 제곱한후 문자열로 변경한다. 해당 문자열에 digit을 filter한다.
    ["","1","11","1"] 이러한 배열이 반환되는데 flatMap을 사용하게 되면 2차원 배열을 1차원 배열로 만들 듯이 문자열이 든 배열을 ["1","1",...]로 만들어 반환한다.
    그리고 해당 배열의 요소 숫자를 반환한다.
 Interesting part:
    - map 내부에서 제곱, 문자열처리, 그리고 filter까지 한 것.
    - 문자열 배열을 flatMap 처리한 것. 
 */
