// Цельсий → Фаренгейт
func celsiusToFahrenheit(_ c: Double) -> Double {
    return (c * 9/5) + 32
}

// Цельсий → Кельвин
func celsiusToKelvin(_ c: Double) -> Double {
    return c + 273.15
}

// Фаренгейт → Цельсий
func fahrenheitToCelsius(_ f: Double) -> Double {
    return (f - 32) * 5/9
}

// Фаренгейт → Кельвин
func fahrenheitToKelvin(_ f: Double) -> Double {
    return (f - 32) * 5/9 + 273.15
}

// Кельвин → Цельсий
func kelvinToCelsius(_ k: Double) -> Double {
    return k - 273.15
}

// Кельвин → Фаренгейт
func kelvinToFahrenheit(_ k: Double) -> Double {
    return (k - 273.15) * 9/5 + 32
}

// --- Основная программа ---

// Просим пользователя ввести температуру
func runTemperatureConverter() {
    print("Enter temperature value:")
    if let input = readLine(), let value = Double(input) {
        print("Enter unit (C, F, or K):")
        if let unit = readLine() {
            if unit.uppercased() == "C" {
                print("\(value)°C = \(celsiusToFahrenheit(value))°F")
                print("\(value)°C = \(celsiusToKelvin(value))K")
            } else if unit.uppercased() == "F" {
                print("\(value)°F = \(fahrenheitToCelsius(value))°C")
                print("\(value)°F = \(fahrenheitToKelvin(value))K")
            } else if unit.uppercased() == "K" {
                print("\(value)K = \(kelvinToCelsius(value))°C")
                print("\(value)K = \(kelvinToFahrenheit(value))°F")
            } else {
                print("Unknown unit. Please enter C, F, or K.")
            }
        }
    } else {
        print("Invalid input. Please enter a number.")
    }
}
