//
//  TableViewCell.swift
//  xib_tableView
//
//  Created by Amira Maythe Vasquez on 19/02/2020.
//  Copyright © 2020 desafio. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {


    @IBOutlet weak var userImage: UIImageView!

    @IBOutlet weak var userName: UILabel!

    @IBOutlet weak var userAge: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
