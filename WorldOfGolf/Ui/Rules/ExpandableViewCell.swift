//
//  ExpandableViewCell.swift
//  WorldOfGolf
//
//  Created by Deniz Eren Gençay on 19.07.2022.
//

import UIKit

class ExpandableViewCell: UITableViewCell {

    
    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
