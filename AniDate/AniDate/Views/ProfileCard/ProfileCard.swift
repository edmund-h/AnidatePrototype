//
//  ProfileCard.swift
//  AniDate
//
//  Created by Edmund Holderbaum on 7/13/18.
//  Copyright © 2018 AniDate. All rights reserved.
//

import UIKit

class ProfileCard: UIView {

    @IBOutlet weak var contentArea: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameAgeLabel: UILabel!
    @IBOutlet weak var animesLabel: UILabel!
    @IBOutlet weak var bio: UITextView!
    
    var profile: Profile? {
        didSet {
            guard let profile = profile else {return}
            nameAgeLabel.text = profile.name + ", " + String(profile.age)
            bio.text = profile.bio
            animesLabel.text = profile.anime.joined(separator: ", ")
            imageView.image = #imageLiteral(resourceName: "konata")
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        // view logic goes here
        Bundle.main.loadNibNamed(Constants.profileCardName, owner: self, options: nil)
        
        self.constrainToSelf(contentArea)
    }

}
