/*
 platform: Codewars
 link: https://www.codewars.com/kata/5a54e796b3bfa8932c0000ed/train/swift
 */

// solution #1

func jumpingNumber(_ number: Int) -> String {
  let array = String(number).compactMap{ $0.wholeNumberValue }
  for i in 1..<array.count {
    let difference = array[i] - array[i - 1]
    if abs(difference) != 1 { return "Not!!" }
  }
  return "Jumping!!"
}

/*
 Interesting part:
    - one-liner 로 처리하려다가 시간낭비 하지말자! 어떤 경우는 one-liner로 할 수 없을 수도 있다.
 */
