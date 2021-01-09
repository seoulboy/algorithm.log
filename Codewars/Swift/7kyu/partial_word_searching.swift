/*
 platform: CodeWars
 link: https://www.codewars.com/kata/54b81566cd7f51408300022d/train/swift
 */

// solution #1

func wordSearch(_ str:String, _ arr:[String]) -> [String] {
  let matchedStringArray = arr.matchingSubstrings(of: str)
  return matchedStringArray.isEmpty ? ["Empty"] : matchedStringArray
}

extension Array where Element == String {
    func matchingSubstrings(of subString: String) -> [String] {
        guard !subString.isEmpty, !isEmpty else { return [] }
        return filter {
            for character in subString.lowercased() {
                if !$0.lowercased().contains(character) { return false }
            }
            return true
        }
    }
}

/*
 How I approached this problem:
    왠일인지 Foundation의 contains(_:) 메서드가 작동이 되질 않았다.
 그래서 contains 역할을 하는 로직을 String의 contains로 새로 만들었고, 이를 Array extension으로 만들었다.
 Interesting part:
    Foundation에 있는 제네릭 버전의 contains(_:)를 써야지만 string.contains(anotherString)이 가능하다는 것을 알게되었다.
    Foundation을 import하지 않으면, String의 contains(_:)만 사용이 가능한데 이는 클로져에서 Character 타입이 들어온다.
 */

// solution #2

func wordSearch(_ str:String, _ arr:[String]) -> [String] {
  let array = arr.filter { $0.localizedCaseInsensitiveContains(str) }
  return array.isEmpty ? ["Empty"] : array
}

/*
 How I approached this problem:
    다른 풀이를 참고했다. NSString의 localizedCaseInsentiveContains(_:) 라는 Objective-C 메서드를 사용했다.
 Interesting part:
    이런 메서드가 있는줄도 몰랐다. Swift에는 Swift의 API뿐만이 아니라 Objective-C의 API도 사용할 수 있기 때문에 엄청나게 방대한 양의 API가 있는 듯하다.
 */
