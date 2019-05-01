//
//  ViewController.swift
//  CountAnimationDemo
//
//  Created by Lance Hirsch on 5/1/19.
//  Copyright © 2019 Lance Hirsch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        let counterLabel1 = CounterLabel(startValue: 100, endValue: 1500, animationDuration: 5)
        let counterLabel2 = CounterLabel(startValue: 5, endValue: 50, animationDuration: 5)
        let counterLabel3 = CounterLabel(startValue: 1, endValue: 15, animationDuration: 5)
        
        
        let view1 = CounterView(counterLabel: counterLabel1, iconImage: UIImage(named: "icons8-exercise-filled-50")!)
        let view2 = CounterView(counterLabel: counterLabel2, iconImage: UIImage(named: "icons8-clock-filled-50")!)
        let view3 = CounterView(counterLabel: counterLabel3, iconImage: UIImage(named: "icons8-calories-filled-50")!)

        
        let stackView = CounterStackView(views: view1, view2, view3)
        view.addSubview(stackView)
        stackView.frame = view.frame
        
    }
}

