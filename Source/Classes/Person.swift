// Person.swift
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

open class Person {
    // MARK: Enums
    public enum Gender {
        case male
        case female
        
        static func sample() -> Gender {
            return [Gender.male,Gender.female].random()!
        }
    }
    
    // MARK: Provider
    
    open class Provider {
        public init() {
            // noop
        }
        
        open func titleFormats() -> [String] {
            return [
                Person.maleTitle(),
                Person.femaleTitle(),
            ]
        }
        
        open func firstNameFormats() -> [String] {
            return [
                Person.maleFirstName(),
                Person.femaleFirstName(),
            ]
        }
        
        open func maleNameFormats() -> [String] {
            return [
                "\(Person.maleFirstName()) \(Person.lastName())",
            ]
        }
        
        open func femaleNameFormats() -> [String] {
            return [
                "\(Person.femaleFirstName()) \(Person.lastName())"
            ]
        }
        
        open func lastNames() -> [String] {
            return [ "Doe" ]
        }
        
        open func maleFirstNames() -> [String] {
            return [ "John" ]
        }
        
        open func maleTitles() -> [String] {
            return [ "Mr.", "Dr.", "Prof." ]
        }
        
        open func femaleFirstNames() -> [String] {
            return [ "Jane" ]
        }
        
        open func femaleTitles() -> [String] {
            return [ "Mrs.", "Ms.", "Miss", "Dr.", "Prof." ]
        }
    }
    
    // MARK: Variables
    
    open static var provider : Provider?
    
    // MARK: Generators
    
    /**
        Generate a random name for a person of the given gender.
    
        - parameter gender: The gender of the person to generate the name for.

        - returns: Returns a random name for a person of the given gender.
    */
    open class func name(_ gender : Gender? = nil) -> String {
        switch gender ?? Gender.sample() {
        case .male: return dataProvider().maleNameFormats().random()!
        case .female: return dataProvider().femaleNameFormats().random()!
        }
    }
    
    /**
        Generate a random first name for a person of the given gender.

        - parameter gender: The gender of the person to generate the first name
                            for.

        - returns: Returns a random first name for a person of the given gender.
    */
    open class func firstName(_ gender : Gender? = nil) -> String {
        switch gender ?? Gender.sample() {
        case .male: return maleFirstName()
        case .female: return femaleFirstName()
        }
    }
    
    /**
        Generate a random last name.

        - returns: Returns a random last name.
    */
    open class func lastName() -> String {
        return dataProvider().lastNames().random()!
    }
    
    /**
        Generate a random title for a person of the given gender.

        - parameter gender: The gender of the person to generate the title for.
        
        - returns: Returns a random title for a person of the given gender.
    */
    open class func title(_ gender : Gender? = nil) -> String {
        switch gender ?? Gender.sample() {
        case .male: return maleTitle()
        case .female: return femaleTitle()
        }
    }
    
    /**
        Generate a random title for a male person.

        - returns: Returns a random title for a male person.
    */
    open class func maleTitle() -> String {
        return dataProvider().maleTitles().random()!
    }
    
    /**
        Generate a random male first name.

        - returns: Returns a random male first name.
    */
    open class func maleFirstName() -> String {
        return dataProvider().maleFirstNames().random()!
    }
    
    /**
        Generate a random title for a female person.

        - returns: Returns a random title for a female person.
    */
    open class func femaleTitle() -> String {
        return dataProvider().femaleTitles().random()!
    }
    
    /**
        Generate a random female first name.
    
        - returns: Returns a random female first name.
    */
    open class func femaleFirstName() -> String {
        return dataProvider().femaleFirstNames().random()!
    }
    
    fileprivate class func dataProvider() -> Provider {
        return provider ?? Provider()
    }
}
