//
//  TableViewCell9.swift
//  EcomProj
//
//  Created by Admin on 08/08/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class TableViewCell9: UITableViewCell {

    @IBOutlet var sfy1: UIImageView!
    
    @IBOutlet var productLab: UILabel!
    @IBOutlet var productLab2: UILabel!
    
    @IBOutlet var measlab1: UILabel!
    
    @IBOutlet var measlab2: UILabel!
    
    @IBOutlet var sfy2: UIImageView!
    
    @IBOutlet var sfyatc1: UIImageView!
    
    @IBOutlet var sfyatc2: UIImageView!
    
    @IBOutlet var suggestLabel: UILabel!
    
    @IBOutlet var priceLab: UILabel!
    
    @IBOutlet var priceLab2: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
