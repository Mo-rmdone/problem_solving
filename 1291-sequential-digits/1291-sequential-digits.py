class Solution:
    def sequentialDigits(self, low: int, high: int) -> List[int]:
        result = []

        for start_digit in range(1, 9):
            current_number = start_digit
            for next_digit in range(start_digit + 1, 10):
                current_number = current_number * 10 + next_digit
              
                if low <= current_number <= high:
                    result.append(current_number)
      
        return sorted(result)