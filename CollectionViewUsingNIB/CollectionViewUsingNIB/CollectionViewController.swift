//
//  CollectionViewController.swift
//  CollectionViewUsingNIB
//
//  Created by Jason Sturges on 10/29/15.
//  Copyright © 2015 Jason Sturges. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController {
    
    var data = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Data
        data = ["A", "B", "C"]
        
        // Register cell nib
        let nib = UINib(nibName: "CollectionViewCell", bundle: nil)
        collectionView?.registerNib(nib, forCellWithReuseIdentifier: "cell")
    }
    
    
    // MARK: UICollectionViewDataSource
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CollectionViewCell
        
        // Configure the cell
        cell.label.text = data[indexPath.row]
        
        return cell
    }
    
}

