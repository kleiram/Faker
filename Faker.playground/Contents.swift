//: Playground - noun: a place where people can play

import Faker

let avatar    = UIImage.avatar()
let imageView = UIImageView(image: avatar)
imageView.layer.cornerRadius = (avatar?.size.width)! / 4
imageView.clipsToBounds      = true
