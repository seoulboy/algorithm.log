/*
 platform: CodeWars
 link: https://www.codewars.com/kata/58841cb52a077503c4000015/swift
 */

// solution #1

func circleOfNumbers(_ n: Int, _ fst: Int) -> Int {
  (n/2 + fst) % n
}

/*
 How I approached this problem:
    주어진 숫자를 조합해보면서 패턴을 찾아냄
 */
