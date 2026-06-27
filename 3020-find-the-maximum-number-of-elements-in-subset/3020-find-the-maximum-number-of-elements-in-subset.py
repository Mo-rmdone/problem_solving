class Solution:
    def maximumLength(self, nums: List[int]) -> int:

        frequency_map = Counter(nums)
        max_length = frequency_map[1] - (frequency_map[1] % 2 ^ 1)

        del frequency_map[1]

        for base_num in frequency_map:
            current_length = 0
            current_num = base_num

            while frequency_map[current_num] > 1:
                current_num = current_num * current_num  
                current_length += 2 
          
            if frequency_map[current_num]:
                current_length += 1  
            else:
                current_length -= 1  
          
            max_length = max(max_length, current_length)
      
        return max_length