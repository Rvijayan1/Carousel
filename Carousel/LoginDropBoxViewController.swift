//
//  LoginDropBoxViewController.swift
//  Carousel
//
//  Created by Remesh Vijayan on 10/18/15.
//  Copyright © 2015 codepath. All rights reserved.
//

import UIKit

class LoginDropBoxViewController: UIViewController {

    
    @IBOutlet weak var Email: UITextField!
    
    
    @IBOutlet weak var Password: UITextField!
    
    
    @IBOutlet weak var LoginBox: UIView!
    
    
    var initialY: CGFloat!
    let offset: CGFloat = -50
    
    
    func keyboardWillShow(notification: NSNotification!)
    {
        
        // Set view properties in here that you want to match with the animation of the keyboard
        // If you need it, you can use the kbSize property above to get the keyboard width and height.
        loginBox.frame.origin = CGPoint(x: loginBox.frame.origin.x, y: initialY + offset)
        
        
    }
    
    func keyboardWillHide(notification: NSNotification!)
    {
        // Set view properties in here that you want to match with the animation of the keyboard
        // If you need it, you can use the kbSize property above to get the keyboard width and height.
        
        loginBox.frame.origin = CGPoint(x: loginBox.frame.origin.x, y: initialY)
        
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
