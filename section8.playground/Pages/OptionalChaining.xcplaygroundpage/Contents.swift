import Foundation

"""
    OPTIONAL CHAINING
"""

class Student {
    var name: String?
    var book: Book?
}

class Book {
    var pages: Int?
}

let myStudent = Student()

print(myStudent.name)
print(myStudent.book?.pages)

myStudent.name = "Enzo"

let myBook = Book()
myBook.pages = 50

myStudent.book = myBook

if let pages = myStudent.book?.pages, let name = myStudent.name {
    print("El libro de \(name) tiene \(pages) paginas")
} else {
    print("El libro no tiene paginas")
}
