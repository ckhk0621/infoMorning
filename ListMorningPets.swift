//
//  FirstViewController.swift
//  infoMorning
//
//  Created by CK Lam on 20/10/14.
//  Copyright (c) 2014 CK Lam. All rights reserved.
//

import UIKit

class ListMorningPets: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    var arr: [String] = []
    
    var name : AnyObject?{
        
        get {
            
            return NSUserDefaults.standardUserDefaults().objectForKey("name")
            
        }
        
        set {
            
            NSUserDefaults.standardUserDefaults().setObject(newValue!, forKey: "name")
            NSUserDefaults.standardUserDefaults().synchronize()
            
        }
        
    }
    
    
    
    @IBOutlet weak var myCellView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        arr = ["098i.png", "096i.png"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return arr.count
    }
    
    // The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as MyCellView
        cell.imgView.image = UIImage(named: arr[indexPath.row])
        
        return cell
        
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        name = arr[indexPath.row]
        
    }
    
    
    


}

