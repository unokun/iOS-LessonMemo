//
//  ViewController.swift
//  SNS
//
//  Created by Masaaki Uno on 2015/11/12.
//  Copyright © 2015年 Masaaki Uno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBAction func showActivityView(sender: UIBarButtonItem) {
        let controller = UIActivityViewController(activityItems: [imageView.image!],
            applicationActivities: nil)
        // completionに関数(名)をセットします
        //        self.presentViewController(controller, animated: true, completion: showMessage)
        // completionに関数(処理)をセットします
        // 関数名のない関数は、無名関数と呼ばれます。
        self.presentViewController(controller, animated: true, completion: { print("表示終了") })
    }
    func showMessage() {
        print("表示終了")
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

