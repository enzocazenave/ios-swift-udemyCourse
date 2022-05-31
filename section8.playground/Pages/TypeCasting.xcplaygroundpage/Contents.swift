import Foundation

"""
    Type Casting (validacion de tipos de datos)
"""

let myString = "Enzo"
let myInt = 18

class MyClass {
    var name: String!
    var age: Int!
}

let myClass = MyClass()
myClass.name = "Enzo"
myClass.age = 18

let myArray: [Any] = [myString, myInt, myClass]

for i in myArray {
    if i is String {
        let myItemString = i as! String
        print("i es de tipo String y tiene el valor \(myItemString)")
    } else if i is Int {
        let myItemInt = i as! Int
        print("i es de tipo Int y tiene el valor \(myItemInt)")
    } else if i is MyClass {
        let myItemMyClass = i as! MyClass
        print("i es de tipo MyClass y tiene el valor \(myItemMyClass.name!) y \(myItemMyClass.age!)")
    }
}

for i in myArray {
    if let myItemString = i as? String {
        print("i es de tipo String y tiene el valor \(myItemString)")
    } else if let myItemInt = i as? Int {
        print("i es de tipo Int y tiene el valor \(myItemInt)")
    } else if let myItemMyClass = i as? MyClass {
        print("i es de tipo MyClass y tiene el valor \(myItemMyClass.name!) y \(myItemMyClass.age!)")
    }
}
