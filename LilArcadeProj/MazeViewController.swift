//
//  MazeViewController.swift
//  LilArcadeProj
//
//  Created by Pudd on 4/19/20.
//  Copyright © 2020 Malon Holmes. All rights reserved.
//

import UIKit


class MazeViewController: UIViewController {


    
    @IBOutlet var pacman: UIImageView!
    
    @IBOutlet var ghost1: UIImageView!
    
    @IBOutlet var ghost2: UIImageView!
    
    @IBOutlet var ghost3: UIImageView!
    
    @IBOutlet var ghost4: UIImageView!
    
    @IBOutlet var exit: UIImageView!
    
    @IBOutlet var wall: [UIImageView]!
    
    var imagearray = [UIImage(named: "ghost.png")!,]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.ghost1.animationImages = imagearray
        self.ghost1.animationDuration = 12.0
        self.ghost1.startAnimating()
        
        
       // add the rest of ghost once test
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
