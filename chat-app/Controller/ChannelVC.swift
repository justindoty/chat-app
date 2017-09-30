//
//  ChannelVC.swift
//  chat-app
//
//  Created by Justin  Doty on 9/30/17.
//  Copyright © 2017 Justin  Doty. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

 

}
