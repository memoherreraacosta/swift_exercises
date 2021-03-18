//
//  DishTableViewCell.swift
//  tarea2
//
//  Created by Memo Herrera on 03/03/21.
//

import UIKit

class DishTableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewCell: UIImageView!

    
    @IBOutlet weak var labelCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
