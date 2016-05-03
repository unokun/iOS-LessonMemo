//
//  ViewController.swift
//  TransitionSample
//
//  Created by Masaaki Uno on 2015/11/15.
//  Copyright © 2015年 Masaaki Uno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func pressButton(sender: UIButton) {
        self.performSegueWithIdentifier("ToSecond", sender: self)
    }
    @IBAction func viewDidReturn(sender: UIStoryboardSegue) {
        print("ThirdViewControllerから戻ってきた.")
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ToSecond" {
            let secondVC = segue.destinationViewController as! SecondViewController
            secondVC.passedValue = "画面遷移時に値を受け渡せます."
        }
    }

}

