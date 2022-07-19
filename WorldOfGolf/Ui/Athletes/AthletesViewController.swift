//
//  Athletes.swift
//  WorldOfGolf
//
//  Created by Deniz Eren Gençay on 15.07.2022.
//

import UIKit

class AthletesViewController: UIViewController {
    let uiGlobal = UIGlobal.shared
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = uiGlobal.createBackButtonItem(title: "Athletes")

        // Do any additional setup after loading the view.
    }

    
}
