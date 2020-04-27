//
//  MazeViewController.swift
//  LilArcadeProj
//
//  Created by Pudd on 4/19/20.
//  Copyright © 2020 Malon Holmes. All rights reserved.
//

import UIKit
<<<<<<< HEAD

class MazeViewController: UIViewController {
=======


class MazeViewController: UIViewController {


>>>>>>> f9c95ac1673119c127d037c75e51c1d806e57570
    
    @IBOutlet var pacman: UIImageView!
    
    @IBOutlet var ghost1: UIImageView!
    
    @IBOutlet var ghost2: UIImageView!
    
    @IBOutlet var ghost3: UIImageView!
    
    @IBOutlet var ghost4: UIImageView!
    
    @IBOutlet var exit: UIImageView!
    
    @IBOutlet var wall: [UIImageView]!
    
<<<<<<< HEAD
    var imgarray = [UIImage(named:"ghost.png")!,]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.imgview.animationImages = imgarray
        self.imgview.animationDuration = 10.0
        self.imgview.animationRepeatCount = 0
        self.imgview.startAnimating()
    }
}
        // add the rest of ghost once test

=======
    var imagearray = [UIImage(named: "ghost.png")!,]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.ghost1.animationImages = imagearray
        self.ghost1.animationDuration = 12.0
        self.ghost1.startAnimating()
        
        
       // add the rest of ghost once test
    }
>>>>>>> f9c95ac1673119c127d037c75e51c1d806e57570
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


