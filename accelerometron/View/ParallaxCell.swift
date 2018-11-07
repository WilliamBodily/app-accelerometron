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
        setupParallax()
    }
    
    func configureCell(withImage image: UIImage, andDescription desc: String) {
        cellImage.image = image
        label.text = desc
    }
    
    func setupParallax() {
        let min = CGFloat(-30)
        let max = CGFloat(30)
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion, yMotion]
        
        cellImage.addMotionEffect(motionEffectGroup)
    }

}
