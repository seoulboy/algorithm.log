/*
 platform: codeWars
 link: https://www.codewars.com/kata/546ba103f0cf8f7982000df4/train/swift
 */

// solution #1

enum Operator {
    case ADD, SUBTRACT, MULTIPLY
  
    var transform: (Int, Int) -> Int {
      switch self {
        case .ADD: return (+)
        case .SUBTRACT: return (-)
        case .MULTIPLY: return (*)
      }
    }
}

func calculate(_ a:String, _ b:String, _ op:Operator) -> String {
  guard let _a = Int(a, radix: 2),
        let _b = Int(b, radix: 2) else { return "0"}
  
  let result = op.transform(_a, _b)
  return String(result, radix: 2)
}

/*
 How I approached this problem:
    Operator enum 에 transform 이라는 computed property (계산 프로퍼티)를 추가했다. 이 계산 프로퍼티는 인자로 두 integer를 받고, 반환 값으로 integer를 반환한다.
    각 case 에는 연산자가 괄호 안에 들어 있는데, 이는 다음과도 같다.
    case .ADD: return {$0 + $1 }
    case .ADD: return (+)는 위를 축약한 버전이다.
    
 Interesting part:
    1. enum의 계산프로퍼티를 이용한점
    2. 축약 syntax를 사용해서 간결한 코드
 */

// solution #2

enum Operator {
    case ADD, SUBTRACT, MULTIPLY
}

func calculate(_ a:String, _ b:String, _ op:Operator) -> String {
    guard let _a = Int(a, radix: 2),
          let _b = Int(b, radix: 2) else { return "0" }
    
    let result: Int
    switch op {
    case .ADD: result = _a + _b
    case .SUBTRACT: result = _a - _b
    case .MULTIPLY: result = _a * _b
    }
    
    return String(result, radix: 2)
}

/*
 How I approached this problem:
    calculate 함수 안에서 Operator 타입에 따라 switch 문으로 각각에 맞는 연산을 하고,
    연산 값을 result에 할당 한 후 String(_:radix:)로 이진수로 변환했다.
 Interesting part:
    스위프트에 기본적으로 탑재된 이진수 변환 메서드를 사용할 수 있어서 편리했다.
    --> String(_:radix)  Int(_:radix)
    
    직접 구현할 수도 있지만 미리 컴파일 되어있고, 최적화 되어있기 때문에 스위프트 사용시에는 이렇게 미리 구현된 메서드를 활용하는 것이 좋다고 한다.
 */
