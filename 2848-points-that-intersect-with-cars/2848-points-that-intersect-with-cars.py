class Solution:
    def numberOfPoints(self, nums: List[List[int]]) -> int:
        diff = [0] * 102              # النقط من 1 لـ 100، و end + 1 ممكن توصل 101
        for start, end in nums:
            diff[start] += 1
            diff[end + 1] -= 1
        count = running = 0
        for d in diff:
            running += d              # عدد العربيات اللي فوق النقطة دي
            if running > 0:
                count += 1
        return count