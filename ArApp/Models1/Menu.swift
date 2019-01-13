//
//  Interest.swift
//  Interests
//
//  Created by Duc Tran on 6/13/15.
//  Copyright © 2015 Developer Inspirus. All rights reserved.
//

import UIKit

class Menu
{
    // MARK: - Public API
    var title = ""
    var featuredImage: UIImage
    var color: UIColor
    
    init(title: String, featuredImage: UIImage, color: UIColor)
    {
        self.title = title
        self.featuredImage = featuredImage
        self.color = color
    }
    
    // MARK: - Private
    // dummy data
    static func fetchMenus() -> [Menu]
    {
        return [
            Menu(title: "Test AR", featuredImage: UIImage(named: "wheelbarrow.jpg")!, color: UIColor(red: 63/255.0, green: 71/255.0, blue: 80/255.0, alpha: 0.8)),
            Menu(title: "Test AR", featuredImage: UIImage(named: "wateringcan.jpg")!, color: UIColor(red: 240/255.0, green: 133/255.0, blue: 91/255.0, alpha: 0.8)),
            Menu(title: "Test AR", featuredImage: UIImage(named: "teapot.jpg")!, color: UIColor(red: 105/255.0, green: 80/255.0, blue: 227/255.0, alpha: 0.8)),
            Menu(title: "Test AR", featuredImage: UIImage(named: "gramophone.jpg")!, color: UIColor(red: 102/255.0, green: 102/255.0, blue: 102/255.0, alpha: 0.8)),
            
            Menu(title: "Test AR", featuredImage: UIImage(named: "cupandsaucer.jpg")!, color: UIColor(red: 245/255.0, green: 62/255.0, blue: 40/255.0, alpha: 0.8)),
            Menu(title: "Test AR", featuredImage: UIImage(named: "redchair.jpg")!, color: UIColor(red: 103/255.0, green: 217/255.0, blue: 87/255.0, alpha: 0.8)),
            Menu(title: "Test AR", featuredImage: UIImage(named: "tulip.jpg")!, color: UIColor(red: 63/255.0, green: 71/255.0, blue: 80/255.0, alpha: 0.8)),
            Menu(title: "Test AR", featuredImage: UIImage(named: "plantpot.jpg")!, color: UIColor(red: 240/255.0, green: 133/255.0, blue: 91/255.0, alpha: 0.8)),
        ]
    }
}
