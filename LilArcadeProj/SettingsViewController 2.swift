//
//  SettingsViewController.swift
//  LilArcadeProj
//
//  Created by JAMIE HOLMES on 4/5/20.
//  Copyright © 2020 Malon Holmes. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var backgroundColor: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onSlidingGameVolume(_ sender: Any) {
        
    }
    
    @IBAction func onSlidingBrightness(_ sender: Any) {
        
    }
    
    @IBAction func onSwitchingDarkMode(_ sender: Any) {
        
    }
    
    @IBAction func onBackgroundButton_1(_ sender: Any) {
        backgroundColor.image = UIImage(named: "Gradient Blue")

        // make sure background saves in the database
    }
    
    @IBAction func onBackgroundButton_2(_ sender: Any) {
        backgroundColor.image = UIImage(named: "Gradient Gold")
    }
    
    @IBAction func onBackgroundButton_3(_ sender: Any) {
        backgroundColor.image = UIImage(named: "Gradient Orange")
    }
    
    @IBAction func onBackgroundButton_4(_ sender: Any) {
        backgroundColor.image = UIImage(named: "Gradient Green")
    }
    
    @IBAction func onBackgroundButton_5(_ sender: Any) {
        backgroundColor.image = UIImage(named: "Gradient Purple-Pink")
    }
    
    @IBAction func onBackgroundButton_6(_ sender: Any) {
        backgroundColor.image = UIImage(named: "Gradient Pink-Blue")
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
