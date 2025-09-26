func isPalindrome(_ text: String) -> Bool {
    // Приводим строку к нижнему регистру
    let lowercased = text.lowercased()
    
    // Убираем все символы, кроме букв и цифр
    // CharacterSet.alphanumerics включает только буквы и цифры
    let filtered = lowercased.filter { $0.isLetter || $0.isNumber }
    
    // Проверяем, равна ли строка своей обратной версии
    return filtered == String(filtered.reversed())
}

func runPalindromeTests() {
    print("Введите строку для проверки на палиндром:")

    if let input = readLine() {
        if isPalindrome(input) {
            print("Это палиндром")
        } else {
            print("Это не палиндром")
        }
    } else {
        print("Не удалось прочитать ввод")
    }
}
