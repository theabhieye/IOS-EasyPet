//
//  SignUpWindow.swift
//  PetsNBeyond
//
//  Created by Apple on 17/03/20.
//  Copyright © 2020 theabhieye. All rights reserved.
//

import UIKit

class SignUpWindow: UIViewController {

    @IBOutlet weak var SignUpSubView: UIView!
    override func viewDidLoad() {
        CommanMethod().addBorderToView(SignUpSubView)
        super.viewDidLoad()
    }
}

