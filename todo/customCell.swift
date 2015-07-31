//
//  customCell.swift
//  todo
//
//  Created by 古川 和輝 on 2015/07/24.
//  Copyright (c) 2015年 Kazuki Furukawa. All rights reserved.
//

import UIKit

class customCell: UITableViewCell {
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var deadlineLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
