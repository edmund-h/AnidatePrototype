//
//  Swipeable.swift
//  AniDate
//
//  Created by Edmund Holderbaum on 7/13/18.
//  Copyright © 2018 AniDate. All rights reserved.
//
// Special thanks to James Rochabrun, check out his tutorial Tinder Swipeable Card interface here: https://github.com/jamesrochabrun/TinderSwipeProgrammatically

import Foundation
import UIKit

protocol Swipeable {}

extension Swipeable where Self: UIView {
    
    func swipeView(_ pGR: UIPanGestureRecognizer, onSwipe completion: @escaping (SwipeResult)->()) {
        
        switch pGR.state {
        case .changed:
            let translation = pGR.translation(in: self.superview)
            self.transform = CGAffineTransform(translationX: translation.x, y: translation.y)
        case .ended:
            let center = self.frame.origin
            if center.x <= (-1/2) * self.frame.width {
                UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                    self.center.x -= self.frame.width
                    self.alpha = 0
                }, completion: { _ in
                    completion(.like)
                })
            } else if center.x >= (1/2) * self.frame.width {
                UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                self.center.x += self.frame.width
                self.alpha = 0
                }, completion: { _ in
                completion(.pass)
                })
                
            } else if center.y <= (-1/2) * self.frame.height {
                UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut, animations: {
                self.center.y -= self.frame.height
                self.alpha = 0
                }, completion: { _ in
                    completion(.noticeMe)
                })
            } else {
                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 1.0, options: [], animations: {
                    self.transform = .identity
                }, completion: nil)
            }
        default:
            break
        }
        
    }
    
}
