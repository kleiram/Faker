// Company.swift
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

open class Company {
    // MARK: Provider
    
    open class Provider {
        public init() {
            // noop
        }
        
        func formats() -> [String] {
            return [
                "\(Person.lastName()) \(Company.companySuffix())"
            ]
        }
        
        func suffixes() -> [String] {
            return [ "Ltd." ]
        }
    }
    
    // MARK: Variables
    
    open static var provider : Provider?
    
    // MARK: Generators
    
    /**
        Generate a random company name.

        - returns: Returns a random company name.
    */
    open class func company() -> String {
        return dataProvider().formats().random()!
    }
    
    /**
        Generate a random company suffix.

        - returns: Returns a random company suffix.
    */
    open class func companySuffix() -> String {
        return dataProvider().suffixes().random()!
    }
    
    fileprivate class func dataProvider() -> Provider {
        return provider ?? Provider()
    }
}
