class Solution {
public:
	bool isPowerOfThree(int n) {


		long long int val = 1;
		while (val < n)
			val *= 3;
		return(val == n);

	}
};