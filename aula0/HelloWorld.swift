import Foundation

print("Ola, mundo!")

func taboada(num: Int) -> Void {
    for i in 1...10 {
        print("\(num) * \(i) = \(num * i)")
    }
}

print("\nInsira um numero: ")
if let input = readLine(), let number = Int(input) {
    taboada(num: number)
}