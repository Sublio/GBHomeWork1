import UIKit
// quadratic equation
// x2 − 8x + 12 = 0
// b*2 - 4ac
let b2 = pow(8, 2)
let discrim = (b2 - 4*(1*12)) // discriminant is more than 0 -> two answers
let discrimInt = (discrim as NSDecimalNumber).doubleValue // Cast Decimal to Double as Decimal doesnt have squareRoot method
let x1 = (-8 + discrimInt.squareRoot())/2*1
let x2 = (-8 - discrimInt.squareRoot())/2*1
