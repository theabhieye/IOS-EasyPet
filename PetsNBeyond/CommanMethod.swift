//
//  CommanMethod.swift
//  PetsNBeyond
//
//  Created by Apple on 17/03/20.
//  Copyright © 2020 theabhieye. All rights reserved.
//

import Foundation
import UIKit

class CommanMethod
{
    func addBorderToView(_ signInSubView: UIView){
        signInSubView.layer.shadowColor = UIColor.black.cgColor
        signInSubView.layer.shadowOpacity = 0.2
        signInSubView.layer.shadowOffset = .zero
        signInSubView.layer.shadowRadius = 5
    }
}
