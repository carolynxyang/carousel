//
//  IntroViewController.swift
//  Carousel
//
//  Created by Carolyn Yang - Vendor on 10/17/15.
//  Copyright © 2015 Carolyn Yang. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {

    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        scrollView.contentSize = imageView.image!.size
    }
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
