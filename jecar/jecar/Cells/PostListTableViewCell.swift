//
//  PostListTableViewCell.swift
//  jecar
//
//  Created by Kim on 2021/03/17.
//  Copyright © 2021 Kim SuJin. All rights reserved.
//

import UIKit

class PostListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var writerNDateLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
