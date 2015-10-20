//
//  SettingViewController.swift
//  Carousel
//
//  Created by Carolyn Yang - Vendor on 10/18/15.
//  Copyright © 2015 Carolyn Yang. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var settingScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingScrollView.contentSize = CGSize(width:320, height:695)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func closeButton(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
