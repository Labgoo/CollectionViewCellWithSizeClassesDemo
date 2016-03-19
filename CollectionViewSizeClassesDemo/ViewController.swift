//
//  ViewController.swift
//  CollectionViewSizeClassesDemo
//
//  Created by Minh Tu Le on 3/19/16.
//  Copyright © 2016 Wondermall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UICollectionViewDataSource {
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        if indexPath.item % 2 == 0 {
            return collectionView.dequeueReusableCellWithReuseIdentifier("wrongCell", forIndexPath: indexPath)
        } else {
            return collectionView.dequeueReusableCellWithReuseIdentifier("rightCell", forIndexPath: indexPath)
        }
    }
}
