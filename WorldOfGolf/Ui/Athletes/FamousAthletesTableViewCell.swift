//
//  FamousAthletesTableViewCell.swift
//  WorldOfGolf
//
//  Created by Deniz Eren Gençay on 19.07.2022.
//

import UIKit

class FamousAthletesTableViewCell: UITableViewCell {

   
    @IBOutlet weak var athleteLabel: UILabel!
    @IBOutlet weak var athleteImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
