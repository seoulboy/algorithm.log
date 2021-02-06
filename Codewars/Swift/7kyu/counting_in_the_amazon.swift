/*
 platform: Codewars
 link: https://www.codewars.com/kata/55b95c76e08bd5eef100001e
 */

// solution #1

func countArare(_ n: Int) -> String {
  String((String(repeating: "adak ", count: n/2) + String(repeating: "anane ", count: n % 2)).dropLast())
}

// solution #2

func countArare(_ n: Int) -> String {
  ((0..<n/2).map{ _ in "adak" } + (n % 2 == 0 ? [] : ["anane"])).joined(separator: " ")
}
