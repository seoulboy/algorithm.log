/*
 platform: Codewars
 link: https://www.codewars.com/kata/5a53a17bfd56cb9c14000003
 */

// solution #1

func disariumNumber(_ number: Int) -> String {
    String(number)
        .compactMap{ $0.wholeNumberValue }
        .enumerated()
        .reduce(0){ $0 + Int(pow( Double($1.element), Double($1.offset + 1) )) }
        
        == number ? "Disarium !!" : "Not !!"
}
