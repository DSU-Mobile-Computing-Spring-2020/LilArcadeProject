//
//  SpeedTapViewController.swift
//  LilArcadeProj
//
//  Created by JAMIE HOLMES on 4/20/20.
//  Copyright © 2020 Malon Holmes. All rights reserved.
//

import UIKit

class SpeedTapViewController: UIViewController {

    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var speedTapTitleLabel: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tapButton.layer.cornerRadius = 5.0
        speedTapTitleLabel.layer.cornerRadius = 5.0
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
