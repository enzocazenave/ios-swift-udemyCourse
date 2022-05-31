import Foundation

"""
    MANEJO DE ERRORES
"""

func sum(firstNumber: Int?, secondNumber: Int?) throws -> Int {
    if firstNumber == nil {
        throw SumError.firstNumberNil
    } else if secondNumber == nil {
        throw SumError.secondNumberNil
    } else if firstNumber! < 0 || secondNumber! < 0 {
        throw SumError.numberNegative(firstNumber: firstNumber!, secondNumber: secondNumber!)
    }
    
    return firstNumber! + secondNumber!
}


"""
    DEFINICION DE TIPOS DE ERRORES
"""

enum SumError: Error {
    case firstNumberNil
    case secondNumberNil
    case numberNegative(firstNumber: Int, secondNumber: Int)
}

"""
    PROPAGACION DE ERRORES
"""

do {
    print(try sum(firstNumber: 100, secondNumber: nil))
} catch SumError.firstNumberNil {
    print("El primer numero es nulo")
} catch SumError.secondNumberNil {
    print("El segundo numero es nulo")
} catch SumError.numberNegative(let firstNumber, let secondNumber) {
    print("Hay algun numero negativo. firstNumber:\(firstNumber), secondNumber:\(secondNumber)")
}

