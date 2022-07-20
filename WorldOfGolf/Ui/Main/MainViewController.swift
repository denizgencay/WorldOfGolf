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
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = uiGlobal.createBackButtonItem(title: "main".localized())
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
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {return 1}
    
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
            cell.textView.text = "main_screen_text".localized()
                return cell
            default:return UITableViewCell()
               
                
            
        }
    }
}

extension String{
    func localized() -> String{
        return NSLocalizedString(
            self,
            tableName: "Localizable",
            bundle: .main,
            value: self,
            comment: self
        )
    }
}
