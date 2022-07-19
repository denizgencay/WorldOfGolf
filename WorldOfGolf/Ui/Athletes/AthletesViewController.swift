//
//  Athletes.swift
//  WorldOfGolf
//
//  Created by Deniz Eren Gençay on 15.07.2022.
//

import UIKit

class AthletesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let uiGlobal = UIGlobal.shared
    
    @IBOutlet weak var tableView: UITableView!
    
    private var sections = [Section]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = uiGlobal.createBackButtonItem(title: "famous_athletes".localized())
        tableView.delegate = self
        tableView.dataSource = self
        
        sections = [
            Section(title: "Section 1", options: [""]),
            Section(title: "Section 2", options: [""]),
            Section(title: "Section 3", options: [""]),
            Section(title: "Section 4", options: [""]),
            Section(title: "Section 5", options: [""]),
        ]

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = sections[section]
        
        if section.isOpened == true{
            return section.options.count + 1
        }else{
            return 1
        }
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "famousAthletesCell", for: indexPath)
        cell.selectionStyle = .none
        cell.textLabel?.numberOfLines = 0
        if indexPath.row == 0{
            cell.textLabel?.text = sections[indexPath.section].title
        }else{
            cell.textLabel?.text = sections[indexPath.section].options[indexPath.row - 1]
        }
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        sections[indexPath.section].isOpened = !sections[indexPath.section].isOpened
        tableView.reloadSections([indexPath.section], with: .middle)
        
    }

    
}
