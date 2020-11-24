import Foundation
////////////////////////////////////////////////////////////////////////////////////////////////////////
// quadratic equation
// x2 − 8x + 12 = 0
// b*2 - 4ac
let b2 = pow(8, 2)
let discrim = (b2 - 4*(1*12)) // discriminant is more than 0 -> two answers
let discrimInt = (discrim as NSDecimalNumber).doubleValue // Cast Decimal to Double as Decimal doesnt have squareRoot method
let x1 = Int((-8 + discrimInt.squareRoot())/2*1)
let x2 = Int((-8 - discrimInt.squareRoot())/2*1)
print ("First x is \(x1)")
print("Second x is \(x2)")

////////////////////////////////////////////////////////////////////////////////////////////////////////
// Right Triangle Area
let leg1 = 8
let leg2 = 6
let triangleArea = 0.5 * Float(leg1) * Float(leg2)
print ("Area of the triangle is \(Int(triangleArea))")

// Right Triangle Perimetr

let hypotenuse = ((pow(Decimal(leg1), 2) + pow(Decimal(leg2), 2)) as NSDecimalNumber).doubleValue.squareRoot()
let perimetr = leg1 + leg2 + Int(hypotenuse)
print ("Perimetr is \(perimetr)")

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Bank Deposit task

let deposit = 65000
let interestRate = 5
let years = 5

let finalDeposit = ((Double(deposit) * 0.05) * Double(years)) + Double(deposit)
print(finalDeposit)
