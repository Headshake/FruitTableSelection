//
//  FruitTableViewCell.swift
//  TableSelection
//
//  Created by Lbranon lim on 01/11/2020.
//

import UIKit

class FruitTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var thumbnailImageView: UIImageView!
}
