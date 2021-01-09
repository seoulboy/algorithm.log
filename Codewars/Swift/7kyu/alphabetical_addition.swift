/*
 platform: CodeWars
 link: https://www.codewars.com/kata/5d50e3914861a500121e1958/train/swift
 */

func addLetters(_ letters: [Character]) -> Character {
    
    var value = letters.map{ UnicodeScalar(String($0))! }.map{ $0.value - 96 }.reduce(0, +)
    while value > 26 {
        value -= 26
    }
    return Array(String(UnicodeScalar(value != 0 ? value + 96 : (96 + 26))!))[0]
}

// solution #2

func addLetters(_ letters: [Character]) -> Character {
  let newAsciiValue = (letters.map { Int($0.asciiValue! - 96) }.reduce(0, +) + 25) % 26 + 97
  return Character(UnicodeScalar(newAsciiValue)!)
}


/*

 Interesting part:
    Character.asciiValue property that returns UInt8
    
    Conversion of ascii code to Character using Character(UnicodeScalar(_: Int))
    
 */
