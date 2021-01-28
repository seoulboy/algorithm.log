/*
 platform: Codewars
 link: https://www.codewars.com/kata/5a55f04be6be383a50000187
 */

// solution #1

func specialNumber(_ number: Int) -> String {
  String(number).compactMap{ $0.wholeNumberValue }.contains{ $0 > 5 } ? "NOT!!" : "Special!!"
}


// solution #2

func specialNumber(_ number: Int) -> String {
    String(number).compactMap{ $0.wholeNumberValue }.reduce(true) { $0 && $1 <= 5 } ? "Special!!" : "NOT!!"
}

