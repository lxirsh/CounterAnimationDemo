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
        
        let stackView = CounterStackView()
        view.addSubview(stackView)
        stackView.frame = view.frame
        
    }
}

