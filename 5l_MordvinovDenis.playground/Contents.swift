import Foundation

enum CarActions {
    case turnEngineOn
    case turnEngineOff
    case openWindow
    case closeWindow
    case setBodyType
    case setSpeed(speed:Int)
    case setGear(gear:Int)
    // Actions for specific car types
    case hookTrailer // For truck
    case turnOnSpeedLimiter // For sport car
    
}


class Car {
    var currentSpeed = 0
    var bodyType = ""
    var gear = 0
    var gearBoxAutomatic = false
    var engineType = ""
    var windowOpened: Bool?
    var isEngineOn: Bool?
    
    func action(action:CarActions){
        switch action {
        case .closeWindow:
            self.windowOpened = false
        case .setSpeed(let speed):
            self.currentSpeed = speed
        case .setGear(let gear):
            self.gear = gear
        case .openWindow:
            self.windowOpened = true
        case .turnEngineOn:
            self.isEngineOn = true
        case .turnEngineOff:
            self.isEngineOn = false
        default:
            print ("Default case called")
        }
    }
}

class TrunkCar : Car {
    var trunkValue:Int?
    var isTrailerHooked: Bool?
    
    override func action(action:CarActions) {
        super.action(action: action)
        switch action {
            case .hookTrailer:
                self.isTrailerHooked = true
            case .setBodyType:
                self.bodyType = "truck"
            default:
                print("Default case called")
        }
    }
}

class SportCar: Car {
    var isSpeedLimiterOn = false
    
    override func action(action: CarActions) {
        super.action(action: action)
        switch action {
            case .turnOnSpeedLimiter:
                self.isSpeedLimiterOn = true
            default:
                print("Default case called")
        }
    }
}
