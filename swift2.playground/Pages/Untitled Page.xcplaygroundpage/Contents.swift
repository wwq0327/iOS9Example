//: Playground - noun: a place where people can play

import UIKit

class Human {
    var name: String?
    var description: String {
        return "Name is: \(name)"
    }
    
    func sayDesc() -> String {
        return description
    }
}

class Person: Human {
    var age: Int?
    
    override var description: String {
        return super.description + "Age: \(age)"
    }
}

let person = Person()
person.name = "wyatt"
person.age = 12
person.sayDesc()
