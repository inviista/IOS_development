func hasUniqueCharacters(_ text: String) -> Bool {
    var seen = Set<Character>() // множество для хранения уникальных символов
    
    for char in text {
        if seen.contains(char) {
            return false // если символ уже встречался → строка не уникальна
        }
        seen.insert(char)
    }
    return true
}

func runUniqueCharacters() {
    print("Введите строку для проверки уникальности символов:")
    if let input = readLine() {
        if hasUniqueCharacters(input) {
            print("Все символы уникальны.")
        } else {
            print("В строке есть повторяющиеся символы.")
        }
    } else {
        print("Ошибка ввода.")
    }
}
