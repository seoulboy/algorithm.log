/*
 platform: CodeWars
 link: https://www.codewars.com/kata/58485a43d750d23bad0000e6/train/swift
 */

// solution #1

func fizzBuzzCuckooClock(_ time: String) -> String {
  let timeArr = time.components(separatedBy: ":")
  let (hour, minute) = (Int(timeArr[0])!, Int(timeArr[1])!)
  
  var sound = ""
  switch minute {
    case _ where minute == 0: sound = String(repeating: "Cuckoo ", count: hour > 12 || hour == 0 ? abs(hour - 12) : hour)
    case _ where minute == 30: sound = "Cuckoo "
    case _ where minute % 3 == 0 && minute % 5 == 0: sound = "Fizz Buzz "
    case _ where minute % 3 == 0: sound = "Fizz "
    case _ where minute % 5 == 0: sound = "Buzz "
    default: sound = "tick "
  }
  
  return String(sound.dropLast())
}

/*
 Interesting part:
    튜플 타입을 이용해서 hour 과 minute 변수를 동시에 초기화하고 할당했다.
    switch case 문에서 where 절을 써서 연산값을 이용하도록 했다.
    String(repeating:count:)를 사용해서 깔끔하게 문자열을 필요한 만큼 연결했다.
 */

// solution #2

func fizzBuzzCuckooClock(_ time: String) -> String {
  let timeArr = time.components(separatedBy: ":")
  let (hour, minute) = (Int(timeArr[0])!, Int(timeArr[1])!)
  
  var sound = ""
  switch (minute, minute % 3, minute % 5) {
    case (0, _, _): sound = String(repeating: "Cuckoo ", count: (hour > 12 || hour == 0) ? abs(hour - 12) : hour)
    case (30, _, _): sound = "Cuckoo "
    case (_, 0, 0): sound = "Fizz Buzz "
    case (_, 0, _): sound = "Fizz "
    case (_, _, 0): sound = "Buzz "
    default: sound = "tick "
  }
  
  return String(sound.dropLast())
}

/*
 Interesting part:
    switch case 문에서 튜플을 사용했다. 전보다 훨씬 간결해졌다.
 */
