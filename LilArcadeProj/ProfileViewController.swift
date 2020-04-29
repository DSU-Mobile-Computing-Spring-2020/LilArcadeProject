//
//  ProfileViewController.swift
//  LilArcadeProj
//
//  Created by JAMIE HOLMES on 4/5/20.
//  Copyright © 2020 Malon Holmes. All rights reserved.
//

import UIKit
import Parse

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var winsLabel: UILabel!
    @IBOutlet weak var winsCountLabel: UILabel!
    @IBOutlet weak var lossesLabel: UILabel!
    @IBOutlet weak var lossesCountLabel: UILabel!
    @IBOutlet weak var drawsLabel: UILabel!
    @IBOutlet weak var drawsCountLabel: UILabel!
    
    @IBOutlet weak var changeUsernameField: UITextField!
    @IBOutlet weak var usernameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        winsLabel.layer.cornerRadius = 5.0
        winsCountLabel.layer.cornerRadius = 5.0
        lossesLabel.layer.cornerRadius = 5.0
        lossesCountLabel.layer.cornerRadius = 5.0
        drawsLabel.layer.cornerRadius = 5.0
        drawsCountLabel.layer.cornerRadius = 5.0
        usernameLabel.layer.cornerRadius = 10.0
        
        usernameLabel.text = PFUser.current()?.username
        print(PFUser.current()?.username)
    }
    
    
    @IBAction func onLogout(_ sender: Any) {
        PFUser.logOut()
        let main = UIStoryboard(name: "Main", bundle: nil)
        let LoginViewController = main.instantiateViewController(withIdentifier: "LoginViewController")
        
        let delegate = UIApplication.shared.delegate as! AppDelegate
        
        //delegate.window?.rootViewController = loginViewController
    }
    
    @IBAction func changeUsername(_ sender: Any) {  //What happens if the user types in nothing and presses 'change' button?
        var username = changeUsernameField.text
        
        let currentUser = PFUser.current()
        
        currentUser!["username"] = username
        
        currentUser!.saveInBackground()
        
        changeUsernameField.text = ""
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
