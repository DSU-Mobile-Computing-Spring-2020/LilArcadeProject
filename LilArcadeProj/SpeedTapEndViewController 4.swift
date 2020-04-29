//
//  SpeedTapEndViewController.swift
//  LilArcadeProj
//
//  Created by JAMIE HOLMES on 4/23/20.
//  Copyright © 2020 Malon Holmes. All rights reserved.
//

import UIKit

class SpeedTapEndViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var scoreCountLabel: UILabel!
    @IBOutlet weak var backToHomeButton: UIButton!
    
    var scoreData:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scoreLabel.layer.cornerRadius = 5.0
        backToHomeButton.layer.cornerRadius = 5.0
        
        scoreCountLabel.text = scoreData
    }
    
    @IBAction func backToHome(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
        self.presentingViewController?.dismiss(animated: false, completion: nil)
    }
    
}
