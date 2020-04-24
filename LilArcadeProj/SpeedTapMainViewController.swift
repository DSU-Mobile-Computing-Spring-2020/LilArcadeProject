//
//  SpeedTapMainViewController.swift
//  LilArcadeProj
//
//  Created by JAMIE HOLMES on 4/22/20.
//  Copyright © 2020 Malon Holmes. All rights reserved.
//

import UIKit

class SpeedTapMainViewController: UIViewController {

    @IBOutlet weak var timeRemainingLabel: UILabel!
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var scoreCountLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    var tapInt = 0
    var startInt = 3
    var startTimer = Timer()
    
    var gameInt = 10
    var gameTimer = Timer()
    
    var recordData:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        timeRemainingLabel.layer.cornerRadius = 5.0
        tapButton.layer.cornerRadius = 15.0
        scoreLabel.layer.cornerRadius = 5.0
        
        tapInt = 0
        scoreCountLabel.text = String(tapInt)
        
        startInt = 3
        tapButton.setTitle(String(startInt), for: .normal)
        tapButton.isEnabled = false
        
        startTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(SpeedTapMainViewController.startGameTimer), userInfo: nil, repeats: true )
        
        gameInt = 10
        timeLabel.text = String(gameInt)
        
        let userDefaults = Foundation.UserDefaults.standard
        let value = userDefaults.string(forKey: "Record")
        recordData = value
    }
    
    @IBAction func onTapButton(_ sender: Any) {
        tapInt += 1
        scoreCountLabel.text = String(tapInt)
    }
    
    @objc func startGameTimer() {
        startInt -= 1
        tapButton.setTitle(String(startInt), for: .normal)
        
        if startInt == 0 {
            startTimer.invalidate()
            
            tapButton.setTitle("TAP!", for: .normal)
            tapButton.isEnabled = true
             
            gameTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(SpeedTapMainViewController.game), userInfo: nil, repeats: true)
        }
    }
    
    @objc func game() {
        
        gameInt -= 1
        timeLabel.text = String(gameInt)
        
        if gameInt == 0 {
            // Game Ends
            
            gameTimer.invalidate()
            
            if recordData == nil {
                
                let savedString = scoreCountLabel.text
                let userDefaults = Foundation.UserDefaults.standard
                userDefaults.set(savedString, forKey: "Record")

            } else {
                
                let score:Int? = Int(scoreCountLabel.text!)
                let record:Int? = Int(recordData)
                
                if score! > record! {
                    
                    let savedString = scoreCountLabel.text
                    let userDefaults = Foundation.UserDefaults.standard
                    userDefaults.set(savedString, forKey: "Record")
                    
                }
                
                
            }
            
            tapButton.isEnabled = false
            
            Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(SpeedTapMainViewController.end), userInfo: nil, repeats: false)
        }
        
    }
    
    @objc func end() {
 
        let vc =
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "endGame")
                as! SpeedTapEndViewController
        vc.scoreData = scoreCountLabel.text
        self.present(vc, animated: false, completion: nil)
    }

}
