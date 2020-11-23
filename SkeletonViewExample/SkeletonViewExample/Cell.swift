//
//  Cell.swift
//  SkeletonViewExample
//
//  Created by Sahil Arora on 2020-11-22.
//  Copyright © 2020 Sahil Arora. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {

    @IBOutlet weak var label_Counting:UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
