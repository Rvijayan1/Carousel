//
//  TutorialViewController.swift
//  Carousel
//
//  Created by Remesh Vijayan on 10/18/15.
//  Copyright © 2015 codepath. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController,UIScrollViewDelegate {

    
    @IBOutlet weak var tutorial: UIScrollView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tutorial.contentSize = CGSize(width: 1280,height: 568)
        tutorial.delegate = self
        

        // Do any additional setup after loading the view.
    }
    
    
    func scrollViewDidEndDecelerating(tutorial: UIScrollView)
        
    {
        // Get the current page based on the scroll offset
        let page : Int = Int(round(tutorial.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
    }

    
    
    
    
    func scrollViewDidScroll(tutorial: UIScrollView) {
        // This method is called as the user scrolls
    }
    
    func scrollViewWillBeginDragging(tutorial: UIScrollView) {
        
    }
    
    func scrollViewDidEndDragging(tutorial: UIScrollView,
        willDecelerate decelerate: Bool) {
            // This method is called right as the user lifts their finger
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
