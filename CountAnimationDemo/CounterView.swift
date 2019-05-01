//
//  CounterView.swift
//  CountAnimationDemo
//
//  Created by Lance Hirsch on 5/1/19.
//  Copyright © 2019 Lance Hirsch. All rights reserved.
//

import UIKit

class CounterView: UIView {
    
    let counterLabel: CounterLabel
    let iconImage: UIImage
    let iconImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        return iv
    }()
    
    init(counterLabel: CounterLabel, iconImage: UIImage) {
        
        self.counterLabel = counterLabel
        self.iconImage = iconImage
        
        super.init(frame: .zero)
        backgroundColor = .white

        iconImageView.image = iconImage
        
        self.layer.cornerRadius = 5
        self.layer.masksToBounds = true
        
        addSubview(counterLabel)
        addSubview(iconImageView)
        counterLabel.translatesAutoresizingMaskIntoConstraints = false
        counterLabel.topAnchor.constraint(equalTo: topAnchor)
        counterLabel.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        counterLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        iconImageView.topAnchor.constraint(equalTo: counterLabel.bottomAnchor).isActive = true
        iconImageView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        iconImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
