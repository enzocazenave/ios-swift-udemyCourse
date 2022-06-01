import Foundation

var myArray = [5,8,1,0,3,9,7,2,4,6]

// - SORT

/*print(myArray)
myArray.sort()
print(myArray)

myArray.sort { (intA, intB) -> Bool in
    return intA > intB
}

print(myArray)
*/

// - SORTED

print(myArray)
var myArraySorted = myArray.sorted()
print(myArray)
print(myArraySorted)

myArraySorted = myArray.sorted { (intA, intB) -> Bool in
    return intA > intB
}

print(myArraySorted)
