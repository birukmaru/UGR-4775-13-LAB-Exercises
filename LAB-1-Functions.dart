void main() {
  List<int> nums = [1, 2, 3, 4, 5];
  print(average(nums));
}

double average(List<int> nums) {
  int accumulator = 0;
  for (int num in nums) {
    accumulator += num;
  }
  double average = accumulator / nums.length;
  return average;
}
