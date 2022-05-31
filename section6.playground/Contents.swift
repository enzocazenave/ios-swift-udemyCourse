import UIKit

"""
    FUNCTIONS
"""

func sumaDosNumeros(num1:Int, num2:Int) {
    print(num1 + num2)
}

sumaDosNumeros(num1: 5, num2: 9)

func cuboDe(numero:Int) -> Int{
    let numeroCubo = numero * numero * numero
    return numeroCubo
}

let resultado = cuboDe(numero: 5)

func saludarAlumno(nombre:String, apellido:String) {
    print("Hola \(nombre) \(apellido)")
}

saludarAlumno(nombre: "Enzo", apellido: "Cazenave")

func saludarAlumno2(nombre:String, apellido:String = "Cazenave") {
    print("Tu nombre es \(nombre) \(apellido)")
}

saludarAlumno2(nombre: "Enzo")
saludarAlumno2(nombre: "Enzo", apellido: "Gonzales")

func califiacionPromedio(matematicas m1:Double, quimica m2:Double, fisica m3:Double) -> Double {
    return(m1 + m2 + m3) / 3
}

let miCalificacionPromedioMaterias = califiacionPromedio(matematicas: 81, quimica: 45, fisica: 60)

"""
    CLOSURES
"""

let closure = {(m1:Double, m2:Double, m3:Double)
    -> Double in
        return (m1 + m2 + m3) / 3
}

print("Mi calificacion promedio es \(closure(100,22,88))")

