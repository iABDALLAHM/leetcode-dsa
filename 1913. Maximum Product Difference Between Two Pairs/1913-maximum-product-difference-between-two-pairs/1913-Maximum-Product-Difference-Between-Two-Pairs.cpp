class Solution {
public:
    int maxProductDifference(vector<int>& nums) {
    
        vector<int> sortedList = quickSort(nums);

        int n = sortedList.size();
        int w = sortedList[n - 1];
        int x = sortedList[n - 2];
        int y = sortedList[0];
        int z = sortedList[1];

        return (w * x) - (y * z);
  
    }

    vector<int> quickSort(vector<int> array) {
        // Base case: المصفوفة بطول 0 أو 1 مترتبة جاهزة
        if (array.size() < 2) {
            return array;
        }

        int pivot = array[0];
        vector<int> less;
        vector<int> greater;

        // تقسيم العناصر بناءً على الـ pivot
        for (int i = 1; i < array.size(); i++) {
            if (array[i] <= pivot) {
                less.push_back(array[i]);
            } else {
                greater.push_back(array[i]);
            }
        }

        // استدعاء تكراري للجزأين
        vector<int> sortedLess = quickSort(less);
        vector<int> sortedGreater = quickSort(greater);

        // دمج النتائج: sortedLess + pivot + sortedGreater
        vector<int> result;
        result.reserve(array.size()); // تحسين بسيط لحجز الذاكرة مسبقاً
        result.insert(result.end(), sortedLess.begin(), sortedLess.end());
        result.push_back(pivot);
        result.insert(result.end(), sortedGreater.begin(), sortedGreater.end());

        return result;
    }
};