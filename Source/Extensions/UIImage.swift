// UIImage.swift
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

import UIKit

public extension UIImage {
    public enum Category : String {
        case Abstract = "abstract"
        case Animals = "animals"
        case Business = "business"
        case Cats = "cats"
        case City = "city"
        case Food = "food"
        case Nightlife = "nightlife"
        case Fashion = "fashion"
        case People = "people"
        case Nature = "nature"
        case Sports = "sports"
        case Technics = "technics"
        case Transport = "transport"
    }

    /**
        Return a random image of the given `width` and `height` from a
        certain category.

        - parameter width:    The width of the image to create.
        - parameter height:   The height of the image to create.
        - parameter category: A category from which to pick an image.

        - returns: Returns a random image.
    */
    public static func random(
        width : Int = 640,
        height : Int = 480,
        category : Category? = nil
    ) -> UIImage? {
        var url = "http://lorempixel.com/\(width)/\(height)/"
        
        if (category != nil) {
            url += "\(category!.rawValue)"
        }
        
        url += "?\(Int.number(5))"
        
        if let URL = URL(string: url) {
            if let data = try? Data(contentsOf: URL) {
                return UIImage(data: data)
            }
        }
        
        return nil
    }
    
    /**
        Return a random avatar of the give `size` for a given `username`.

        - note: The avatar is guaranteed to be the same for the same username.

        - parameter username: The username to generate the avatar for.
        - parameter size:     The size (in pixels) of the avatar (both height
                              and width).
        
        - returns: Returns a random avatar.
    */
    public static func avatar(
        _ username : String? = nil,
        size : Int = 256
    ) -> UIImage? {
        let user   = username != nil ? username! : Internet.username()
        let pixels = size > 400 ? 400 : size
        let url    = "http://api.adorable.io/avatars/\(pixels)/\(user)"
        
        if let URL = URL(string: url) {
            if let data = try? Data(contentsOf: URL) {
                return UIImage(data: data)
            }
        }
        
        return nil
    }
}
