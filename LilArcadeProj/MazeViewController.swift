//
//  MazeViewController.swift
//  LilArcadeProj
//
//  Created by Pudd on 4/19/20.
//  Copyright © 2020 Malon Holmes. All rights reserved.
//

import UIKit
import <;QuartzCore/CAAnimation.h>;

class MazeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        CGPoint; origin1 = self.ghost1.center;
        CGPoint; target1 = CGPointMake(self.ghost1.center.x, self.ghost1.center.y-124);
        
        CABasicAnimation; *bounce1 = [CABasicAnimation, animationWithKeyPath,"position.y"];
        bounce1.fromValue = [NSNumber, numberWithInt,origin1.y];
        bounce1.toValue = [NSNumber, numberWithInt,target1.y];
        bounce1.duration = 2;
        bounce1.autoreverses = YES;
        bounce1.repeatCount = HUGE_VALF;
        
        [self.ghost1.layer, addAnimation,bounce1, forKey,"position"];
        
       // add the rest of ghost once test 
    }
    
    @IBOutlet var pacman: UIImageView!
    
    @IBOutlet var ghost1: UIImageView!
    
    @IBOutlet var ghost2: UIImageView!
    
    @IBOutlet var ghost3: UIImageView!
    
    @IBOutlet var ghost4: UIImageView!
    
    @IBOutlet var exit: UIImageView!
    
    @IBOutlet var wall: [UIImageView]!
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
