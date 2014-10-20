//
//  DetailViewController.swift
//  infoMorning
//
//  Created by CK Lam on 20/10/14.
//  Copyright (c) 2014 CK Lam. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var bigImgView: UIImageView!
    
    var name : AnyObject?{
        get {
            return NSUserDefaults.standardUserDefaults().objectForKey("name")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bigImgView.image = UIImage(named: name as String)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
