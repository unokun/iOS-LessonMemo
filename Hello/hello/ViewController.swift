//
//  ViewController.swift
//  hello
//
//  Created by Masaaki Uno on 2015/11/08.
//  Copyright © 2015年 Masaaki Uno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let BTN_POST = 1
    let TF_INPUT = 2
    

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    // 追加
    // ここから
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func didEditChanged(sender: AnyObject) {
        label.text = textField.text
//        print(textField.text)
        
    }
    // ここまで
    
    @IBAction func sayHello(sender: AnyObject) {
        // ラベルにTextFieldの値を追加
//        label.text = "こんにちは"
        if sender.tag == BTN_POST {
            label.text = textField.text
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

