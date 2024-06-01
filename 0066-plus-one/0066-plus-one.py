class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        n = len(digits)
        
        # Start from the end of the array
        for i in range(n-1, -1, -1):
            # Add one to the current digit
            digits[i] += 1
            
            # If the current digit is less than 10, we're done
            if digits[i] < 10:
                return digits
            
            # Otherwise, set the current digit to 0 and continue
            digits[i] = 0
        
        # If we're here, it means we had a carry out from the most significant digit
        # So we need to add a new digit at the beginning
        return [1] + digits