//
//  PersonTableViewCell.swift
//  TableViewIntro
//
//  Created by David Svensson on 2020-01-22.
//  Copyright © 2020 David Svensson. All rights reserved.
//

import UIKit

class PersonTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var firstNameLabel: UILabel!
    
    @IBOutlet weak var secondNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
