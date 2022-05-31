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
    Enumeration
"""
