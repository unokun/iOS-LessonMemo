//
//  SecondViewController.swift
//  TransitionSample
//
//  Created by Masaaki Uno on 2015/11/15.
//  Copyright © 2015年 Masaaki Uno. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var passedValue: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let value = passedValue {
            print("受け取った文字列は、「\(value)」")
        }
    }
    
    @IBAction func pressButton(sender: UIButton) {
        self.performSegueWithIdentifier("ToThird", sender: self)
        
    }
}