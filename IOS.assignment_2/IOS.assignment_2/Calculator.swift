import Foundation

// --- Функции для операций ---
func add(_ a: Double, _ b: Double) -> Double {
    return a + b
}

func subtract(_ a: Double, _ b: Double) -> Double {
    return a - b
}

func multiply(_ a: Double, _ b: Double) -> Double {
    return a * b
}

func divide(_ a: Double, _ b: Double) -> Double? {
    if b == 0 {
        return nil // деление на ноль невозможно
    }
    return a / b
}

func runCalculator() {
    while true {
        print("\nВведите первое число (или 'exit' для выхода):")
        if let input1 = readLine(), input1.lowercased() != "exit" {
            if let num1 = Double(input1) {
                
                print("Введите второе число:")
                if let input2 = readLine(), let num2 = Double(input2) {
                    
                    print("Выберите операцию (+, -, *, /):")
                    if let op = readLine() {
                        var result: Double?
                        
                        switch op {
                        case "+":
                            result = add(num1, num2)
                        case "-":
                            result = subtract(num1, num2)
                        case "*":
                            result = multiply(num1, num2)
                        case "/":
                            if let division = divide(num1, num2) {
                                result = division
                            } else {
                                print("Ошибка: деление на ноль невозможно!")
                            }
                        default:
                            print("Неизвестная операция.")
                        }
                        
                        if let res = result {
                            print("Результат: \(res)")
                        }
                    }
                } else {
                    print("Ошибка: нужно ввести число.")
                }
            } else {
                print("Ошибка: нужно ввести число.")
            }
        } else {
            print("Программа завершена.")
            break
        }
    }
}
