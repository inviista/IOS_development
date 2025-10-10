
class ShoppingCart {
    private(set) var items: [CartItem] = []
    var discountCode: String?
    
    func addItem(product: Product, quantity: Int = 1) {
        if let index = items.firstIndex(where: { $0.product.id == product.id }) {
            items[index].increaseQuantity(by: quantity)
        } else {
            let newItem = CartItem(product: product, quantity: quantity)
            items.append(newItem)
        }
    }
    
    func removeItem(productId: String) {
        items.removeAll { $0.product.id == productId }
    }
    
    func updateItemQuantity(productId: String, quantity: Int) {
        guard quantity > 0 else {
            removeItem(productId: productId)
            return
        }
        
        if let index = items.firstIndex(where: { $0.product.id == productId }) {
            items[index].updateQuantity(quantity)
        }
    }
    
    func clearCart() {
        items.removeAll()
    }
    
    var subtotal: Double {
        return items.reduce(0) { $0 + $1.subtotal }
    }
    
    var discountAmount: Double {
        guard let discountCode = discountCode else { return 0 }
        
        switch discountCode {
        case "SAVE10":
            return subtotal * 0.1
        case "SAVE20":
            return subtotal * 0.2
        default:
            return 0
        }
    }
    
    var total: Double {
        return subtotal - discountAmount
    }
    
    var itemCount: Int {
        return items.reduce(0) { $0 + $1.quantity }
    }
    
    var isEmpty: Bool {
        return items.isEmpty
    }
}
