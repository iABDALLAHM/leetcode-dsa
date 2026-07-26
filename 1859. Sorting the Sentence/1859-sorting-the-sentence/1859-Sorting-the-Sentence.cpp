#include <string>
#include <vector>
#include <sstream>

using namespace std;

class Solution {
public:
    string sortSentence(string s) {
        stringstream ss(s);
        string currentWord;
        vector<string> listOfWords;

        while (ss >> currentWord) {
            listOfWords.push_back(currentWord);
        }

        vector<string> words(listOfWords.size());

        for (int i = 0; i < listOfWords.size(); i++) {
            string word = listOfWords[i];
            
            int currentNumber = word.back() - '0'; 

            string wordWithoutNumber = word.substr(0, word.length() - 1);

            words[currentNumber - 1] = wordWithoutNumber;
        }

        string result = "";
        for (int i = 0; i < words.size(); i++) {
            result += words[i];
            if (i != words.size() - 1) {
                result += " "; // إضافة مسافة بين الكلمات
            }
        }

        return result;
    }
};