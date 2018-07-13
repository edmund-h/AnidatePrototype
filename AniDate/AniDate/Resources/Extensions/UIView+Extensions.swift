//
//  UIView+Extensions.swift
//  AniDate
//
//  Created by Edmund Holderbaum on 6/10/18.
//  Copyright © 2018 AniDate. All rights reserved.
//

import UIKit

extension UIView {
    
    func constrainToSelf(_ view: UIView) {
        //I refactor these commonly used constraints out into an extension to make programmatic setup as dry as possible
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        view.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
    
}
