class Solution {
public:
    int countConsistentStrings(string allowed, vector<string>& words) {
        unordered_set<char> charsMap;
        
        for (char c : allowed) {
            charsMap.insert(c);
        }
        
        int counter = 0;
        
        for (string& currentWord : words) {
            bool isConsistent = true;
            
            for (char c : currentWord) {
                if (charsMap.find(c) == charsMap.end()) {
                    isConsistent = false;
                    break;
                }
            }
            
            if (isConsistent) {
                counter++;
            }
        }
        
        return counter;
    }
};