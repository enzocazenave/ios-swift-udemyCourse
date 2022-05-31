import UIKit

"""
    Estructuras
"""

struct cuadrados {
    var ancho = 10
    var alto = 10
    
    func area() -> Int {
        return ancho * alto
    }
}

var miCuadrado = cuadrados()
var areaCuadrado = miCuadrado.area()

"""
    Clases
"""

class auto {
    var color = "neutro"
    var numeroRuedas = 4
    var precio = 0
    
    func encender() -> Bool {
        return true
    }
    
    func apagar() -> Bool {
        return true
    }
    
    func acelerar() -> Bool {
        return true
    }
}

var peugeot208 = auto()
peugeot208.precio = 5000


