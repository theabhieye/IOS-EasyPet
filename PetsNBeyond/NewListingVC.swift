//
//  NewListingVC.swift
//  PetsNBeyond
//
//  Created by Apple on 26/03/20.
//  Copyright © 2020 theabhieye. All rights reserved.
//

import UIKit
import KMPlaceholderTextView
import iOSDropDown

class NewListingVC: UIViewController {

    @IBOutlet weak var storyTextview: KMPlaceholderTextView!

    @IBOutlet weak var dropDown: DropDown!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        storyTextview.layer.borderColor =
                      CGColor(srgbRed: 227.0/255.0, green: 233.0/255.0, blue: 240.0/255.0, alpha: 1.0)

       storyTextview.layer.borderWidth = 1
        dropDown.addTarget(self, action: #selector(myTargetFunction), for: .touchDown)
    }
        
    @objc func myTargetFunction()
    {
        dropDown.selectedRowColor = UIColor.lightGray
        dropDown.optionArray = ["Option 1", "Option 2", "Option 3","Option 1"]
        dropDown.isSearchEnable = false
        dropDown.didSelect{(selectedText , index ,id) in
        print("Selected String: \(selectedText) \n index: \(index)")
        }
    }
}
