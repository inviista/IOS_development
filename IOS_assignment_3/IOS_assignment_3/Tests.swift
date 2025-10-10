import Foundation

func runTests() {
    let laptop = Product(
        id: "1",
        name: "MacBook M4 Pro",
        price: 999.99,
        category: .electronics,
        description: "Ноутбук Apple"
    )
    
    let smartphone = Product(
        id: "2",
        name: "Iphone 17 Pro Max",
        price: 799.99,
        category: .electronics,
        description: "Смартфон Apple"
    )
    
    let headphones = Product(
        id: "3",
        name: "AirPods",
        price: 199.99,
        category: .electronics,
        description: "Наушники Apple"
    )
    
    let cart = ShoppingCart()
    cart.addItem(product: laptop, quantity: 1)
    cart.addItem(product: smartphone, quantity: 2)
    cart.addItem(product: laptop, quantity: 1)
    
    print("Subtotal: \(String(format: "%.2f", cart.subtotal))")
    print("Item count: \(cart.itemCount)")
    
    cart.discountCode = "SAVE10"
    print("Total with discount: \(String(format: "%.2f", cart.total))")
    
    func modifyCart(_ cart: ShoppingCart) {
        cart.addItem(product: headphones, quantity: 1)
    }
    modifyCart(cart)
    print("After modifyCart, item count: \(cart.itemCount)")
    
    var item1 = CartItem(product: laptop, quantity: 1)
    var item2 = item1
    item2.updateQuantity(5)
    print("Item1 quantity: \(item1.quantity), Item2 quantity: \(item2.quantity)")
    
    let address = Address(
        street: "ул. Достык 123",
        city: "Алматы",
        zipCode: "050000",
        country: "Казахстан"
    )
    
    let order = Order(from: cart, shippingAddress: address)
    cart.clearCart()
    
    print("Order items count: \(order.itemCount)")
    print("Cart items count: \(cart.itemCount)")
}
