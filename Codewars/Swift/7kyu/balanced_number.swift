/*
 platform: CodeWars
 link: https://www.codewars.com/kata/5a4e3782880385ba68000018/train/swift
 */

// solution #1

func balancedNumber(_ number: Int) -> String {
    let intArray = String(number).compactMap { $0.wholeNumberValue }
    let mid = intArray.count / 2
    
    var result: Int = 0
    if intArray.count % 2 == 1 {
        result = intArray.enumerated().reduce(0) {
            if (0..<mid).contains($1.offset) {
                print("oddLeft", $1.element)
                return $0 + $1.element }
            if ((mid + 1)...(intArray.count)).contains($1.offset) {
                return $0 - $1.element }
            return $0 + 0
        }
    } else if intArray.count % 2 == 0 {
        result = intArray.enumerated().reduce(0) {
            if (0..<(mid - 1)).contains($1.offset) {
                return $0 + $1.element }
            if ((mid + 1)...(intArray.count)).contains($1.offset) {
                return $0 - $1.element }
            return $0 + 0
        }
    }
    return result == 0 ? "Balanced" : "Not Balanced"
}

/*
 How I approached this problem:
    
 Interesting part:
 
 */

// solution #2

func balancedNumber(_ number: Int) -> String {
  var intArray = String(number).compactMap{ $0.wholeNumberValue }
  
  var numberOfElementsToCount = intArray.count % 2 == 0 ? (intArray.count - 1) / 2 : (intArray.count) / 2
  var sumOfLeftDigits = intArray.prefix(numberOfElementsToCount).reduce(0, +)
  var sumOfRightDigits = intArray.suffix(numberOfElementsToCount).reduce(0, +)
  
  return sumOfLeftDigits == sumOfRightDigits ? "Balanced" : "Not Balanced"
}

/*
 Interesting part:
    - numberOfElementsToCount
    - array.prefix(_).reudce(0, +)
    - array.suffix(_:).reduce(0, +)
 */
