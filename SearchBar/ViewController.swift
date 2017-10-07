//
//  ViewController.swift
//  SearchBar
//
//  Created by Mostafa on 7/17/17.
//  Copyright © 2017 Mostafa. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UISearchBarDelegate {

    var step = 0
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var imageSearch: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        UIView.animateWithDuration(0.4, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.8, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
                if self.step == 0 {
                    self.imageSearch.transform = CGAffineTransformMakeScale(1.09, 1.09)
                    self.step = 1
                }else{
                    self.imageSearch.transform = CGAffineTransformIdentity
                    self.step = 0

                }
            
            }, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if searchBar.text == ""{
            
            let useralter = UIAlertController(title: "Please Fill Searh Bar", message: nil, preferredStyle: UIAlertControllerStyle.Alert)
            let OkAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil)
            useralter.addAction(OkAction)
            self.presentViewController(useralter, animated:true, completion: nil)
          
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

