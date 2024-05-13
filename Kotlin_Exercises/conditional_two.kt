fun main() {
    val discountThreshold = 0.5 
    println("Enter the original price of the product:")
    val originalPrice = readLine()?.toDoubleOrNull() ?: 0.0
  
    println("Enter the discount percentage (0.0 to 1.0):")
    val discountPct = readLine()?.toDoubleOrNull() ?: 0.0
  
    if (discountPct < 0.0 || discountPct > 1.0) {
      println("Invalid discount percentage. Please enter a value between 0.0 and 1.0.")
      return
    }
    val appliedDiscount = if (discountPct > discountThreshold) {
      println("Discount too high! Setting discount to $discountThreshold")
      discountThreshold
    } else {
      discountPct
    }
    val finalPrice = originalPrice * (1 - appliedDiscount)
  
    println("Original Price: $$originalPrice")
    println("Discount Applied: ${appliedDiscount * 100}%")
    println("Final Price: $$finalPrice")
  }
  