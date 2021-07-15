//
//  StockCellTableViewCell.swift
//  Portfolio
//
//  Created by Harshdeep Singh on 7/15/21.
//

import UIKit

class StockCellTableViewCell: UITableViewCell {
    
    @IBOutlet var myStockAbbvLabel : UILabel!
    @IBOutlet var myProfitLossLabel : UILabel!
    @IBOutlet var currentPriceButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
