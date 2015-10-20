//
//  TutotialViewController.swift
//  Carousel
//
//  Created by Carolyn Yang - Vendor on 10/17/15.
//  Copyright © 2015 Carolyn Yang. All rights reserved.
//

import UIKit

class TutotialViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var tutorialScrollView: UIScrollView!
    @IBOutlet weak var tutorialPageControl: UIPageControl!
    @IBOutlet weak var bottomButtons: UIImageView!
    @IBOutlet weak var spinButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tutorialScrollView.delegate = self
        tutorialScrollView.contentSize = CGSize(width: 1280, height: 568)
        self.bottomButtons.alpha = 0.0
    }

    func scrollViewDidEndDecelerating(ScrollView: UIScrollView) {
        // Get the current page based on the scroll offset
        let page : Int = Int(round(tutorialScrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        tutorialPageControl.currentPage = page
        
        if(page==3)
        {
            tutorialPageControl.hidden = true
            spinButton.enabled = true
            UIView.animateWithDuration(0.5){
                self.bottomButtons.alpha = 1.0
            }
        }else{
            tutorialPageControl.hidden = false
            spinButton.enabled = false
            UIView.animateWithDuration(0.2){
                self.bottomButtons.alpha = 0.0
            }
        }
    }

    @IBAction func spinButtonTap(sender: AnyObject) {
        self.performSegueWithIdentifier("timeLine", sender:self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
