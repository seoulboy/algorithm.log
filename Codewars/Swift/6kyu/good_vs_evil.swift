/*
 platform: Codewars
 link: https://www.codewars.com/kata/52761ee4cffbc69732000738/train/swift
 */

// solution #1

func evaluate(good: String, vsEvil evil: String) -> String {
    let goodWorth: Int = evalGoodWorth(goodWorthCountArray: good.components(separatedBy: " ").compactMap{ Int($0) })
    let evilWorth: Int = evalEvilWorth(evilWorthCountArray: evil.components(separatedBy: " ").compactMap{ Int($0) })
    
    if goodWorth > evilWorth { return "Battle Result: Good triumphs over Evil" }
    else if goodWorth < evilWorth  { return "Battle Result: Evil eradicates all trace of Good" }
    else { return "Battle Result: No victor on this battle field" }
}

func evalGoodWorth(goodWorthCountArray: [Int]) -> Int {
    var sum = 0
    goodWorthCountArray.enumerated().forEach { (index, number) in
        switch index {
        case 0: sum += number * 1
        case 1: sum += number * 2
        case 2: sum += number * 3
        case 3: sum += number * 3
        case 4: sum += number * 4
        case 5: sum += number * 10
        default: break
        }
    }
    return sum
}

func evalEvilWorth(evilWorthCountArray: [Int]) -> Int {
    var sum = 0
    evilWorthCountArray.enumerated().forEach { (index, number) in
        switch index {
        case 0: sum += number * 1
        case 1: sum += number * 2
        case 2: sum += number * 2
        case 3: sum += number * 2
        case 4: sum += number * 3
        case 5: sum += number * 5
        case 6: sum += number * 10
        default: break
        }
    }
    return sum
}

/*
 How I approached this problem:
 
 Interesting part:
 
 */

// solution #2

func evaluate(good: String, vsEvil evil: String) -> String {
  let goodWorth = calcWorth(good, coefficients: [1,2,3,3,4,10])
  let evilWorth = calcWorth(evil, coefficients: [1,2,2,2,3,5,10])
  
  if goodWorth > evilWorth { return "Battle Result: Good triumphs over Evil" }
  else if goodWorth < evilWorth { return "Battle Result: Evil eradicates all trace of Good" }
  else { return "Battle Result: No victor on this battle field" }
}

func calcWorth(_ raceCount: String, coefficients: [Int]) -> Int {
  let countArr = raceCount.components(separatedBy: " ").compactMap{ Int($0) }
  return zip(countArr,coefficients).map(*).reduce(0,+)
}

/*
 How I approached this problem:
    when there are two integer arrays of same size and want to perform an arithmetic between the two, use zip(Array<T>,Array<T>) & higher order functions combo.
 Interesting part:
    - use of coefficients
    - zip + map + reduce.
 */
