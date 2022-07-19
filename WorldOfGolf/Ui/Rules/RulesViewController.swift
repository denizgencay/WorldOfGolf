//
//  RulesViewController.swift
//  WorldOfGolf
//
//  Created by Deniz Eren Gençay on 15.07.2022.
//

import UIKit


class Section{
    let title: String
    let options: [String]
    var isOpened: Bool = false
    
    init(
        title: String,
        options: [String],
        isOpened: Bool = false
    ){
        self.title = title
        self.options = options
        self.isOpened = isOpened
    }
}

class RulesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let uiGlobal = UIGlobal.shared

    @IBOutlet weak var tableView: UITableView!
    
    private var sections = [Section]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = uiGlobal.createBackButtonItem(title: "Rules")
        tableView.delegate = self
        tableView.dataSource = self
       // tableView.rowHeight = UITableView.automaticDimension
       // tableView.estimatedRowHeight = 600
    
        
        sections = [
            Section(title: "Section 1", options: ["kahsdkflahlskdjfhkasdhfakjsdfhkahsdkflahlskdjfhkasdhfakjsdfhkahsdkflahlskdjfhkasdhfakjsdfhkahsdkflahlskdjfhkasdhfakjsdfhkahsdkflahlskdjfhkasdhfakjsdfhkahsdkflahlskdjfhkasdhfakjsdfhkahsdkflahlskdjfhkasdhfakjsdfhkahsdkflahlskdjfhkasdhfakjsdfhkahsdkflahlskdjfhkasdhfakjsdfhkahsdkflahlskdjfhkasdhfakjsdfhkahsdkflahlskdjfhkasdhfakjsdfhkahsdkflahlskdjfhkasdhfakjsdfhkahsdkflahlskdjfhkasdhfakjsdfhkahsdkflahlskdjfhkasdhfakjsdfhkahsdkflahlskdjfhkasdhfakjsdfhkahsdkflahlskdjfhkasdhfakjsdfhkahsdkflahlskdjfhkasdhfakjsdfhkahsdkflahlskdjfhkasdhfakjsdfhkahsdkflahlskdjfhkasdhfakjsdfhkahsdkflahlskdjfhkasdhfakjsdfhkahsdkflahlskdjfhkasdhfakjsdfhkahsdkflahlskdjfhkasdhfakjsdfhkahsdkflahlskdjfhkasdhfakjsdfhkahsdkflahlskdjfhkasdhfakjsdfh"]),
            Section(title: "Section 2", options: [1, 2, 3].compactMap({return "Cell \($0)"})),
            Section(title: "Section 3", options: [1, 2, 3].compactMap({return "Cell \($0)"})),
            Section(title: "Section 4", options: [1, 2, 3].compactMap({return "Cell \($0)"}))
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "expandableViewCell", for: indexPath)
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
































