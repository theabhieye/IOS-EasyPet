//
//  BioViewController.swift
//  PetsNBeyond
//
//  Created by Apple on 25/03/20.
//  Copyright © 2020 theabhieye. All rights reserved.
//

import UIKit
import KMPlaceholderTextView
class BioViewController: UIViewController {

    @IBOutlet weak var bioSubview: UIView!
    
    @IBOutlet weak var biographyTextView: KMPlaceholderTextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CommanMethod().addBorderToView(bioSubview)
        biographyTextView.layer.borderColor =
            CGColor(srgbRed: 227.0/255.0, green: 233.0/255.0, blue: 240.0/255.0, alpha: 1.0)

        biographyTextView.layer.borderWidth = 1
        
    }
}

