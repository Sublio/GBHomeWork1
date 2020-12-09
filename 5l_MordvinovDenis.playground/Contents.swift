import Foundation

protocol Car {
    var currentSpeed:Int      { get set }
    var bodyType:String       { get set }
    var engineType: String    { get set }
    var windowOpened: Bool    { get set }
    var engineIsOn: Bool      { get set }
    var selectedGear: Int     { get set }
    
    func action(action: CarAction)
    
}

extension Car {
    mutating func openWindow(){
        self.windowOpened = true
    }
    
    mutating func closeWindow(){
        self.windowOpened = false
    }
    
    mutating func turnEngineOn(){
        self.engineIsOn = true
    }
    mutating func turnEngineOff(){
        self.engineIsOn = false
    }
    
    mutating func setBodyType(type: String) {
        self.bodyType = type
    }
    mutating func setSpeed(speed: Int) {
        self.currentSpeed = speed
    }
    
    mutating func setEngineType(type: String){
        self.engineType = type
    }
    
    mutating func setGear(gear:Int){
        self.selectedGear = gear
    }
}


enum CarAction: Equatable {
    case turnEngineOn
    case turnEngineOff
    case openWindow
    case closeWindow
    case setBodyType
    case setSpeed(speed:Int)
    case setGear(gear:Int)
    case setEngineType(type: String)
    // Actions for specific car types
    case hookTrailer // For truck
    case turnOnSpeedLimiter // For sport car
}

class SportCar: Car {
    func action(action: CarAction) {
        if action == .openWindow{
            self.windowOpened = true
        }
    }
    
    var currentSpeed: Int = 0
    
    var bodyType: String = ""
    
    var engineType: String = ""
    
    var windowOpened: Bool
    
    var engineIsOn: Bool
    
    var selectedGear: Int = 0
    
    // Specific Property for SportCar
    
    var isSpeedLimiterOn: Bool
    
    init(currentSpeed: Int, bodyType: String, engineType: String, windowOpened: Bool, engineIsOn: Bool, selectedGear: Int, isSpeedLimiterOn:Bool ) {
        self.currentSpeed = currentSpeed
        self.bodyType = bodyType
        self.engineType = engineType
        self.windowOpened = windowOpened
        self.engineIsOn = engineIsOn
        self.selectedGear = selectedGear
        self.isSpeedLimiterOn = isSpeedLimiterOn
    }
}

extension SportCar:CustomStringConvertible {
    var description: String {
        return "Current Sport Car bodyTypes is: \(self.bodyType)" +
               " Current speed is \(self.currentSpeed)" +
               " Current engine type is \(self.engineType)"
    }
    
    
}

var ferrari = SportCar(currentSpeed: 0, bodyType: "SomeBodyType", engineType: "Gas", windowOpened: false, engineIsOn: false, selectedGear: 1, isSpeedLimiterOn: false)
print(ferrari.description)
