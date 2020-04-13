//
//  TicTacToeViewController.swift
//  LilArcadeProj
//
//  Created by Leroy on 4/12/20.
//  Copyright © 2020 Malon Holmes. All rights reserved.
//

import UIKit

class TicTacToeViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    
    var userChar = UIImage()
    var compChar = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func placeChar(_ sender: Any) {
        //if user's turn:
        //button1.setImage(userChar, for: <#T##UIControl.State#>)
        //if computeer's turn:
        //button1.setImage(compChar, for: <#T##UIControl.State#>)
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
