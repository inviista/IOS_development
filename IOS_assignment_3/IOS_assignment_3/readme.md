# README.md

## Shopping Cart System

### Why class for ShoppingCart?
ShoppingCart is a class because it needs to be shared across the app. When you pass a class to different functions, they all work with the same cart. This is important for keeping the cart updated everywhere.

### Why struct for Product and Order?
Product is a struct because products are simple data. Two identical products are the same thing. Order is a struct because it's a snapshot of your purchase that shouldn't change after creation.

### Reference semantics example
When we pass ShoppingCart to the modifyCart function and add headphones, the original cart changes too. This shows that classes share the same data.

### Value semantics example
When we copy a CartItem and change the copy, the original stays the same. This shows that structs create independent copies.

### Challenges
The hardest part was handling duplicate products in the cart. I fixed it by checking if a product already exists and updating its quantity instead of adding duplicates. Also, making sure all prices and quantities stay positive was important.
