func runShoppingListManager() {
    var shoppingList: [String] = [] // массив для хранения списка покупок
    var isRunning = true            // флаг для выхода из программы
    
    // Главный цикл программы
    while isRunning {
        // Выводим меню
        print("""
        
        --- Shopping List Manager ---
        1. Добавить товар
        2. Удалить товар
        3. Показать список
        4. Выйти
        Выберите опцию (1-4):
        """)
        
        // Читаем ввод пользователя
        if let choice = readLine() {
            switch choice {
            case "1":
                // Добавление товара
                print("Введите название товара для добавления:")
                if let item = readLine(), !item.isEmpty {
                    shoppingList.append(item)
                    print("'\(item)' добавлен в список.")
                } else {
                    print("Неверный ввод.")
                }
                
            case "2":
                // Удаление товара
                print("Введите название товара для удаления:")
                if let item = readLine(), !item.isEmpty {
                    if let index = shoppingList.firstIndex(of: item) {
                        shoppingList.remove(at: index)
                        print("'\(item)' удалён из списка.")
                    } else {
                        print("'\(item)' не найден в списке.")
                    }
                }
                
            case "3":
                // Показать список
                if shoppingList.isEmpty {
                    print("Список пуст.")
                } else {
                    print("Текущий список покупок:")
                    for (index, item) in shoppingList.enumerated() {
                        print("\(index + 1). \(item)")
                    }
                }
                
            case "4":
                // Выход
                isRunning = false
                print("До свидания!")
                
            default:
                print("Неверный выбор. Введите 1–4.")
            }
        }
    }
}
