//
//  ViewController.swift
//  AniDate
//
//  Created by Edmund Holderbaum on 7/13/18.
//  Copyright © 2018 AniDate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var passButton: UIButton!
    @IBOutlet weak var noticeMeButton: UIButton!
    @IBOutlet weak var cardStack: UIView!
    @IBOutlet weak var loadArea: UIView!
    @IBOutlet weak var loadIndicator: UIActivityIndicatorView!
    
    var profiles: [ProfileCard] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        makeCard()
        loadArea.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeCard() {
        let card = ProfileCard()
        card.profile = ProfileGenerator.generate(forceF: true)
        profiles.append(card)
        cardStack.constrainToSelf(card)
        if card == profiles[0] {
        card.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(swipeCard(sender:))))
        }
    }
    
    @objc func swipeCard(sender: UIPanGestureRecognizer) {
        let card = profiles[0]
        sender.swipeView(card)
    }
}

