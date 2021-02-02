/*
 platform: Codewars
 link: https://www.codewars.com/kata/57c1ab3949324c321600013f
 */

// solution #1

func toLeetSpeak(_ s : String) -> String {
    let leetDic: [Character: String] = [
        "A" : "@",
        "B" : "8",
        "C" : "(",
        "D" : "D",
        "E" : "3",
        "F" : "F",
        "G" : "6",
        "H" : "#",
        "I" : "!",
        "J" : "J",
        "K" : "K",
        "L" : "1",
        "M" : "M",
        "N" : "N",
        "O" : "0",
        "P" : "P",
        "Q" : "Q",
        "R" : "R",
        "S" : "$",
        "T" : "7",
        "U" : "U",
        "V" : "V",
        "W" : "W",
        "X" : "X",
        "Y" : "Y",
        "Z" : "2",
    ]
    return s.map{ leetDic[$0] ?? " " }.joined(separator: "")
}
