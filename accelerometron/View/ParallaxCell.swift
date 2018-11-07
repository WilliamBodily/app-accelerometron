//
//  ParallaxCell.swift
//  accelerometron
//
//  Created by William Bodily on 11/6/18.
//  Copyright © 2018 William Bodily. All rights reserved.
//

import UIKit

class ParallaxCell: UITableViewCell {

    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // set up our parallax code later
    }
    
    func configureCell(withImage image: UIImage, andDescription desc: String) {
        cellImage.image = image
        label.text = desc
    }
    
    func setupParallax() {
        
    }

}
