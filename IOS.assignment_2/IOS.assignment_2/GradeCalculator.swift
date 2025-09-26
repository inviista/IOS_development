func runGradeCalculator() {
    // Словарь: ключ = имя студента, значение = его балл
    var students: [String: Double] = [:]

    print("Введите количество студентов:")
    guard let input = readLine(), let count = Int(input), count > 0 else {
        print("Нужно ввести положительное число.")
        return
    }

    // Запрашиваем имена и баллы у пользователя
    for i in 1...count {
        print("Введите имя студента №\(i):")
        guard let name = readLine(), !name.isEmpty else {
            print("Имя не может быть пустым.")
            return
        }

        print("Введите балл для \(name):")
        guard let scoreInput = readLine(), let score = Double(scoreInput) else {
            print("Нужно ввести число для балла.")
            return
        }

        students[name] = score
    }

    // Извлекаем все баллы в массив
    let scores = Array(students.values)

    // Считаем среднее, максимум и минимум
    let average = scores.reduce(0, +) / Double(scores.count)
    let highest = scores.max() ?? 0
    let lowest = scores.min() ?? 0

    print("\n Результаты:")
    print("Средний балл: \(average)")
    print("Максимальный балл: \(highest)")
    print("Минимальный балл: \(lowest)\n")

    // Выводим результаты для каждого студента
    for (name, score) in students {
        if score > average {
            print("\(name): \(score) (выше среднего)")
        } else if score < average {
            print("\(name): \(score) (ниже среднего)")
        } else {
            print("\(name): \(score) (ровно средний)")
        }
    }
}
