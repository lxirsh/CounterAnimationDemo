//
//  CounterLabel.swift
//  CountAnimationDemo
//
//  Created by Lance Hirsch on 5/1/19.
//  Copyright © 2019 Lance Hirsch. All rights reserved.
//

import UIKit

class CounterLabel: UILabel {
    
    fileprivate let startValue: Double
    fileprivate var displayLink: CADisplayLink?
    fileprivate let endValue: Double
    fileprivate let animationDuration: Double
    fileprivate let animationStartDate = Date()

    init(startValue: Double, endValue: Double, animationDuration: Double) {
        self.startValue = startValue
        self.endValue = endValue
        self.animationDuration = animationDuration
        
        super.init(frame: .zero)
        
        self.backgroundColor = .white
//        self.layer.cornerRadius = 5
//        self.layer.masksToBounds = true
        
        text = startValue.description
        textAlignment = .center
        font = UIFont.monospacedDigitSystemFont(ofSize: 20, weight: .bold)

        displayLink = CADisplayLink(target: self, selector: #selector(handleUpdate))
        displayLink?.add(to: .main, forMode: .default)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc fileprivate func handleUpdate() {
        let now = Date()
        let elapsedTime = now.timeIntervalSince(animationStartDate)
        
        if elapsedTime > animationDuration {
            text = String(format: "%.0f", endValue)
            displayLink?.invalidate()
            displayLink = nil
        } else {
            let percentage = elapsedTime / animationDuration
            let value = startValue + percentage * (endValue - startValue)
            text = String(format: "%.0f", value)
        }
    }

}
