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

    @IBOutlet weak var changeUsernameField: UITextField!
    @IBOutlet weak var usernameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        usernameLabel.text = usernameField.text
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
