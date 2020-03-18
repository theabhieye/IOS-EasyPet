//
//  LoginWindow.swift
//  PetsNBeyond
//
//  Created by Apple on 17/03/20.
//  Copyright © 2020 theabhieye. All rights reserved.
//

import UIKit
class LoginWindow: UIViewController {
    @IBOutlet weak var signInSubView: UIView!
     override func viewDidLoad() {
        super.viewDidLoad()
        CommanMethod().addBorderToView(signInSubView);
    } 
}
