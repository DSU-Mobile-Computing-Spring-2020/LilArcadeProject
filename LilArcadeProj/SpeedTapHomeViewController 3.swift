//
//  SpeedTapHomeViewController.swift
//  LilArcadeProj
//
//  Created by JAMIE HOLMES on 4/22/20.
//  Copyright © 2020 Malon Holmes. All rights reserved.
//

import UIKit

class SpeedTapHomeViewController: UIViewController {
    
    @IBOutlet weak var speedTapTitleImageView: UIImageView!
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var startGameButton: UIButton!
    @IBOutlet weak var highScoreCountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        speedTapTitleImageView.layer.cornerRadius = 5.0
        highScoreLabel.layer.cornerRadius = 5.0
        startGameButton.layer.cornerRadius = 5.0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let userDefaults = Foundation.UserDefaults.standard
        let value = userDefaults.string(forKey: "Record")
        
        if (value == nil) {
            
            highScoreCountLabel.text = "0"
        
        } else {
            
            highScoreCountLabel.text = value
        
        }
    }
    
    @IBAction func onBackButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
