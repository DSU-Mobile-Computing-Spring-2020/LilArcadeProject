//
//  LoginViewController.swift
//  LilArcadeProj
//
//  Created by JAMIE HOLMES on 4/4/20.
//  Copyright © 2020 Malon Holmes. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //commit, pull, then push 
    //edit....
    
    override func viewDidAppear(_ animated: Bool) {
        checkForUser()
    }
    
    override var prefersStatusBarHidden: Bool {
      return true
    }
    
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
         
    @IBAction func onSignUp(_ sender: Any) {
        let user = PFUser()
        user.username = usernameField.text
        user.password = passwordField.text

        user.signUpInBackground { (success, error) in
            if success {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else {
                print("Error: \(error?.localizedDescription)")
            }

        }

    }
         
    @IBAction func onLogIn(_ sender: Any) {
        let username = usernameField.text!
        let password = passwordField.text!
        
        PFUser.logInWithUsername(inBackground: username, password: password)
        { (user, error) in
            if user != nil {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else {
                print("Error: \(error?.localizedDescription)")
            }
        }

    }
    
    func checkForUser() {
        if PFUser.current() != nil {
            self.performSegue(withIdentifier: "loginSegue", sender: nil)
        }
    }

}
