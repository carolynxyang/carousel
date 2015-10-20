//
//  ImageTimelineViewController.swift
//  Carousel
//
//  Created by Carolyn Yang - Vendor on 10/18/15.
//  Copyright © 2015 Carolyn Yang. All rights reserved.
//

import UIKit

class ImageTimelineViewController: UIViewController {

    @IBOutlet weak var imagetimelineScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        imagetimelineScrollView.contentSize = CGSize(width:320, height:1700)
        
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

}
