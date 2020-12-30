import Foundation

// guard let
class Cars {
    var cars:[String] = ["Ferrari", "Porshe", "Citroen"]
    
    func retrieveCarByIndex(index:Int)->String?{
        guard index >= 0 && index < cars.count else {
            print("Asked index is out of bounds")
            return nil
        }
        return cars[index]
    }
 }


let car = Cars()
car.retrieveCarByIndex(index: 10)

// Throwable

struct User {
    enum ValidationError: Error {
        case emptyName
        case nameToShort(nameLength: Int)
    }

    let name: String

    init(name: String) throws {
        guard !name.isEmpty else {
            throw ValidationError.emptyName
        }
        guard name.count > 2 else {
            throw ValidationError.nameToShort(nameLength: name.count)
        }

        self.name = name
    }
}

let user = try User(name: "Antoine van der Lee")

do {
    let user = try User(name: "Tt")
    print("Created user with name \(user.name)")
} catch User.ValidationError.emptyName {
    print("User creation failed with error: empty name")
} catch User.ValidationError.nameToShort(let nameLenght) {
    print ("User name is too short: \(nameLenght)")
}


do {
    let user = try User(name: "")
    print("Created user with name \(user.name)")
} catch User.ValidationError.emptyName {
    print("User creation failed with error: empty name")
} catch User.ValidationError.nameToShort(let nameLenght) {
    print ("User name is too short: \(nameLenght)")
}



