//
//  ThirdViewController.swift
//  TransitionSample
//
//  Created by Masaaki Uno on 2015/11/15.
//  Copyright © 2015年 Masaaki Uno. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBAction func pressButton(sender: UIButton) {
        self.performSegueWithIdentifier("BackToFirst", sender: self)
//        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
}