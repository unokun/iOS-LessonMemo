//
//  DetailViewController.swift
//  TableSample
//
//  Created by Masaaki Uno on 2015/11/16.
//  Copyright © 2015年 Masaaki Uno. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var selectedImg: UIImage!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = selectedImg
    }


    @IBAction func buttonDidPressed(sender: UIButton) {
        print("Back Button pressed.")
        self.performSegueWithIdentifier("BackToParent", sender: self);
    }
/*
    @IBAction func buttonDidPressed(sender: UIButton) {
        print("Back Button pressed.")
        self.performSegueWithIdentifier("BackToParent", sender: self);
    }
*/
}
