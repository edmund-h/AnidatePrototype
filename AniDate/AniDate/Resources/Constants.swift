//
//  Constants.swift
//  AniDate
//
//  Created by Edmund Holderbaum on 7/13/18.
//  Copyright © 2018 AniDate. All rights reserved.
//

import Foundation

final class Constants {
    //Numerical Constants
    static let profilesToLoad = 10
    
    //Xib Names
    static let profileCardName = "ProfileCard"
}

extension Profile {
    static let idKey = "id"
    static let nameKey = "name"
    static let ageKey = "age"
    static let genderKey = "gender"
    static let animeKey = "anime"
    static let bioKey = "bio"
    static let imagesKey = "images"
    static let firstImgURLKey = "firstImgURL"
    static let firstImgKey = "firstImg"
}

extension ProfileGenerator {
    static let maleNames = ["Bob", "Takashi", "Jake", "Domingo", "Max", "Ed", "Tyrone", "Benny"]
    static let femaleNames = ["Jane", "Lana", "Maria", "Tomoko", "Courtney", "Hina", "Jenny"]
    static let animeTitles = ["Naruto", "Dragonball Z", "Fate/Zero", "Neon Genesis Evangelion", "Attack on Titan", "Yuri on Ice", "Fruits Basket", "Madoka Magica", "Hunter X Hunter", "Yu Gi Oh", "CardCaptor Sakura", "Code Geass", "Death Note", "Urusei Yatsura", "Mobile Suit Gundam", "Ranma 1/2", "Slayers", "Fist of the North Star", "FLCL"]
    static let bioPhrases = ["Looking for someone to go to cons with. ", "I like eating ramen and drinking sake. ", "Message me if ur supa supa kawaii! ", "OwO ", "rawwrrrr XD ", "<3 <3 <3 ", "I'm really into cosplay. ", "Only swipe right if we have anime in common. ", "It's not like I like you or anything... ", "^_______^ ", "Ask me about my Doujin collection! ", "I do fanArt commissions for my favorite anime. ", "I have over 1500 manga, and I've lived in Japan-- yes I'm a REAL OTAKU. ", "I love my collection of replica Kitanas and Wakizashis. ", "Looking for a replacement for my body pillow... " ]
}
