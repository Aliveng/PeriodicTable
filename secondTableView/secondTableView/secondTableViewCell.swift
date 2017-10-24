//
//  secondTableViewCell.swift
//  secondTableView
//
//  Created by Aliveng on 10.10.17.
//  Copyright © 2017 Aliveng. All rights reserved.
//

import UIKit

class secondTableViewCell: UITableViewCell {

 
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    
    override func awakeFromNib() {
       
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

     }
    
}
