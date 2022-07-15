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
    
    @objc func buttonTapped(_ sender: UIButton) {
        switch sender.tag{
        case 1:
            print("")
        default:
            print("Error")
        }
    }

}

extension MenuViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func guardTableView(title: String ,indexPath: IndexPath) -> MenuSecondTableViewCell{
        guard let cellForReturn = tableView.dequeueReusableCell(withIdentifier: "secondTableViewCell",for: indexPath) as? MenuSecondTableViewCell
        else
        {
            assertionFailure("Cannot dequeue reusable cell \(MenuSecondTableViewCell.self) with reuseIdentifier: tableViewCell")
            return MenuSecondTableViewCell()
        }
        cellForReturn.button.setTitle(title, for: .normal)
        cellForReturn.button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        cellForReturn.button.tag = indexPath.row
        return cellForReturn
    }
    
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row{
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "firstTableViewCell",for: indexPath) as? MenuFirstTableViewCell
            else
            {
                assertionFailure("Cannot dequeue reusable cell \(MenuFirstTableViewCell.self) with reuseIdentifier: tableViewCell")
                return UITableViewCell()
            }
            cell.button.setTitle("INTERACTIVE", for: .normal)
            return cell
        case 1:
            return guardTableView(title: "MAIN", indexPath: indexPath)
        case 2:
            return guardTableView(title: "RULES", indexPath: indexPath)
        case 3:
            return guardTableView(title: "DETAILS", indexPath: indexPath)
        case 4:
            return guardTableView(title: "INVENTORY", indexPath: indexPath)
        case 5:
            return guardTableView(title: "WORLD CHAMPIONSHIPS", indexPath: indexPath)
        case 6:
            return guardTableView(title: "FAMOUS ATHLETES", indexPath: indexPath)
        default:
            return guardTableView(title: "", indexPath: indexPath)
        }
       
    }
}
