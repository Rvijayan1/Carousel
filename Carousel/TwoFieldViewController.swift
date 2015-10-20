//
//  TwoFieldViewController.swift
//  Carousel
//
//  Created by Remesh Vijayan on 10/18/15.
//  Copyright © 2015 codepath. All rights reserved.
//

import UIKit

class TwoFieldViewController: UIViewController {

    
    @IBOutlet weak var EmailField: UITextField!
    
    
    @IBOutlet weak var PasswordField: UITextField!
    
    
    @IBOutlet weak var SignIn: UIButton!
    
    
    @IBOutlet weak var SignInBox: UIView!
    
    
    
    var initialY: CGFloat!
    let offset: CGFloat = -50
    
    

    
    

    
    
    
    func keyboardWillShow(notification: NSNotification!)
    {
        
        // Set view properties in here that you want to match with the animation of the keyboard
        // If you need it, you can use the kbSize property above to get the keyboard width and height.
        SignInBox.frame.origin = CGPoint(x: SignInBox.frame.origin.x, y: initialY + offset)
        
        
        
    }
    
    func keyboardWillHide(notification: NSNotification!)
    {
        // Set view properties in here that you want to match with the animation of the keyboard
        // If you need it, you can use the kbSize property above to get the keyboard width and height.
        
        SignInBox.frame.origin = CGPoint(x: SignInBox.frame.origin.x, y: initialY)
        
        
    }
    
    @IBAction func onTapdismisss(sender: AnyObject)
    {
        
        SignInBox.endEditing(true)
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        initialY = SignInBox.frame.origin.y
        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        // Do any additional setup after loading the view.
    }

    
    
    
        
    @IBAction func SignIn(sender: UIButton)
    
    {
    
     let alertController = UIAlertController(title: "Email Required", message: "Please enter your email address", preferredStyle: .Alert)
        
        
        let alertController1 = UIAlertController(title: "Invalide Email or Password", message: "Please enter a valid email and password", preferredStyle: .Alert)
        
        // create a cancel action
        let cancelAction = UIAlertAction(title: "OK", style: .Cancel) { (action) in
            // handle cancel response here. Doing nothing will dismiss the view.
        }
        // add the cancel action to the alertController
        alertController.addAction(cancelAction)
        alertController1.addAction(cancelAction)
        
    
    
        if EmailField.text!.isEmpty || PasswordField.text!.isEmpty
    
        {
        
        presentViewController(alertController, animated: true)
              {
            
              }
        
        }
    
        
       else if (EmailField.text != "remesh@email.com" || PasswordField.text != "password")
            
        {
            
            presentViewController(alertController1, animated: true)
            {
                    
            }
            
        }

      else
    
        {
          
            
            
        }
    
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
