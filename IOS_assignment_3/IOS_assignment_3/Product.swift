
struct Product {
    let id: String
    let name: String
    let price: Double
    let category: Category
    let description: String
    
    enum Category {
        case electronics, clothing, food, books
    }
    
    var displayPrice: String {
        let tenge = Int(price)
        let tiin = Int((price - Double(tenge)) * 100)
        return "\(tenge).\(tiin < 10 ? "0" : "")\(tiin) ₸"
    }
    
    init(id: String, name: String, price: Double, category: Category, description: String) {
        guard price > 0 else {
            fatalError("Price must be positive")
        }
        self.id = id
        self.name = name
        self.price = price
        self.category = category
        self.description = description
    }
}
