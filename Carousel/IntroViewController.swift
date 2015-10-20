//
//  IntroViewController.swift
//  Carousel
//
//  Created by Remesh Vijayan on 10/16/15.
//  Copyright © 2015 codepath. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {

    
   
    @IBOutlet weak var scrollView: UIScrollView!

    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        scrollView.contentSize = imageView.image!.size
    
    
    
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
