/*
 platform: Codewars
 link: https://www.codewars.com/kata/5a662a02e626c54e87000123
 */

// solution #1

func extraPerfect(_ n: Int) -> [Int] {
  n % 2 == 1 ? (0...n/2).map{ n - $0 * 2 }.reversed() : (0...(n - 1) / 2).map{ n - 1 - $0 * 2 }.reversed()
}
/**
 - 0 부터 n 까지 홀수 구하는 법을 고안해냈는데, n이 짝수일때와 홀수일때의 상황을 ternary operator로 분리하였다.
 - one liner로 처리하려다 보니 심플한 작업을 애써 어렵게 만들었다.
 */
// solution #2

func extraPerfect(_ n: Int) -> [Int] {
  [Int](stride(from: 1, through: n, by: 2))
}

/**
 - stride 와 Array Initializer (sugar syntax)를 조합한 방법
 - [Int](1...10) 와 같이 range 가 들어갈 자리에 stride를 사용함. 훨씬 깔끔하고 복잡하지 않다.
 */
