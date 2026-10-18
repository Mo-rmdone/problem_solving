class Solution {
public:
    int minStartValue(vector<int>& nums) {
        int runningSum = 0;
        int minSum = 0;
        for (int num : nums) {
            runningSum += num;
            minSum = min(minSum, runningSum);
        }
        return 1 - minSum;
    }
};