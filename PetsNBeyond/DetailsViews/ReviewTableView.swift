//
//  ReviewTableView.swift
//  PetsNBeyond
//
//  Created by Apple on 24/03/20.
//  Copyright © 2020 theabhieye. All rights reserved.
//

import UIKit

class ReviewTableView: UITableViewCell {

    @IBOutlet weak var reviewerUserName: UILabel!
    @IBOutlet weak var startButton_1: UIButton!
    @IBOutlet weak var startButton_2: UIButton!
    @IBOutlet weak var startButton_3: UIButton!
    @IBOutlet weak var startButton_4: UIButton!
    @IBOutlet weak var startButton_5: UIButton!
    @IBOutlet weak var reviewDate: UILabel!
    @IBOutlet weak var reviewLabel: UILabel!
    @IBOutlet weak var reviewerProfileImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
