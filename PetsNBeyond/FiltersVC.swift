//
//  FiltersVC.swift
//  PetsNBeyond
//
//  Created by Apple on 27/03/20.
//  Copyright © 2020 theabhieye. All rights reserved.
//

import UIKit

class FiltersVC: UIViewController {
    
    @IBOutlet weak var filtersSV: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        CommanMethod().addBorderToView(filtersSV)
    }
}
