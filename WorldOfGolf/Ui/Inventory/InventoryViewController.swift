//
//  InventoryViewController.swift
//  WorldOfGolf
//
//  Created by Deniz Eren Gençay on 15.07.2022.
//

import UIKit

class InventoryViewController: UIViewController {
    let uiGlobal = UIGlobal.shared
    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = uiGlobal.createBackButtonItem(title: "inventory".localized())
        textView.text = "inventory_text".localized()
    }
    

}
