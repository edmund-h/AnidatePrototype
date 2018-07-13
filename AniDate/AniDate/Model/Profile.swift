//
//  Profile.swift
//  AniDate
//
//  Created by Edmund Holderbaum on 7/13/18.
//  Copyright © 2018 AniDate. All rights reserved.
//

import Foundation
import UIKit

class Profile {
    var id: String
    var name: String
    var age: Int
    var gender: Gender
    var anime: [String] = []
    var bio: String
    var images: [String : UIImage?] //images keyed to their urls
    var firstImgURL: String
    var firstImg: UIImage?
    
    init (id:String, name: String, age: Int, gender: Gender, bio: String, imgURL: String) {
        self.id = id
        self.name = name
        self.age = age
        self.gender = gender
        self.bio = bio
        self.firstImgURL = imgURL
        self.images = [firstImgURL : nil]
    }
    
    func addImages(urls: [String]) {
        urls.forEach({images[$0] = nil})
    }
}
