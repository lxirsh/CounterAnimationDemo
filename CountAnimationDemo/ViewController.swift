//
//  ViewController.swift
//  CountAnimationDemo
//
//  Created by Lance Hirsch on 5/1/19.
//  Copyright © 2019 Lance Hirsch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var displayLink: CADisplayLink?
    
    var startValue: Double = 100
    let endValue: Double = 1000
    let animationDuration = 3.5
    
    let animationStartDate = Date()
    
    let countingLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.monospacedDigitSystemFont(ofSize: 20, weight: .bold)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(countingLabel)
        countingLabel.frame = view.bounds
        
        displayLink = CADisplayLink(target: self, selector: #selector(handleUpdate))
        displayLink?.add(to: .main, forMode: .default)
    }

    @objc func handleUpdate() {
        let now = Date()
        let elapsedTime = now.timeIntervalSince(animationStartDate)
        
        if elapsedTime > animationDuration {
            countingLabel.text = String(format: "%.0f", endValue)
            displayLink?.invalidate()
            displayLink = nil
        } else {
            let percentage = elapsedTime / animationDuration
            let value = startValue + percentage * (endValue - startValue)
            self.countingLabel.text = String(format: "%.0f", value)
        }
    }
}

