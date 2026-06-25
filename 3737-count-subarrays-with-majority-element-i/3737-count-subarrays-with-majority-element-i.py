class Solution:
    def countMajoritySubarrays(self, nums: list[int], target: int) -> int:
        n = len(nums)
        ans = 0
        
        for i in range(n):
            cnt = {}
            for j in range(i, n):
                length = j - i + 1
                cnt[nums[j]] = cnt.get(nums[j], 0) + 1
                
                if cnt.get(target, 0) > length // 2:
                    ans += 1
                    
        return ans
