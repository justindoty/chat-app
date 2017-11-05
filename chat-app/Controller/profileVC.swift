//
//  profileVC.swift
//  chat-app
//
//  Created by Justin  Doty on 11/4/17.
//  Copyright © 2017 Justin  Doty. All rights reserved.
//

import UIKit

class profileVC: UIViewController {
    
    //Outlets
    
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var bgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        // Do any additional setup after loading the view.
    }


    @IBAction func closeModalPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
        
    }
    

    @IBAction func logoutPressed(_ sender: Any) {
        UserDataService.instance.logoutUser()
        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
        dismiss(animated: true, completion: nil)
    }
    
    func setupView() {
        userName.text = UserDataService.instance.name
        userEmail.text = UserDataService.instance.email
        profileImg.image = UIImage(named: UserDataService.instance.avatarName)
        profileImg.backgroundColor = UserDataService.instance.returnUIColor(components: UserDataService.instance.avatarColor)
        
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(profileVC.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
    }
   
    @objc func closeTap(_ regognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
    
}
