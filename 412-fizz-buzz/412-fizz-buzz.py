class Solution:
    def fizzBuzz(self, n: int) -> List[str]:
        list = []
        for i in range(1, n + 1):
            isMultipleOf5 = i % 5 == 0
            isMultipleOf3 = i % 3 == 0
            
            value = ""
            if isMultipleOf3:
                value += "Fizz"
            if isMultipleOf5:
                value += "Buzz"
            if value == "":
                value += str(i)

            list.append(value)
        return list