import Foundation

protocol MainCar {
    var currentSpeed:Int      { get set }
    var bodyType:String       { get set }
    var engineType: String    { get set }
    var windowOpened: Bool    { get set }
    var engineIsOn: Bool      { get set }
    var selectedGear: Int     { get set }
    
    func action(action: CarAction)
    
}

extension MainCar {
    
    mutating func action(action: CarAction) {
        print("Action from protocol extension was caled")
        switch action {
        case .openWindow:
            windowOpened = true
        case .closeWindow:
            self.windowOpened = false
        case .turnEngineOn:
            self.engineIsOn = true
        case .turnEngineOff:
            self.engineIsOn = false
        case .setBodyType(let bodyType):
            self.bodyType = bodyType
        case .setGear(let gear):
            self.selectedGear = gear
        case .setSpeed(let speed):
            self.currentSpeed = speed
        case .setEngineType(let engine):
            self.engineType = engine
        default:
            print("Default case called")
        }
    }
}


enum CarAction {
    case turnEngineOn
    case turnEngineOff
    case openWindow
    case closeWindow
    case setBodyType(bodyType:String)
    case setSpeed(speed:Int)
    case setGear(gear:Int)
    case setEngineType(type: String)
    // Actions for specific car types
    case hookTrailer // For truck
    case turnOnSpeedLimiter // For sport car
}

class SportCar: MainCar {
    func action(action: CarAction) {
        switch action {
            case .turnOnSpeedLimiter:
                self.isSpeedLimiterOn = true
            default:
                print("Default case was called")
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

class trunkCar : MainCar {
    func action(action: CarAction) {
        switch action {
        case .hookTrailer:
            self.isTrailerHooked = true
        default:
            print("Default case was called")
        }
    }
    
    var currentSpeed: Int = 0
    
    var bodyType: String = ""
    
    var engineType: String = ""
    
    var windowOpened: Bool
    
    var engineIsOn: Bool
    
    var selectedGear: Int = 0
    
    var isTrailerHooked:Bool // Specific property for this class
    
    init(currentSpeed: Int, bodyType: String, engineType: String, windowOpened: Bool, engineIsOn: Bool, selectedGear: Int, isTrailerHooked:Bool ) {
        self.currentSpeed = currentSpeed
        self.bodyType = bodyType
        self.engineType = engineType
        self.windowOpened = windowOpened
        self.engineIsOn = engineIsOn
        self.selectedGear = selectedGear
        self.isTrailerHooked = isTrailerHooked
    }
}

extension SportCar:CustomStringConvertible {
    var description: String {
        return "Current Sport Car bodyTypes is: \(self.bodyType)" +
               " Current speed is \(self.currentSpeed)" +
               " Current engine type is \(self.engineType)"
    }
}

extension trunkCar: CustomStringConvertible {
    var description: String {
        return "Current Sport Car bodyTypes is: \(self.bodyType)" +
               " Current speed is \(self.currentSpeed)" +
               " Current engine type is \(self.engineType)"
    }
}

let ferrari = SportCar(currentSpeed: 0, bodyType: "Coupe", engineType: "Gas", windowOpened: false, engineIsOn: false, selectedGear: 1, isSpeedLimiterOn: false)
print(ferrari.description)
ferrari.action(action: .turnOnSpeedLimiter)
print(ferrari.isSpeedLimiterOn)
ferrari.action(action: .openWindow)
print(ferrari.windowOpened)
