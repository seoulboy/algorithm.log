/*
 platform: Codewars
 link: https://www.codewars.com/kata/567501aec64b81e252000003
 */

// solution #1

func wallpaper(_ l: Double, _  w: Double,_  h: Double) -> String {
  let numbers = ["zero", "one", "two", "three", "four", "five",
                 "six", "seven", "eight", "nine", "ten",
                 "eleven", "twelve", "thirteen", "fourteen", "fifteen",
                 "sixteen", "seventeen", "eighteen", "nineteen", "twenty"]
  if l == 0 || w == 0 || h == 0 { return numbers[0] }
  let value = (l * h * 2.0 + w * h * 2.0) * 1.15 / (0.52 * 10)
  return numbers[Int(ceil(value))]
}
