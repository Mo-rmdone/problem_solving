class Solution:
    def twoSum(self, nums: list[int], target: int) -> list[int]:
        HashMap = {}
        for index, val in enumerate (nums):
            diff = target - val
            if  diff in HashMap:
                return [index, HashMap[diff]]
            HashMap[val] = index
        return