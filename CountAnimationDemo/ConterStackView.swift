//
//  ConterStackView.swift
//  CountAnimationDemo
//
//  Created by Lance Hirsch on 5/1/19.
//  Copyright © 2019 Lance Hirsch. All rights reserved.
//

import UIKit

extension UIStackView {
    func addArrangedSubviews(_ views: UIView...) {
        views.forEach({addArrangedSubview($0)})
    }
}

class CounterStackView: UIStackView {
    
    init(views: UIView...) {
        super.init(frame: .zero)
        
        views.forEach({addArrangedSubview($0)})
        
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

