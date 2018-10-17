//
//  ShowViewController.swift
//  SearchBar
//
//  Created by Mostafa on 7/17/17.
//  Copyright © 2017 Mostafa. All rights reserved.
//

import UIKit

class ShowViewController: UIViewController , UICollectionViewDataSource ,UICollectionViewDelegate {
    var images = ["01","02","03","04","05","06","07","08","09","10","11","12","13","14"
    ,"15","16","17","18","19","20"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
  
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell:imageCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! imageCollectionViewCell
        cell.imageCell.image = UIImage(named: self.images[indexPath.row])
        return cell
    }
    
}
