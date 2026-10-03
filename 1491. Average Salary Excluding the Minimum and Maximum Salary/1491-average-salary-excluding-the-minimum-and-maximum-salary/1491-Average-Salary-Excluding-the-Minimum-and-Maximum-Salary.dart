class Solution {
  double average(List<int> salary) {
      int maxSalary = salary[0];
  int minSalary = salary[0];

  int averageSalary = 0;

  for (int i = 0; i < salary.length; i++) {
    if (salary[i] > maxSalary) {
      maxSalary = salary[i];
    }

    if (salary[i] < minSalary) {
      minSalary = salary[i];
    }
  }
  print(minSalary);
  print(maxSalary);

  for (int i = 0; i < salary.length; i++) {
    averageSalary += salary[i];
  }
  print(averageSalary);
  averageSalary -= minSalary;
  averageSalary -= maxSalary;
  print(averageSalary);

  return averageSalary / (salary.length - 2);
  }
}