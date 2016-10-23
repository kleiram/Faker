// Double.swift
//
// Copyright (c) 2014–2015 Apostle (http://apostle.nl)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Foundation

public extension Double {
    /**
        Return a random double with `decimals` decimals between `min` and `max`.
    
        - parameter decimals: The number of decimals the number should have.
        - parameter min:      The minimum value of the returned value.
        - parameter max:      The maximum value of the returned value.

        - returns: Returns a random double with `decimals` decimals between `min` and `max`.
    */
    public static func random(_ decimals : Int? = nil, min : Double = 0, max : Double? = nil) -> Double {
        let digits  = decimals != nil ? decimals! : Int.random(min: 1, max: 9)
        var maximum = max != nil ? max! : Double(Int.number())
        var minimum = min
        
        if (minimum > maximum) {
            let tmp = minimum
            minimum = maximum
            maximum = tmp
        }
        
        let result = minimum + Double(Int.random()) / Double(UInt32.max) * (maximum + minimum)
        
        return result.decimals(digits)
    }
    
    /**
        Round the value to the given number of decimals.
        
        - parameter decimals: The number of decimals to round the value to.
        
        - returns: Returns the value rounded to the given number of decimals.
    */
    public func decimals(_ decimals : Int) -> Double {
        let multiplier = pow(10, Double(decimals))

        return (self * multiplier).rounded() / multiplier
    }
}
