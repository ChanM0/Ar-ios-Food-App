//
//  MenuCollectionViewCell.swift
//  ArApp
//
//  Created by Timothy Brumbaugh on 12/5/18.
//  Copyright © 2018 DreamTeam. All rights reserved.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var featuredImageView: UIImageView!
    @IBOutlet weak var arTransitionLabel: UILabel!
    @IBOutlet weak var backgroundColorView: UIView!
    
    var menu: Menu?{
        didSet{
            self.updateUI()
        }
    }
    
    private func updateUI()
    {
        if let menu = menu {
            featuredImageView.image = menu.featuredImage
            arTransitionLabel.text = menu.title
            backgroundColorView.backgroundColor = menu.color
            
        } else {
            featuredImageView.image = nil
            arTransitionLabel.text = nil
            backgroundColorView.backgroundColor = nil
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius = 3.0
        layer.shadowRadius = 2
        layer.shadowOpacity = 0.8
        layer.shadowOffset = CGSize(width: 5, height: 10)
        self.clipsToBounds = false
    }
    
}
