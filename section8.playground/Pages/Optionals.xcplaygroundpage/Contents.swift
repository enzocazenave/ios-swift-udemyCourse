import Foundation

"""
    OPTIONALS
"""

let myStringNumber = "100"
let myIntNumber = Int(myStringNumber)

let myWrongStringNumber = "Enzo"
let myWrongIntNumber: Int? = Int(myWrongStringNumber)

var myOptionalString: String?

myOptionalString = "Mi nombre es Enzo"

if myOptionalString != nil {
    print("Nuestra variable tiene un valor distinto de nulo")
} else {
    print("Nuestra variable es nula")
}
