//
//  ChampionshipsViewController.swift
//  WorldOfGolf
//
//  Created by Deniz Eren Gençay on 15.07.2022.
//

import UIKit

class ChampionshipsViewController: UIViewController {
    let uiGlobal = UIGlobal.shared
    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = uiGlobal.createBackButtonItem(title: "world_championships".localized())
        textView.text = "world_championsships_text".localized()
    }
}
