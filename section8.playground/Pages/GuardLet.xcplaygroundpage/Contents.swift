import Foundation

"""
    SALIDA RAPIDA GUARD LET
"""

var myOptionalString: String?

func myFunction() {
    guard let myString = myOptionalString else {
        print("myString es nulo")
        return
    }
    
    print("El valor de myString es \(myString)")
}

myFunction()

myOptionalString = "Mi nombre es Enzo"

myFunction()
