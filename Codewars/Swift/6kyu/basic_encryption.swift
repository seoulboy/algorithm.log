/*
 platform: Codewars
 link: https://www.codewars.com/kata/5862fb364f7ab46270000078/train/swift
 */

// solution #1

func encrypt(text:String, rule:Int) -> String {
    let result = String(text.asciiValues.map{ Character(UnicodeScalar( (UInt32(rule) + UInt32($0)) % 256 )!) })
    return result
}

extension StringProtocol {
    var asciiValues: [UInt32] { compactMap(\.asciiValue) }
}

/*
 How I approached this problem:
    ascii 커스텀 익스텐션을 활용
    character to ascii -> asciiValue 프로퍼티 활용
    ascii to character -> Character(UnicodeScalar(asciiValue))
 */

// solution #2

func encrypt(text:String, rule:Int) -> String {
    String(text.map{ Character(UnicodeScalar( ($0.asciiValue! + UInt32(rule)) % 256 )! ) })
}

/*
 How I approached this problem:
 
 Interesting part:
 
 */
