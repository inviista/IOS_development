func fibonacci(_ n: Int) -> [Int] {
    if n <= 0 { return [] }        // если n <= 0 — пустой массив
    if n == 1 { return [0] }       // если n == 1 — только 0

    var sequence = [0, 1]          // стартовые значения
    for i in 2..<n {
        let next = sequence[i - 1] + sequence[i - 2]
        sequence.append(next)
    }
    return sequence
}

// Вспомогательная интерактивная функция — её можно вызывать из main.swift
func runFibonacci() {
    print("Введите количество чисел Фибоначчи:")
    guard let input = readLine(), let n = Int(input) else {
        print("Ошибка ввода, нужно ввести целое число.")
        return
    }
    let result = fibonacci(n)
    print("Первые \(n) чисел Фибоначчи: \(result)")
}
