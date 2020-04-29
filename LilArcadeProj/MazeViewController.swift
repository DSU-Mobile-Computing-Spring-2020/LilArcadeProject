//
//  MazeViewController.swift
//  LilArcadeProj
//
//  Created by Pudd on 4/19/20.
//  Copyright © 2020 Malon Holmes. All rights reserved.
//

import UIKit


class MazeViewController: UIViewController {

    @IBOutlet weak var pacImageView: UIImageView!
    
    @IBOutlet weak var exitImageView: UIImageView!
    
    @IBOutlet var ghost1: UIImageView!
    
    @IBOutlet var ghost2: UIImageView!
    
    @IBOutlet var ghost3: UIImageView!
    
    @IBOutlet var ghost4: UIImageView!

    
    @IBOutlet var wall: [UIImageView]!
    
    @IBAction func onBackButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    var pacViewOrigin: CGPoint!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        addPanGesture(view: pacImageView)
        pacViewOrigin = pacImageView.frame.origin
        view.bringSubviewToFront(toFront: pacImageView)
        // Do any additional setup after loading the view.
}
    func addPanGesture(view: UIView){
    
        let pan = UIPanGestureRecognizer(target: self, action: #selector (MazeViewController.handlePan(sender:)))
        view.addGestureRecognizer(pan)
    }
    func handlePan(sender: UIPanGestureRecognizer) {
    
    let pacView = sender.view!
    let translation = sender.translation(in: view)
    
        switch sender.state {
        case.began, .changed:
            pacView.center = CGPoint(x: pacView.center.x + translation.x, y: pacView.center.y + translation.y)
            sender.setTranslation(CGPoint.zero, in: view)
        case .ended:
            if pacView.frame.intersects(exitImageView.frame){
                UIView.animate(withDuration: 0.3) {
                    self.pacImageView.alpha = 0.0
                }
            } else{
                UIView.animate(withDuration: 0.3) {
                    self.pacImageView.frame.origin = pacViewOrigin
                }
            }
        default :
            break
    }
    
    

}

}
