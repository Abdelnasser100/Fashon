//
//  MessagesTableViewCell.swift
//  Fashon
//
//  Created by SA on 12/16/24.
//

import UIKit

class MessagesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitelLabel: UILabel!
    @IBOutlet weak var messageLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        productImage.layer.cornerRadius = productImage.frame.height / 2
    }
    
}
