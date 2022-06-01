import Foundation

var myArray = [5,8,1,0,3,9,7,2,4,6]

let myMapArray2 = myArray.map { (myInt) -> Int in
    return myInt + 10
}

let myMapArray = myArray.map { (myInt) -> String in
    return "Este es el numero \(myInt)"
}

print(myMapArray2)
print(myMapArray)
