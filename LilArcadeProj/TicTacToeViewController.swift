//
//  TicTacToeViewController.swift
//  LilArcadeProj
//
//  Created by Leroy on 4/12/20.
//  Copyright © 2020 Malon Holmes. All rights reserved.
//

import UIKit

class TicTacToeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var userCharacter = UIImage.self
    
    @IBAction func onOption_X(_ sender: Any) {
        //userCharacter = UIImage(named: "Cross")
    }
    
    @IBAction func onOption_O(_ sender: Any) {
        //userCharacter = UIImage(named: "Nought")
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
