//
//  ProgrammingListTableViewCell.swift
//  Programming&DevelopmentTutorials
//
//  Created by Khawar Islam on 01/07/2016.
//  Copyright © 2016 Khawar Islam. All rights reserved.
//

import UIKit

class ProgrammingListTableViewCell: UITableViewCell {

   
    @IBOutlet weak var pLabel: UILabel!
    
    @IBOutlet weak var pImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
