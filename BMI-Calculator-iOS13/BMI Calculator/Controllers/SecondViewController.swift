//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Navi Malhotra on 2023-03-28.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 200, height: 80)
        
        view.addSubview(label)
    }
    
}
