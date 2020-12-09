import Foundation

protocol Car {
    var currentSpeed:Int    { get set }
    var bodyType:String     { get set }
    var engineType: String  { get set }
    var trailerIsHooked: Bool { get set }
    
    func action(action: CarActions)
    
}

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
