/*
 platform: Codewars
 link: https://www.codewars.com/kata/56dbf59b0a10feb08c000227
 */

// solution #1

func diag2Sym(_ s: String) -> String {
    let arr = s.components(separatedBy: "\n")
    var result = [String]()
    
    columnLoop: for col in 0..<arr.count {
        var string = ""
        rowLoop: for row in 0..<arr.count {
            let adjustedCol = arr.count - 1 - col
            let adjustedRow = arr.count - 1 - row
        
            let char = arr[adjustedRow][adjustedCol]
            string.append(char)
        }
        result.append(string)
    }
    
    return result.joined(separator: "\n")
}
func rot90Counter(_ s: String) -> String {
    let arr = s.components(separatedBy: "\n")
    var result = [String]()
    
    columnLoop: for col in 0..<arr.count {
        var string = ""
        rowLoop: for row in 0..<arr.count {
            let adjustedCol = arr.count - 1 - col
        
            let char = arr[row][adjustedCol]
            string.append(char)
        }
        result.append(string)
    }
    
    return result.joined(separator: "\n")
}

func selfieDiag2Counterclock(_ s: String) -> String {
    let initial = s.components(separatedBy: "\n")
    let diag = diag2Sym(s).components(separatedBy: "\n")
    let rot = rot90Counter(s).components(separatedBy: "\n")
    
    var result = [String]()
    for i in 0..<initial.count {
        result += ["\(initial[i])|\(diag[i])|\(rot[i])"]
    }
    
    return result.joined(separator: "\n")
}

func oper(_ fcn: (String) -> String, _ s: String) -> String {
    fcn(s)
}

extension String {
    public subscript(_ index: Int) -> Character {
        let stringIndex = self.index(startIndex, offsetBy: index)
        return self[stringIndex]
    }
}

/*
 How I approached this problem:
    row 와 column의 순회 순서와 방향을 조작하여 해결했다.
 Interesting part:
    String의 extension으로 subscript를 만들어서 간편하게 문자열의 index에 있는 문자를 가져오도록 했다.
 */

