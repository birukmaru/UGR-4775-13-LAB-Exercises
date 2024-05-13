fun convertToUpperCase(strList: List<String>): List<String> { 
    return strList.map { it.toUpperCase() }
  }
fun filterGreaterThan(numList: List<Int>, threshold: Int): List<Int> {
   
    return numList.filter { it > threshold }
  }
fun calculateSum(numList: List<Int>): Int {
    return numList.reduce { sum, num -> sum + num }
  }
  