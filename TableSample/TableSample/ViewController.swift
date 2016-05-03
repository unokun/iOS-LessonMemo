//
//  ViewController.swift
//  TableSample
//
//  Created by Masaaki Uno on 2015/11/15.
//  Copyright © 2015年 Masaaki Uno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var dataArray:NSArray?
    
    var selectedImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let filePath = NSBundle.mainBundle().pathForResource("data", ofType: "plist")
        dataArray = NSArray(contentsOfFile: filePath!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return dataArray!.count
    }
    
    /*
    Cellに値を設定する.
    */
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // Cellを取得する.
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        // 画像を設定
        let imageView = cell.viewWithTag(1) as! UIImageView
        let imageName = dataArray![indexPath.row]["ファイル名"] as! String
        imageView.image = UIImage(named: imageName)
        
        // タイトルを設定
        let title = cell.viewWithTag(2) as! UILabel
        title.text = dataArray![indexPath.row]["タイトル"] as? String
        
        // 解説文を設定
        let description = cell.viewWithTag(3) as! UITextView
        description.text = dataArray![indexPath.row]["解説"] as! String
//        let text = dataArray![indexPath.row]["解説"] as! String
//        if let range = description.selectedTextRange {
//            description.replaceRange(range, withText: text)
//        }
        return cell
    }
    
    /*
    Cellが選択された際に呼び出される.
    */
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("\(indexPath.row)番目のセルが選択されました.")
        let imageName = dataArray![indexPath.row]["ファイル名"] as! String
        print("画像ファイル： \(imageName).")
        
        selectedImage = UIImage(named: imageName)
        if selectedImage != nil {
            self.performSegueWithIdentifier("ToDetail", sender: nil)
        }
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ToDetail" {
            let detailVC: DetailViewController = segue.destinationViewController as! DetailViewController
            detailVC.selectedImg = selectedImage
            
        }
    }
    
    @IBAction func viewDidReturn(sender: UIStoryboardSegue) {
        print("Returned.")
        
    }
}

