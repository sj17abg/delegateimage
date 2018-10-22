//
//  ViewController.swift
//  Dragging_Image
//
//  Created by sj17abg on 22/10/2018.
//  Copyright © 2018 CSStestuser. All rights reserved.
//

import UIKit

protocol subviewDelegate {
    func changeSomething()
}

class ViewController: UIViewController, subviewDelegate {
    func changeSomething() {
        display.text="X Position: "+flowerImageView.center.x.description
    }

    
    /*func changeSomthing() {
        display.text="X Position: "+flowerImageView.center.x.description
    }*/
    @IBOutlet weak var display: UILabel!
    
    @IBOutlet weak var flowerImageView: DraggedImageView!
    
   
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        flowerImageView.myDelegate=self    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

