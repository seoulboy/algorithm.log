/*
 platform: CodeWars
 link: https://www.codewars.com/kata/57cf3dad05c186ba22000348/train/swift
 */

// solution #1

func decodeResistorColors(_ bands: String) -> String {
    let resistanceDic = ["gold": 5, "silver": 10,"black": 20]
    var stringArr = bands.components(separatedBy: " ")
    
    if stringArr.count < 4 { stringArr.append("black") }
    
    let tolerance = resistanceDic[stringArr[3]] ?? 0
    
    let firstColorNumber = getColorCodeNumber(from: stringArr[0])
    let secondColorNumber = getColorCodeNumber(from: stringArr[1])
    let thirdColorNumber = getColorCodeNumber(from: stringArr[2])
    
    let resistance = Double(firstColorNumber * 10 + secondColorNumber) * pow(10.0, Double(thirdColorNumber))
    
    let formattedResistance: String
    
    switch resistance {
    case pow(10.0, 6.0)... :
        if (resistance / pow(10.0, 6.0)).truncatingRemainder(dividingBy: 1.0) == 0 {
            formattedResistance = String(format: "%.0fM", resistance / pow(10.0, 6.0))
        } else {
            formattedResistance = String(format: "%.1fM", resistance / pow(10.0, 6.0))
        }
    case pow(10.0, 3.0)... :
        if (resistance / pow(10.0, 3.0)).truncatingRemainder(dividingBy: 1.0) == 0 {
            formattedResistance = String(format: "%.0fk", resistance / pow(10.0, 3.0))
        } else {
            formattedResistance = String(format: "%.1fk", resistance / pow(10.0, 3.0))
        }
    default:
        formattedResistance = String(format: "%.0f", resistance)
    }
    
    return "\(formattedResistance) ohms, \(tolerance)%"
}

func getColorCodeNumber (from string: String) -> Int {
    let colorCodesArr = ["black","brown", "red", "orange", "yellow", "green", "blue", "violet", "gray", "white"]
    return colorCodesArr.firstIndex(of: string)!
}

// solution #2

func decodeResistorColors(_ bands: String) -> String {
  let colors = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "gray", "white"]
  let resistances = ["gold": 5, "silver": 10]
  let array = bands.components(separatedBy: " ")
  let resistance = array.count == 4 ? resistances[array[3]]! : 20
  let colorNumbers = array.compactMap(colors.firstIndex)
  let ohms = Double(10 * colorNumbers[0] + colorNumbers[1]) * pow(10.0, Double(colorNumbers[2]))
  let (divisor, suffix) = ohms >= 1_000_000 ? (1_000_000, "M") : ohms >= 1_000 ? (1_000, "k") : (1, "")
  let ohmsRounded = String(format: "%.1f\(suffix)", ohms / Double(divisor)).replacingOccurrences(of: ".0", with: "")
  return "\(ohmsRounded) ohms, \(resistance)%"
}
/*
 Interesting part:
    compactMap(colors.firstIndex)
    (divisor, suffix)
    String(format:,_:).replacingOccurrences(of:,with:)
 */
