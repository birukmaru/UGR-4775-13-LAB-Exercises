void main() {
  int dayNumber = 3;

  switch (dayNumber) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Enter a number between 1 and 7.");
  }

  int first = 0;
  int second = 1;

  for (int i = 2; i < 10; i++) {
    int now = first + second;
    first = second;
    second = now;
    print(now);
  }
}
