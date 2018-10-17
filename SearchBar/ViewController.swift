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
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.8, options: UIViewAnimationOptions.curveEaseOut, animations: { () -> Void in
            if self.step == 0 {
                self.imageSearch.transform = CGAffineTransform(scaleX: 1.09, y: 1.09)
                self.step = 1
            }else{
                self.imageSearch.transform = CGAffineTransform.identity
                self.step = 0
            }
            
        }, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if searchBar.text == ""{
            let useralter = UIAlertController(title: "Please Fill Searh Bar", message: nil, preferredStyle: UIAlertControllerStyle.alert)
            let OkAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
            useralter.addAction(OkAction)
            self.present(useralter, animated:true)
        }
    }

}

