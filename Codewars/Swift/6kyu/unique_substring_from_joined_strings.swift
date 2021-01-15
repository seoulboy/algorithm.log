/*
 platform: Codewars
 link: https://www.codewars.com/kata/5778aa7c82d7d0b49c00001a/train/swift
 */

// solution #1

func longestSubstring(_ a: String, _ b: String) -> Int {
    let duplicateLetters = a.reduce(into: "") { if b.contains($1) { $0.append($1) } }
    let arr = uniqueSubstring(b + a, duplicateLetters) + uniqueSubstring(a + b, duplicateLetters)
    return arr.reduce(0) { max($0, $1.count) }

}

func uniqueSubstring(_ string: String, _ letters: String) -> [String] {
    string.components(separatedBy: CharacterSet(charactersIn: letters))
}

/*
 How I approached this problem:
    reduce(into:)와 contains 를 사용해서 중복되는 문자를 골라냈고,
    components(separatedBy:) 와 CharacterSet(charactersIn:)을 사용해서 a+b와 b+a를 문자열타입 배열로 나누었다.
    그리고 마지막으로 해당 배열에 reduce와 max()를 사용해서 가장 큰 값을 찾아냈다.
 */

// solution #2

func longestSubstring(_ a: String, _ b: String) -> Int {
  let commonLetters = CharacterSet(charactersIn: a).intersection(CharacterSet(charactersIn: b))
  let maxOfAB = (a+b).components(separatedBy: commonLetters).max(by: { $1.count > $0.count })?.count ?? 0
  let maxOfBA = (b+a).components(separatedBy: commonLetters).max(by: { $1.count > $0.count })?.count ?? 0
  
  return max(maxOfAB, maxOfBA)
}

/*
 How I approached this problem:
    CharacterSet의 메서드인 intersection()을 활용해서 중복 문자를 추려냈다.
    max(by:)를 활용해서 배열로부터 가장 긴 문자를 추려냈다.
 Interesting part:
    - CharacterSet.intersection(_ other: CharacterSet)
    - max(by: { $1.count > $0.count })
 */
