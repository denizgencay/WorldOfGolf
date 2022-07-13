//
//  MenuViewController.swift
//  WorldOfGolf
//
//  Created by Deniz Eren Gençay on 13.07.2022.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension MenuViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "firstTableViewCell",for: indexPath) as? MenuFirstTableViewCell
            else
            {
                assertionFailure("Cannot dequeue reusable cell \(MenuFirstTableViewCell.self) with reuseIdentifier: tableViewCell")
                return UITableViewCell()
            }
            return cell
        }else{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "secondTableViewCell",for: indexPath) as? MenuSecondTableViewCell
            else
            {
                assertionFailure("Cannot dequeue reusable cell \(MenuSecondTableViewCell.self) with reuseIdentifier: tableViewCell")
                return UITableViewCell()
            }
            return cell
        }
       
        
    }
}
