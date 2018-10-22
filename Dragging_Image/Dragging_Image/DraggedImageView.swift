//
//  DraggedImageView.swift
//  Dragging_Image
//
//  Created by sj17abg on 22/10/2018.
//  Copyright © 2018 CSStestuser. All rights reserved.
//

import UIKit

class DraggedImageView: UIImageView {
    var startLocation: CGPoint?
    var myDelegate:subviewDelegate?
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        startLocation=touches.first?.location(in:self)
        
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let currentLocation=touches.first?.location(in: self)
        let dx=currentLocation!.x-startLocation!.x
        let dy = currentLocation!.y-startLocation!.y
        
        self.center = CGPoint(x:self.center.x+dx,y:self.center.y+dy)
        self.myDelegate?.changeSomething()
        
    }

    
        
    }


