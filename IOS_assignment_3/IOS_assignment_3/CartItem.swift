
struct CartItem {
    let product: Product
    var quantity: Int
    
    var subtotal: Double {
        return product.price * Double(quantity)
    }
    
    mutating func updateQuantity(_ newQuantity: Int) {
        guard newQuantity > 0 else {
            fatalError("Quantity must be positive")
        }
        quantity = newQuantity
    }
    
    mutating func increaseQuantity(by amount: Int) {
        guard amount > 0 else {
            fatalError("Amount must be positive")
        }
        quantity += amount
    }
}
