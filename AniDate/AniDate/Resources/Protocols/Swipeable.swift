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

extension Swipeable where Self: UIPanGestureRecognizer {
    
    func swipeView(_ view: UIView) {
        
        switch state {
        case .changed:
            let translation = self.translation(in: view.superview)
            view.transform = CGAffineTransform(translationX: translation.x, y: translation.y)
        case .ended:
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 1.0, options: [], animations: {
                view.transform = .identity
            }, completion: nil)
        default:
            break
        }
        
    }
    
}

extension UIPanGestureRecognizer: Swipeable {}
