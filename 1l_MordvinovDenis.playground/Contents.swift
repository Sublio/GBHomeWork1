import Foundation
////////////////////////////////////////////////////////////////////////////////////////////////////////
// quadratic equation
// x2 − 8x + 12 = 0
// b*2 - 4ac
let b2 = pow(8, 2)
let discrim = (b2 - 4*(1*12)) // discriminant is more than 0 -> two answers
let discrimInt = (discrim as NSDecimalNumber).doubleValue // Cast Decimal to Double as Decimal doesnt have squareRoot method
let x1 = (-8 + discrimInt.squareRoot())/2*1
let x2 = (-8 - discrimInt.squareRoot())/2*1

////////////////////////////////////////////////////////////////////////////////////////////////////////
// Right Triangle Area
let leg1 = 8
let leg2 = 6
let triangleArea = 0.5 * Float(leg1) * Float(leg2)

// Right Triangle Perimetr

let hypotenuse = ((pow(Decimal(leg1), 2) + pow(Decimal(leg2), 2)) as NSDecimalNumber).doubleValue.squareRoot()
let perimetr = leg1 + leg2 + Int(hypotenuse)
