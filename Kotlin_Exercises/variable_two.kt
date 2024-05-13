fun main() {
  
    enum class DistanceUnit { KILOMETERS, MILES }
    println("Enter the distance value:")
    val distance = readLine()?.toDoubleOrNull() ?: 0.0
  

    println("Enter the initial unit:")
    val initialUnit = when (readLine()?.lowercase()) {
      "km" -> DistanceUnit.KILOMETERS
      "miles" -> DistanceUnit.MILES
      else -> {
        println("Invalid unit")
        DistanceUnit.KILOMETERS
      }
    }
    val distanceInKm = when (initialUnit) {
      DistanceUnit.KILOMETERS -> distance
      DistanceUnit.MILES -> distance * 1.60934
    }

    println("Converted distance: $distanceInKm kilometers")
  }
  