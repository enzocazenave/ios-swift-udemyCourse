import UIKit


"""
    ARRAYS
"""

var array = [1,2,3]

// Agregar valores al array.

array.append(5)
array.insert(4, at: 1)


// Eliminar valores del array.

array.removeLast()
array.remove(at: 0)


// Eliminar todo el array.

array.removeAll()


"""
    DICTIONARY
"""

var dictionary = [Int:String]()

// Agregar datos al dictionary.

dictionary = [1: "Juan", 2: "Mariano"]


// Agregar un solo dato al dictionary.

dictionary[3] = "Enzo"


// Borar un dato del dictionary.

dictionary[3] = nil


"""
    TUPLES
"""

var persona = ("Enzo", "Cazenave", 30, 1.91)

var (nombre, apellido, edad, estatura) = persona

var persona2 = (nombre: "Enzo", apellido: "Cazenave", edad: 30, estatura: 1.91)

persona2.nombre

"""
    ENUMERATION
"""

enum personalData {
    case name
    case surname
    case address
    case phone
}

var currentData: personalData = .name

currentData = .phone


// Enumeration con valores asociados

enum complexPersonalData {
    case name(String)
    case surname(String)
    case address(String, Int)
    case phone(Int)
}

var complexCurrentData: complexPersonalData = .name("Enzo")

complexCurrentData = .address("Santiago del estero", 632)

complexCurrentData = .phone(1545280608)

"""
    OPERADOR RANGO DOBLE / TWO-SIDED RANGE OPERATOR
"""

var array3 = [0,1,2,3,4,5,6,7,8,9]
var subsetArreglo = array3[1...3]
var subsetArreglo1 = array3[1..<3]


"""
    OPERADOR RANGO UNICO / ONE-SIDED RANGE OPERATOR
"""

var array4 = [0,1,2,3,4,5,6,7,8,9]
var subsetArreglo2 = array4[...9]
