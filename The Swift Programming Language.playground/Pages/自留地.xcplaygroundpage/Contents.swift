//: [Previous](@previous)

import Foundation

class Person {
    static let person = Person()
    static let name = "wyatt"
    
    private init() {}
    
    func sayHi() {
        print("hi, wyatt")
    }
}

let person = Person.person
person.sayHi()

