//
//  Custome.swift
//  Programming&DevelopmentTutorials
//
//  Created by Khawar Islam on 27/06/2016.
//  Copyright © 2016 Khawar Islam. All rights reserved.
//

import UIKit

class Custome: UITableViewCell {

    @IBOutlet weak var name: UILabel!
   
    
    @IBOutlet weak var photo: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
