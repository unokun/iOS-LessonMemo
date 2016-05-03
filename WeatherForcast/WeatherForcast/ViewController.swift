//
//  ViewController.swift
//  WeatherForcast
//
//  Created by Masaaki Uno on 2015/11/14.
//  Copyright © 2015年 Masaaki Uno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 行間を広げる
        let style = NSMutableParagraphStyle()
        style.lineSpacing = 10
        let attributes = [NSParagraphStyleAttributeName : style]
        textView.attributedText = NSAttributedString(string: textView.text, attributes: attributes)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

