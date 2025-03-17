class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        let arrA = Array(a)
        let arrB = Array(b)

        var resultArr = arrA.count > arrB.count ? Array(repeating: "", count: arrA.count) : Array(repeating: "", count: arrB.count)
        var i = arrA.count-1
        var j = arrB.count-1
        var carry = 0
        
        while i >= 0 || j >= 0 {
            let digitA = i >= 0 && i <= arrA.count-1 ? arrA[i] : "0"
            let digitB = j >= 0 && j <= arrB.count-1 ? arrB[j] : "0"

            var currentDigit = carry
            carry = 0
            switch (digitA, digitB) {
                case ("1", "1"):
                    carry += 1
                    currentDigit += 0
                case ("0", "0"):
                    carry += 0
                    currentDigit += 0
                default:
                    carry += 0
                    currentDigit += 1
            }

            if currentDigit == 2 {
                currentDigit = 0
                carry += 1
            }

            resultArr[max(i, j)] = String(currentDigit)

            if (i <= 0 && j <= 0) && carry == 1 {
                resultArr.insert("1", at: 0)
                carry = 0
            }

            i -= 1
            j -= 1
        }
        
        return resultArr.joined()
    }
}