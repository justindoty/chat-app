//
//  CreateAccountVC.swift
//  chat-app
//
//  Created by Justin  Doty on 10/1/17.
//  Copyright © 2017 Justin  Doty. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    //Outlets

    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    //Functions
    
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
    
    @IBAction func pickBgColorPressed(_ sender: Any) {
    }
    
    @IBAction func createAccntPressed(_ sender: Any) {
        
        guard let email = emailTxt.text , emailTxt.text != "" else { return }
        guard let password = passwordTxt.text , passwordTxt.text != "" else { return }

        AuthService.instance.registerUser(email: email, password: password)
            { (success) in
                if success {
                    AuthService.instance.loginUser(email: email, password: password, completion: { (success) in
                        if success {
                            print("logged in user!",
                                  AuthService.instance.authToken)
                        }
                    })
                }
            }
    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }

    
}
