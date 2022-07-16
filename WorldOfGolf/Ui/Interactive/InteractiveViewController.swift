//
//  InteractiveViewController.swift
//  WorldOfGolf
//
//  Created by Cem Sertkaya on 16.07.2022.
//

import UIKit

class InteractiveViewController: UIViewController {
    let uiGlobal = UIGlobal.shared
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = uiGlobal.createBackButtonItem(title: "Interactive")
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
