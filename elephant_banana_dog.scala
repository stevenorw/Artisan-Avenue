// Main App
object ArtisanAvenue { 
  def main(args: Array[String]) {
    println("Welcome to Artisan Avenue!")
  }

// Initialize Database 
  class Database {
    var records: List[String] = List[String]()
  }

//  Create a User Model 
  class User {
    var id: Int = 0 
    var name: String = ""
    var age: Int = 0 
  }

// Create a Store 
  class Store {
    var id: Int = 0
    var name: String = ""
    var city: String = ""
    var address: String = ""
  }

// Create a Shopping Cart 
  class Cart{
    var id: Int = 0 
    var products: List[String] = List[String]() 
  }

// Create Functions to add each entity 
  def addUser(user: User): Unit = {
    val db = new Database() 
    db.records = (user.id + " " + user.name + " " + user.age) :: db.records
  }

// Create a function to add store 
  def addStore(store: Store): Unit = {
    val db = new Database()
    db.records = (store.id + " " + store.name + " " + store.city + " " + store.address) :: db.records
  }

// Create a function to add products to cart 
  def addProductToCart(cart: Cart, product: String): Unit = {
    val db = new Database() 
    db.records = (cart.id + " " + product) :: db.records
  }

// Create a function to remove product from cart 
  def removeProductFromCart(cart: Cart, product: String): Unit = {
    val db = new Database() 
    db.records = db.records.filter(record => !record.contains(product))
  }

// Create a function to list users 
  def listUsers() : List[User] = {
    val db = new Database()
    var users: List[User] = List[User]()
    db.records.foreach { record => 
      val user = new User()
      val userInfo = record.split(" ")
      user.id = userInfo(0).toInt
      user.name = userInfo(1)
      user.age = userInfo(2).toInt
      users = user :: users
    }
    users
  }

// Create a function to list stores 
  def listStores() : List[Store] = {
    val db = new Database()
    var stores: List[Store] = List[Store]()
    db.records.foreach { record =>
      val store = new Store()
      val storeInfo = record.split(" ")
      store.id = storeInfo(0).toInt
      store.name = storeInfo(1)
      store.city = storeInfo(2)
      store.address = storeInfo(3)
      stores = store :: stores
    }
    stores
  }

// Create a function to list all products in the cart 
  def listCartProducts(cart: Cart) : List[String] = {
    val db = new Database()
    var products: List[String] = List[String]()
    db.records.foreach { record =>
      if (record.startsWith(cart.id.toString)) {
        val product = record.split(" ")(1)
        products = product :: products
      }
    }
    products
  }
}