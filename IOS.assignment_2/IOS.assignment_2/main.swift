func runMenu() {
    while true {
        print("""
        
        ===============================
        📌 Выберите задачу для запуска:
        1. FizzBuzz
        2. Простые числа
        3. Конвертер температур
        4. Менеджер списка покупок
        5. Подсчёт слов
        6. Последовательность Фибоначчи
        7. Калькулятор оценок
        8. Палиндром
        9. Калькулятор
        10. Уникальные символы
        0. Выход
        ===============================
        """)
        
        if let choice = readLine(), let num = Int(choice) {
            switch num {
            case 1: runFizzBuzz()
            case 2: runPrimeNumbers()
            case 3: runTemperatureConverter()
            case 4: runShoppingListManager()
            case 5: runWordFrequencyCounter()
            case 6: runFibonacci()
            case 7: runGradeCalculator()
            case 8: runPalindromeTests()
            case 9: runCalculator()
            case 10: runUniqueCharacters()
            case 0:
                print("Выход из программы.")
                return
            default:
                print("Неверный выбор, попробуйте снова.")
            }
        } else {
            print("Введите число от 0 до 10.")
        }
    }
}

runMenu()
