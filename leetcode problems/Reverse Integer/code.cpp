class Solution {
public:

        
    int reverse(int x, long r=0) {
    return x ? reverse(x/10, r*10 + x%10) : (int(r) == r) * r;
}
};