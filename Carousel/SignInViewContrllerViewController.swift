//
//  SignInViewContrllerViewController.swift
//  Carousel
//
//  Created by Carolyn Yang - Vendor on 10/17/15.
//  Copyright © 2015 Carolyn Yang. All rights reserved.
//

import UIKit

class SignInViewContrllerViewController: UIViewController {
    
    
    @IBOutlet weak var signinScrollView: UIScrollView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signinView: UIView!
    
    
    @IBOutlet weak var signinButton: UIButton!
    
    var activityIndicator:UIActivityIndicatorView = UIActivityIndicatorView(frame: CGRectMake(0,0, 50, 50)) as UIActivityIndicatorView
    

    
    func showAlertWithOK(alertTitle:String, alertText:String){
        let alertController = UIAlertController(title: alertTitle, message: alertText, preferredStyle: .Alert)
        // create an OK action
        let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
            // handle response here.
        }
        // add the OK action to the alert controller
        alertController.addAction(OKAction)
        presentViewController(alertController, animated: true) {
            // optional code for what happens after the alert controller has finished presenting
        }
        return
    }
    
    func showAlertWithText(alertText:String) ->UIAlertController{
        let alertController = UIAlertController(title: nil, message: alertText, preferredStyle: .Alert)
        presentViewController(alertController, animated: true) {
            // optional code for what happens after the alert controller has finished presenting
        }
        return alertController
    }

  
    
    
    func keyboardWillShow(notification: NSNotification!){
        UIView.animateWithDuration(0.2){
            self.signinScrollView.contentOffset.y = 70
        }

        signinScrollView.scrollEnabled = true
    }
    
    func keyboardWillHide(notification: NSNotification!){
        UIView.animateWithDuration(0.2){
            self.signinScrollView.contentOffset.y = 0
        }

        signinScrollView.scrollEnabled = false
    }
    
    
    
    
    @IBAction func signInTap(sender: AnyObject) {
        
        if emailTextField.text!.isEmpty {
            showAlertWithOK("Error", alertText:"E-mail cannot be empty")
            return
        }
        if passwordTextField.text!.isEmpty {
            showAlertWithOK("Error", alertText:"Password cannot be empty")
            return
        }
        
        //Authentication
        //activityIndicator.startAnimating()
        let alertController = showAlertWithText("Signing in...")
        if (emailTextField.text == "cxy@gmail.com" && passwordTextField.text == "1234"){
            delay(2){
                alertController.dismissViewControllerAnimated(true){
                    self.performSegueWithIdentifier("signinSegue", sender: nil)
                }
            }
        }else{
            delay(2){
                alertController.dismissViewControllerAnimated(true){
                    self.showAlertWithOK("Error", alertText:"Wrong e-mail or wrong password")
                }
            }
        }

    }
    
    /* The original functions */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardDidShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardDidHideNotification, object: nil)
        
        signinScrollView.contentSize = CGSize(width: 320, height: 494)
        
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.WhiteLarge
        activityIndicator.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.5)
        
        activityIndicator.autoresizingMask = [.FlexibleHeight,.FlexibleWidth]
        activityIndicator.frame = self.view.frame
        self.view.addSubview(activityIndicator)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


