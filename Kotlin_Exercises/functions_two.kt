fun findMax(numList: List<Int>): Int? {
   
    if (numList.isEmpty()) {
      return null
    }
    var maxVal = numList[0]
    for (num in numList) {
      if (num > maxVal) {
        maxVal = num
      }
    }
    return maxVal
  }
  
fun filterEvenNumbers(numList: List<Int>): List<Int> {
  
    val evenList = mutableListOf<Int>()
    for (num in numList) {
      if (num % 2 == 0) {
        evenList.add(num)
      }
    }
    return evenList
  }
fun calculateAverage(numList: List<Double>): Double? {
   
    if (numList.isEmpty()) {
      return null
    }
    val sum = numList.sum()
    return sum / numList.size
  }
  