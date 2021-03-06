//
//  SettingsViewController.swift
//  Carousel
//
//  Created by Remesh Vijayan on 10/18/15.
//  Copyright © 2015 codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var closeIcon: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
         scrollView.contentSize = imageView.image!.size
        
    
    }

    
    
    
    
    
    @IBAction func closeIcon(sender: AnyObject)
    
    {
    
    dismissViewControllerAnimated(true, completion: nil)
    
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
