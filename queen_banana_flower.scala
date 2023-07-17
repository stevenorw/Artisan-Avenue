// imports
import scala.collection.mutable.Map 
import scala.io.Source

// define constants
val ARTISAN_AVENUE_NAME = "Artisan Avenue"

// define variables
var artisanAvenueInventory: Map[String, Double] = Map()

// read file containing inventory
val inventoryFile = Source.fromFile("inventory.txt")
val inventoryLines = inventoryFile.getLines

// loop through each line in the input file and add it to the Artisan Avenue inventory
for (inventoryLine <- inventoryLines) {
  val inventoryList = inventoryLine.split(" ")
  val itemName = inventoryList(0)
  val itemPrice = inventoryList(1).toDouble
  artisanAvenueInventory += (itemName -> itemPrice)
}

// close inventory file
inventoryFile.close

// define methods
def getTotalInventoryPrice() : Double = {
  var totalPrice = 0.0
  for ((itemName, price) <- artisanAvenueInventory) {
    totalPrice += price
  }
  return totalPrice
}

def addNewInventoryItem(itemName: String, itemPrice: Double) : Unit = {
  artisanAvenueInventory += (itemName -> itemPrice)
}

def printInventory() : Unit = {
  println(s"Inventory for $ARTISAN_AVENUE_NAME:")
  println("----------------------------------")
  for ((itemName, price) <- artisanAvenueInventory) {
    println(s"$itemName: $price")
  }
  println("----------------------------------")
  println(s"Total inventory price: ${getTotalInventoryPrice()}")
}

// run the program
println(s"Loading inventory for $ARTISAN_AVENUE_NAME...")
printInventory()

addNewInventoryItem("Handwoven Basket", 25.00)
printInventory()