//
//  ProfileGenerator.swift
//  AniDate
//
//  Created by Edmund Holderbaum on 7/13/18.
//  Copyright © 2018 AniDate. All rights reserved.
//

import Foundation

class ProfileGenerator {
    
    static var profileNums = 0
    
    static func generate(forceF: Bool)-> Profile {
        let ageNum = Int(arc4random() % 22 + 18)
        var nameNum: Int
        var name: String
        var gender: Gender
        var genderGen: UInt32 = 2
        if !forceF {genderGen = arc4random_uniform(20) + 1}
        if genderGen == 1 || genderGen == 20 {
            gender = .neutral
            let names = maleNames + femaleNames
            nameNum = Int(arc4random_uniform(UInt32(names.count)))
            name = names[nameNum]
        } else if genderGen % 2 == 0 {
            gender = .femme
            nameNum = Int(arc4random_uniform(UInt32(femaleNames.count)))
            name = femaleNames[nameNum]
        } else {
            gender = .masc
            nameNum = Int(arc4random_uniform(UInt32(maleNames.count)))
            name = maleNames[nameNum]
        }
        var usablePhrases: [String?] = bioPhrases
        var bio: String = ""
        for _ in 0...3 {
            var phrase = Int(arc4random_uniform(UInt32(usablePhrases.count)))
            while usablePhrases[phrase] == nil {
                phrase = Int(arc4random_uniform(UInt32(usablePhrases.count)))
            }
            if let text = usablePhrases[phrase] {
                bio += text
                usablePhrases[phrase] = nil
            }
        }
        var usableShows: [String?] = animeTitles
        var anime: [String] = []
        for _ in 0...3 {
            var show = Int(arc4random_uniform(UInt32(usableShows.count)))
            while usableShows[show] == nil {
                show = Int(arc4random_uniform(UInt32(usableShows.count)))
            }
            if let text = usableShows[show] {
                anime.append(text)
                usableShows[show] = nil
            }
        }
        let id = String(profileNums)
        profileNums += 1
        
        let output = Profile(id: id, name: name, age: ageNum, gender: gender, bio: bio, imgURL: "")
        output.anime = anime
        return output
    }
}
