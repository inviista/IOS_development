func runWordFrequencyCounter() {
    print("Введите предложение:")

    if let input = readLine(), !input.isEmpty {
        // Приводим строку к нижнему регистру (чтобы не учитывать регистр букв)
        let lowercased = input.lowercased()
        
        // Убираем пунктуацию (оставляем только буквы, цифры и пробелы)
        let cleaned = lowercased.filter { $0.isLetter || $0.isWhitespace || $0.isNumber }
        
        // Разбиваем строку по пробелам на слова
        let words = cleaned.split(separator: " ").map { String($0) }
        
        // Словарь для хранения частоты слов
        var frequency: [String: Int] = [:]
        
        // Подсчёт частоты
        for word in words {
            frequency[word, default: 0] += 1
        }
        
        // Вывод результата
        print("\n Частота слов:")
        for (word, count) in frequency {
            print("'\(word)': \(count)")
        }
    } else {
        print("Ввод пустой, попробуйте снова.")
    }
}
