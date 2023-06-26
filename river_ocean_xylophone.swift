import UIKit

class ArtisanAvenue {
    
    // MARK: Properties
    var shopName : String
    var itemName : String
    var itemPrice : Int
    
    // MARK: Initialization
    init(shopName: String, itemName: String, itemPrice: Int) {
        self.shopName = shopName
        self.itemName = itemName
        self.itemPrice = itemPrice
    }
    
    // MARK: Shopping Methods
    func addToCart(quantity: Int) {
        let price = itemPrice * quantity
        print("\(shopName) has added \(quantity) \(itemName) to the cart for a total of $\(price).")
    }
    
    func checkOut(name: String) {
        print("\(name) has successfully checked out from \(shopName).")
    }
    
    // MARK: Factory Methods
    static func createInventory(shopName: String, itemName: String, itemPrice: Int) -> ArtisanAvenue {
        return ArtisanAvenue(shopName: shopName, itemName: itemName, itemPrice: itemPrice)
    }
}

// MARK: Orders
struct Order {
    let shopName: String
    let quantity: Int
    let itemName: String
    let itemPrice: Int
}

// MARK: Person
class Person {
    let name: String
    var orders: [Order] = []
    
    init(name: String) {
        self.name = name
    }
    
    func purchaseItemAt(artisanAvenue: ArtisanAvenue, quantity: Int) {
        let order = Order(shopName: artisanAvenue.shopName, quantity: quantity,
                          itemName: artisanAvenue.itemName, itemPrice: artisanAvenue.itemPrice)
        orders.append(order)
        artisanAvenue.addToCart(quantity: quantity)
        artisanAvenue.checkOut(name: name)
    }
}

// MARK: Main
let aaron = Person(name: "Aaron")

let shoeStore = ArtisanAvenue.createInventory(shopName: "Shoe Store", itemName: "Sneaker Shoes",
                                             itemPrice: 120)

let jewelryStore = ArtisanAvenue.createInventory(shopName: "Jewelry Store", itemName: "Gold Necklace",
                                                itemPrice: 285)
aaron.purchaseItemAt(artisanAvenue: shoeStore, quantity: 2)
aaron.purchaseItemAt(artisanAvenue: jewelryStore, quantity: 1)