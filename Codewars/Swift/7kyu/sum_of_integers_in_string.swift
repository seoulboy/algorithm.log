/*
 platform: CodeWars
 link: https://www.codewars.com/kata/598f76a44f613e0e0b000026/train/swift
 */

// solution #1

func sumOfIntegersInString(_ string: String) -> Int {
    string.components(separatedBy: CharacterSet.decimalDigits.inverted).compactMap{ Int($0) }.reduce(0, +)
}

/*
 How I approached this problem:
    문자열에서 숫자를 제외한 모든 문자(character)를 없애는 방법을 사용하면 되겠다는 생각이 들었다. 자바스크립트로 비슷한 문제를 이전에 풀이할 때 그렇게 했었기 때문에 스위프트로도 분명 어떤 방법이 존재할 것이라 생각했다.
    잠시 검색을 해보니 CharacterSet의 decimalDigits는 0 부터 9까지의 Character이 담겨있다는 것을 알게 되었고, .inverted 프로퍼티를 통해 0 부터 9 를 제외한 모든 CharacterSet을 reference 할 수 있다는 것을 알게되었다.
    이렇게 하면, 위의 string에서 숫자를 제외한 모든 문자를 separate 할 수 있고, compactMap을 통해 빈 문자열을 없애고, reduce 를 통해 문자열에 있는 숫자의 합을 계산할 수 있다.

 Interesting part:
    - CharacterSet.decimalDigits.inverted 
 */
