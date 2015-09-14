// String.swift
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

public extension String {
    /**
        Return a shuffled version of the string.

        The string is shuffled using the
        [Fisher-Yates algorithm](https://en.wikipedia.org/wiki/Fisher–Yates_shuffle).

        - returns: Returns a Fisher-Yates shuffled version of the string.
    */
    public func shuffle() -> String {
        return String(Array(self.characters).shuffled())
    }
    
    /**
        Numerify the string.

        Replaces all `#` and `%` signs with numbers between `[0,9]` and `[1,9]`
        respectively.

        - returns: Returns a string in which all `#` and `%` signs are replaced
                   with numbers between `[0,9]` and `[1,9]` respectively.
     */
    public func numerify() -> String {
        return characters.map {
            switch $0 {
            case "#": return String(Int.random(0, max: 9))
            case "%": return String(Int.random(1, max: 9))
            default:  return String($0)
            }
        }.joinWithSeparator("")
    }
    
    /**
        Lexify the string.

        Replaces all `?` and `*` signs with a random letter and ASCII character
        respectively.

        - returns: Returns a string in which all `?` and `*` signs are replaced
                   with a random letter between `a` and `z` and a random ASCII
                   character respectively.
    */
    public func lexify() -> String {
        return characters.map {
            switch $0 {
            case "?": return String(Character.randomLetter())
            case "*": return String(Character.randomAscii())
            default:  return String($0)
            }
        }.joinWithSeparator("")
    }
    
    /**
        Split the string into an array of string seperated by the given
        `separator`.

        - parameter separator: The separator that is used to separate the string.

        - returns: Returns an array of strings.
    */
    public func split(separator : String) -> [String] {
        return componentsSeparatedByString(separator)
    }
}
