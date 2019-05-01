//
//  CounterView.swift
//  CountAnimationDemo
//
//  Created by Lance Hirsch on 5/1/19.
//  Copyright © 2019 Lance Hirsch. All rights reserved.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({addSubview($0)})
    }
}

class CounterView: UIView {
    
    let counterLabel: CounterLabel
    
    let iconImage: UIImage
    let iconImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        return iv
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textAlignment = .center
        return label
    }()
    
    init(counterLabel: CounterLabel, description: String, iconImage: UIImage) {
        
        self.counterLabel = counterLabel
        self.iconImage = iconImage
        
        super.init(frame: .zero)
        backgroundColor = .white

        iconImageView.image = iconImage
        descriptionLabel.text = description
        
        self.layer.cornerRadius = 5
        self.layer.masksToBounds = true
        
        addSubviews(counterLabel, descriptionLabel, iconImageView)
        counterLabel.translatesAutoresizingMaskIntoConstraints = false
        counterLabel.topAnchor.constraint(equalTo: topAnchor)
        counterLabel.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        counterLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.4).isActive = true
        
        descriptionLabel.text = description
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.topAnchor.constraint(equalTo: counterLabel.bottomAnchor).isActive = true
        descriptionLabel.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        descriptionLabel.bottomAnchor.constraint(equalTo: iconImageView.topAnchor)
        
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        iconImageView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 32).isActive = true
        iconImageView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        iconImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -32).isActive = true

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
