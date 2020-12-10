protocol Car    {
    var speed: Int { get }
    var bodyType: String { get }
    var windowOpened:Bool { get set }
    var isEngineOn: Bool { get set }
}

extension Car{
    mutating func openWindow(){
        self.windowOpened = true
    }
    
    mutating func closeWindow(){
        self.windowOpened = false
    }
    
    mutating func startEngine(){
        self.isEngineOn = true
    }
    
    mutating func stopEngine(){
        self.isEngineOn = false
    }
}

class SportCar: Car {
    var isEngineOn: Bool
    var windowOpened: Bool
    var speed: Int
    var bodyType: String
    var speedLimiterEnabled: Bool // Property for sportCar only
    
    init(speed: Int, bodyType:String, windowOpened: Bool, isEngineOn: Bool, speedLimiterEnabled: Bool){
        self.speed = speed
        self.bodyType = bodyType
        self.windowOpened = windowOpened
        self.isEngineOn = isEngineOn
        self.speedLimiterEnabled = speedLimiterEnabled
    }
}

class TrunkCar: Car {
    var isEngineOn: Bool
    var windowOpened: Bool
    var speed: Int
    var bodyType: String
    var isTowed: Bool // Property for TrunkCar only
    
    init(speed: Int, bodyType:String, windowOpened: Bool, isEngineOn: Bool, isTowed: Bool){
        self.speed = speed
        self.bodyType = bodyType
        self.windowOpened = windowOpened
        self.isEngineOn = isEngineOn
        self.isTowed = isTowed
    }
}

extension SportCar : CustomStringConvertible {
    var description: String {
        return "Sport Car extension called"
    }
}

extension TrunkCar : CustomStringConvertible {
    var description: String {
        return "Trunk Car extension called"
    }
}


var ferrari = SportCar(speed: 300, bodyType: "Coupe", windowOpened: false, isEngineOn: false, speedLimiterEnabled: true)
ferrari.openWindow()
ferrari.windowOpened
let s = String(describing: ferrari)
print (s)

var truck = TrunkCar(speed: 20, bodyType: "Pickup", windowOpened: false, isEngineOn: true, isTowed: true)
print(truck.bodyType)
truck.openWindow()
truck.windowOpened
truck.closeWindow()
truck.windowOpened
let truckDescription = String(describing: truck)
print(truckDescription)


