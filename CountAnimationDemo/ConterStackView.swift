//
//  ConterStackView.swift
//  CountAnimationDemo
//
//  Created by Lance Hirsch on 5/1/19.
//  Copyright © 2019 Lance Hirsch. All rights reserved.
//

import UIKit

class CounterStackView: UIStackView {
    
    let countingLabel1 = CounterLabel(startValue: 100, endValue: 1500, animationDuration: 5)
    let countingLabel2 = CounterLabel(startValue: 5, endValue: 50, animationDuration: 5)
    let countingLabel3 = CounterLabel(startValue: 1, endValue: 15, animationDuration: 5)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addArrangedSubview(countingLabel1)
        self.addArrangedSubview(countingLabel2)
        self.addArrangedSubview(countingLabel3)
        
        self.axis = .vertical
        self.distribution = .fillEqually
        self.spacing = 32
        self.layoutMargins = UIEdgeInsets(top: 32, left: 32, bottom: 32, right: 32)
        self.isLayoutMarginsRelativeArrangement = true
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

