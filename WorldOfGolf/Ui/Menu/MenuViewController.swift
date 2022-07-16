//
//  MenuViewController.swift
//  WorldOfGolf
//
//  Created by Deniz Eren Gençay on 13.07.2022.
//

import UIKit

class MenuViewController: UIViewController
{

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @objc func buttonTapped(_ sender: UIButton)
    {
        switch sender.tag
        {
            case 1: self.performSegue(withIdentifier: "toMain", sender: self)
            case 2: self.performSegue(withIdentifier: "toRules", sender: self)
            case 3: self.performSegue(withIdentifier: "toDetails", sender: self)
            case 4: self.performSegue(withIdentifier: "toInventory", sender: self)
            case 5: self.performSegue(withIdentifier: "toChampionships", sender: self)
            case 6: self.performSegue(withIdentifier: "toAthletes", sender: self)
            default:print("Error")
        }
    }

}

extension MenuViewController: UITableViewDelegate, UITableViewDataSource
{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {return 7}
    
    func initCell(title: String ,indexPath: IndexPath, imagePath : String) -> MenuSecondTableViewCell
    {
        guard let cellForReturn = tableView.dequeueReusableCell(withIdentifier: "secondTableViewCell",for: indexPath) as? MenuSecondTableViewCell
        else
        {
            assertionFailure("Cannot dequeue reusable cell \(MenuSecondTableViewCell.self) with reuseIdentifier: tableViewCell")
            return MenuSecondTableViewCell()
        }
        cellForReturn.button.setTitle(title, for: .normal)
        cellForReturn.button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        cellForReturn.button.tag = indexPath.row
        
        
        var configuration = UIButton.Configuration.plain()
        configuration.image =  UIImage(named: imagePath)!.resizedImage(Size: CGSize(width: 40, height: 40))!
        configuration.titlePadding = 10
        configuration.imagePadding = 10
        configuration.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 10)
       
        cellForReturn.button.configuration = configuration
        return cellForReturn
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        switch indexPath.row
        {
            case 0:
                guard let cell = tableView.dequeueReusableCell(withIdentifier: "firstTableViewCell",for: indexPath) as? MenuFirstTableViewCell
                else
                {
                    assertionFailure("Cannot dequeue reusable cell \(MenuFirstTableViewCell.self) with reuseIdentifier: tableViewCell")
                    return UITableViewCell()
                }
                cell.button.setTitle("INTERACTIVE", for: .normal)
                return cell
            case 1: return initCell(title: "MAIN", indexPath: indexPath,imagePath: "main")
            case 2: return initCell(title: "RULES", indexPath: indexPath,imagePath: "rules")
            case 3: return initCell(title: "DETAILS", indexPath: indexPath, imagePath: "details")
            case 4: return initCell(title: "INVENTORY", indexPath: indexPath, imagePath: "inventory")
            case 5: return initCell(title: "WORLD CHAMPIONSHIPS", indexPath: indexPath, imagePath: "worldchamp")
            case 6: return initCell(title: "FAMOUS ATHLETES", indexPath: indexPath, imagePath: "famous")
            default: return initCell(title: "", indexPath: indexPath, imagePath: "")
        }
    }
}
