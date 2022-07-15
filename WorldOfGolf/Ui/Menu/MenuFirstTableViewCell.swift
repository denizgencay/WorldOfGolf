//
//  FirstTableViewCell.swift
//  WorldOfGolf
//
//  Created by Deniz Eren Gençay on 13.07.2022.
//

import UIKit

class MenuFirstTableViewCell: UITableViewCell {

    @IBOutlet weak var button: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func buttonClick(_ sender: Any) {
        
    }
    
}
