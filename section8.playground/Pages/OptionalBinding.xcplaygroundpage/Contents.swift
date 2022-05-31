import Foundation

"""
    OPTIONALS BINDINGS
"""

var myOptionalString: String?
var myOptionalString2: String?
var myOptionalString3: String?

myOptionalString = "Enzo"
myOptionalString2 = "Cazenave"
myOptionalString3 = "18"

if let myString = myOptionalString, let myString2 =  myOptionalString2, let myString3 = myOptionalString3 {
    print("\(myString) \(myString2) \(myString3)")
} else {
    print("Alguna variable es nula")
}


// DESEMPAQUETADO FORZADO

if myOptionalString != nil {
    print(myOptionalString!)
}
    
