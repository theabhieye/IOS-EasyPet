//
//  ReviewSellerVC.swift
//  PetsNBeyond
//
//  Created by Apple on 27/03/20.
//  Copyright © 2020 theabhieye. All rights reserved.
//

import UIKit

class ReviewSellerVC: UIViewController {

    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        submitButton.setGradientBackground(colorOne: Colors.lightBlue, colorTwo: Colors.darkBlue)
        CommanMethod().addBorderToView(submitButton)
        submitButton.cornerRadius = 10
    }
    
    
    
    
}
