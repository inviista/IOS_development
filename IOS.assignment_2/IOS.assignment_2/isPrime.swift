func isPrime(_ number: Int) -> Bool {
    // Числа меньше 2 не являются простыми
    if number < 2 { return false }
    
    // Перебираем все числа от 2 до (number - 1)
    for i in 2..<number {
        // Если нашли делитель — число не простое
        if number % i == 0 {
            return false
        }
    }
    // Если делителей не нашли — число простое
    return true
}

// Функция печатает все простые числа от 1 до 100
func runPrimeNumbers() {
    for n in 1...100 {
        if isPrime(n) {
            print(n)
        }
    }
}
