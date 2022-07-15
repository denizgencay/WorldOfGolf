//
//  ViewController.swift
//  WorldOfGolf
//
//  Created by Deniz Eren Gençay on 13.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        backgroundImage.isUserInteractionEnabled = true
        backgroundImage.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        self.performSegue(withIdentifier: "showMainScreen", sender: self)
    }
}

