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
        
        let animationDuration: Double = 2
        
        let exerciseLabel = CounterLabel(startValue: 0, endValue: 9, animationDuration: animationDuration)
        let timeLabel = CounterLabel(startValue: 0, endValue: 90, animationDuration: animationDuration)
        let caloriesBurned = CounterLabel(startValue: 0, endValue: 1260, animationDuration: animationDuration)
        
        
        let view1 = CounterView(counterLabel: exerciseLabel, description: "Miles", iconImage: UIImage(named: "icons8-exercise-filled-50")!)
        let view2 = CounterView(counterLabel: timeLabel, description: "Minutes", iconImage: UIImage(named: "icons8-clock-filled-50")!)
        let view3 = CounterView(counterLabel: caloriesBurned, description: "Calories Burned", iconImage: UIImage(named: "icons8-calories-filled-50")!)

        
        let stackView = CounterStackView(views: view1, view2, view3)
        view.addSubview(stackView)
        stackView.frame = view.frame
        
    }
}

