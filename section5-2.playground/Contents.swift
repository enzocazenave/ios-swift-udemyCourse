import UIKit

"""
    SWITCH
"""

let country = "ARG"

switch country {
    case "ES":
        print("El idioma es español")
    case "MX":
        print("El idioma es español")
    case "PE":
        print("El idioma es español")
    case "BO":
        print("El idioma es español")
    case "CO":
        print("El idioma es español")
    case "EEUU":
        print("El idioma es ingles")
    default:
        print("No conocemos el idioma")
}

let age = 101

switch age {
    case 0,1,2:
        print("Eres un bebe")
    case 3...10:
        print("Eres un niño")
    case 11..<16:
        print("Eres un adolescente")
    case 16..<70:
        print("Eres adulto")
    case 70..<100:
        print("Eres anciano")
    default:
        print("😲")
}

// ENUM CON SWITCH

enum personalData {
    case name
    case surname
    case address
    case phone
}

let userData: personalData = .name

switch userData {
    case .name:
        print("Estamos editando el nombre")
    case .surname:
        print("Estamos editando los apellidos")
    case .address:
        print("Estamos editando la direccion")
    case .phone:
        print("Esatmos editando el numero de telefono")
}

"""
    REPEAT WHILE
"""

var numeros = [1,2,3,4,5,6,7,8,9,10]
var i = numeros.count - 1

repeat {
    numeros.remove(at: i)
    i -= 1
} while (numeros.count > 0)

print("El array esta vacio, su cantidad de elementos es: \(numeros.count)")

var numeroAleatorio:Int
var n = 0

repeat {
    n += 1
    numeroAleatorio = Int(arc4random_uniform(1000))
    print("El ciclo se ejecuto \(n) veces")
} while (numeroAleatorio != 8)
