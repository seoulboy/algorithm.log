/*
 platform: Codewars
 link: https://www.codewars.com/kata/5a03b3f6a1c9040084001765/train/swift
 */

// solution #1

func angle(_ n: Int) -> Int {
    180 * (n - 2)
}

/*
 How I approached this problem:
 
 Interesting part:
    다각형의 내부 각도의 합을 구하는 법을 다시 되새길 수 있었다.
    tip: 삼각형의 각도는 180도임을 아니까, 모든 다각형을 삼각형으로 나눠보고 각도를 구한 후에 각도가 증가하는 패턴을 구하자.
 */
