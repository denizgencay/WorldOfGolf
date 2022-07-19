//
//  MainViewController.swift
//  WorldOfGolf
//
//  Created by Deniz Eren Gençay on 15.07.2022.
//

import UIKit

class MainViewController: UIViewController
{

    @IBOutlet weak var tableView: UITableView!
    let uiGlobal = UIGlobal.shared
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = uiGlobal.createBackButtonItem(title: "Main")
        tableView.delegate = self
        tableView.dataSource = self
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

extension MainViewController: UITableViewDelegate, UITableViewDataSource
{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {return 2}
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        switch indexPath.row
        {
            case 0:
                guard let cell = tableView.dequeueReusableCell(withIdentifier: "imageCell",for: indexPath) as? ImageCell
                else
                {
                    assertionFailure("Cannot dequeue reusable cell \(ImageCell.self) with reuseIdentifier: imageCell")
                    return UITableViewCell()
                }
               
                return cell
            default:
                guard let cell = tableView.dequeueReusableCell(withIdentifier: "expandableCell",for: indexPath) as? ExpandableTableViewCell
                else
                {
                    assertionFailure("Cannot dequeue reusable cell \(ExpandableTableViewCell.self) with reuseIdentifier: expandableCell")
                    return UITableViewCell()
                }
               
                return cell
                
            
        }
    }
}
