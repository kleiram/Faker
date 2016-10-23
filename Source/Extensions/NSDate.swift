// NSDate.swift
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

public extension Date {
    /**
        Generate a random date and time between two time intervals.

        - parameter min: The minimum timestamp (since 1970).
        - parameter max: The maximum timestamp (since 1970).
    
        - returns: Returns a random date and time between two time intervals.
    */
    public static func random(min : TimeInterval? = nil, max : TimeInterval? = nil) -> Date {
        var minimum = min != nil ? Int(min!) : Int.random()
        var maximum = max != nil ? Int(max!) : Int.random()
        
        if (minimum > maximum) {
            let tmp = minimum
            minimum = maximum
            maximum = tmp
        }
        
        return Date(timeIntervalSince1970: TimeInterval(Int.random(min: minimum, max: maximum)))
    }
}
