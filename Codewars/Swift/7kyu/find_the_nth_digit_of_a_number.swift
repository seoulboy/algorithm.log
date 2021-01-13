/*
 platform: CodeWars
 link: https://www.codewars.com/kata/577b9960df78c19bca00007e/train/swift
 */

// solution #1

func findDigit(_ num:Int, _ nth: Int) -> Int {
  nth.signum() == 1 ? String(format: "%0\(nth)d", num).compactMap { Int(String($0)) }.reversed()[nth - 1] : -1
}

/*
 How I approached this problem:
    한줄로 풀 수 있겠다 생각이 들었다. Digit 관련 문제가 나올때면 자주 사용하는 String(num).compactMap{ Int($0) } 콤보를 꺼내들었다. 만약 nth가 num의 digit 숫자를 넘어가면 0을 반환해야했기에 String(format:)을 사용해서 zero padding을 해주었다. 배열의 뒤에서 카운트하기에 reversed() 하고 nth 숫자을 찾을 수 있었다.
    float이나 double 에는 .sign 이라는 프로퍼티가 있어서 .plus 혹은 .minus enum으로 값을 표현할 수 있는데 integer에도 있나 싶어서 찾아봤다.
    signum은 양수에 1을 반환하고, 음수에는 -1, 그 외에는 0을 반환한다. 사실 이 메서드는 흔히 사용되는 것이 아니기에 가독성이 떨어지지만 한번 찾아본 김에 알고리즘 풀이에 적용해보았다.
 Interesting part:
    - Int.signum()
    - string(format: "%0\(nth)d"
    - reversed()
 */
