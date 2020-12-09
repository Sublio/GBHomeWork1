import Foundation

enum CarActions {
    case turnEngineOn
    case turnEngineOff
    case openWindow
    case closeWindow
    
}

struct TrunkCar {
    var brand: String
    var year: Int
    var trunk: Double
    var engineOn: Bool
    var windowsOpened: Bool
    var trunk_filled_space: Double
    
    mutating func perfromAction(action:CarActions){
        switch action {
            case .turnEngineOff:
                self.engineOn = false
            case .turnEngineOn:
                self.engineOn = true
            case .openWindow:
                self.windowsOpened = true
            case . closeWindow:
                self.windowsOpened = false
        }
    }
    
    mutating func loadInTrunk(value:Double){
        self.trunk_filled_space += value
    }
    
    mutating func unloadFromTrunk(value: Double){
        self.trunk_filled_space -= value
    }
}

struct SportCar {
    var brand: String
    var year: Int
    var trunk: Double
    var engineOn: Bool
    var windowsOpened: Bool
    var trunk_filled_space: Double
    
    mutating func loadInTrunk(value:Double){
        self.trunk_filled_space += value
    }
    
    mutating func unloadFromTrunk(value: Double){
        self.trunk_filled_space -= value
    }
    
    mutating func perfromAction(action:CarActions){
        switch action {
            case .turnEngineOff:
                self.engineOn = false
            case .turnEngineOn:
                self.engineOn = true
            case .openWindow:
                self.windowsOpened = true
            case . closeWindow:
                self.windowsOpened = false
        }
    }
}

var bmw = SportCar(brand: "BMW", year: 2000, trunk: 1500, engineOn: false, windowsOpened: false, trunk_filled_space: 0)
var truckCar1 = TrunkCar(brand: "Ford", year: 2020, trunk: 5000, engineOn: false, windowsOpened: false, trunk_filled_space: 0)
var ferrari = SportCar(brand: "Ferrari", year: 2005, trunk: 800, engineOn: false, windowsOpened: false, trunk_filled_space: 0)

bmw.loadInTrunk(value: 200)
print(bmw.trunk_filled_space)

bmw.unloadFromTrunk(value: 200)
print(bmw.trunk_filled_space)
bmw.perfromAction(action: .turnEngineOn)
print(bmw.engineOn)
bmw.perfromAction(action: .openWindow)
print(bmw.windowsOpened)





