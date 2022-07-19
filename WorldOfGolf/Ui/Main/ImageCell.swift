//
//  ImageCell.swift
//  WorldOfGolf
//
//  Created by Cem Sertkaya on 19.07.2022.
//

import UIKit

class ImageCell: UITableViewCell {

    @IBOutlet weak var imageViewItem: UIImageView!
    @IBOutlet weak var textView: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
