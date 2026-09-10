class Solution {
public:
    vector<int> shuffle(vector<int>& nums, int n) {
        vector<int> result;
        
        for (int i = 0; i < n; i++) {
            result.push_back(nums[i]);       // المقابل لـ add في Dart
            result.push_back(nums[i + n]);
        }
        
        return result;
    }
};