//
//  ContactUtextViews.swift
//  PetsNBeyond
//
//  Created by Apple on 18/03/20.
//  Copyright © 2020 theabhieye. All rights reserved.
//

import UIKit

class ContactUs: UIViewController ,  UITextViewDelegate  {
    
    
    @IBOutlet weak var reasonTextView: UITextView!
    @IBOutlet weak var subView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CommanMethod().addBorderToView(subView)
        reasonTextView.layer.borderColor =
            CGColor(srgbRed: 227.0/255.0, green: 233.0/255.0, blue: 240.0/255.0, alpha: 1.0)

        reasonTextView.layer.borderWidth = 1

    
    }
}
