func runFizzBuzz() {
    // Цикл от 1 до 100 включительно
    for number in 1...100 {
        // число делится на 3 и на 5 одновременно
        if number % 3 == 0 && number % 5 == 0 {
            print("FizzBuzz")
        }
        // число делится только на 3
        else if number % 3 == 0 {
            print("Fizz")
        }
        // число делится только на 5
        else if number % 5 == 0 {
            print("Buzz")
        }
        // Если ни одно условие не подошло — печатаем само число
        else {
            print(number)
        }
    }
}
