//
//  Notifications.swift
//  AniDate
//
//  Created by Edmund Holderbaum on 7/13/18.
//  Copyright © 2018 AniDate. All rights reserved.
//

import Foundation

final class Notifications {
    
    static let center = NotificationCenter.default
    
    static func postTo(_ message: Message, with object: Any? = nil) {
        let name = nameFor(message)
        center.post(name: name, object: object)
    }
    
    static func nameFor(_ message: Message)-> Notification.Name {
        return Notification.Name.init(message.rawValue)
    }
    
    enum Message: String {
        case swipeOnPhoto = "SwipeOnPhoto"
    }
    
}
