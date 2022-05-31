import UIKit

// Definir un string de varios renglones en una variable.

var myString = """
    Bienvenido a mi playground
    
    Mi nombre es Enzo y estas en mi mac.
    """


// Definir un string de varios renglones en una variable, pero solo visualmente en el IDE.

var mySecondString = """
    Bienvenido a mi playground, \
    \
    mi nombre es Enzo y estas en mi mac.
    """


// Caracteres

let myCharacter: Character = "\u{E9}"
let myCharacter2 = "\u{24}"


// Emojis

let myEmoji = "😀"


// Interpolacion

let name = "Enzo"
let country = "Argentina"
let myPersonalInfo = "Mi nombre es \(name) y vivo en \(country)"


// Verificar si en un string aparece una palabra.

let myContent = "Mi nombre es Enzo"
myContent.contains(name)


// Comprobar si un string esta vacio. (myContent == "" [false])

myContent.isEmpty



