import Foundation

var mySet: Set<String> = ["Enzo", "Cazenave", "18"]
var mySet2: Set<String> = []

// INSERTAR ELEMENTOS AL SET (NO PUEDEN REPETIRSE, DE TODAS MANERAS NO ARROJA ERROR AL HACERLO)

mySet2.insert("Enzo")
mySet2.insert("Cazenave")
mySet2.insert("18")

print(mySet2)

// VERIFICAR SI UN ELEMENTO EXISTE

if mySet.contains("Enzo") {
    print("Existe")
} else {
    print("No existe")
}

// MODIFICACION

mySet.remove("18")
print(mySet)

// ACCESO Y MODIFICACION POR INDICE

if let index = mySet.firstIndex(of: "Enzo") {
    mySet.remove(at: index)
}

print(mySet)

// OPERACIONES DE CONJUNTO

let myIntSet: Set = [1,2,3,4,5]
let myIntSet2: Set = [0,2,3,6,7]

// - Interseccion

print(myIntSet.intersection(myIntSet2))

// - Diferencia simetrica

print(myIntSet.symmetricDifference(myIntSet2))

// - Union

print(myIntSet.union(myIntSet2))

// - Sustraccion

print(myIntSet.subtracting(myIntSet2))
