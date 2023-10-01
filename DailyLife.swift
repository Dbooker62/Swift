struct ShoppingCartItem {
    let name: String
    let price: Double
}


func calculateTotalCost(items: [ShoppingCartItem], discount: (Double) -> Double) -> Double {
    let subtotal = items.reduce(0.0) { (result, item) in
        return result + item.price
    }
    
    let discountedTotal = discount(subtotal)
    
    return discountedTotal
}

let applyDiscount: (Double) -> Double = { subtotal in
    return subtotal * 0.9 // 10% discount
}


let shoppingCart = [
    ShoppingCartItem(name: "Shirt", price: 25.0),
    ShoppingCartItem(name: "Jeans", price: 40.0),
    ShoppingCartItem(name: "Shoes", price: 60.0)
]


let totalCost = calculateTotalCost(items: shoppingCart, discount: applyDiscount)

print("Total cost after applying a 10% discount: $\(totalCost)")
