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
  
   
    @IBOutlet weak var textView: UITextView!
    
  
    @IBOutlet weak var tableView: UITableView!
    
    private var sections = [Section]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = uiGlobal.createBackButtonItem(title: "rules".localized())
        tableView.delegate = self
        tableView.dataSource = self
        textView.text = "rules_text".localized()
        
        sections =
        [
            Section(title: "beat".localized(), options: ["first_rule_screen_paragraph".localized()]),
            Section(title: "ball_game".localized(), options: ["second_rule_screen_paragraph".localized()]),
            Section(title: "deflecting_or_stopping_a_moving_ball".localized(), options: ["third_rule_screen_paragraph".localized()]),
            Section(title: "raising_throwing_in_and_setting_the_ball".localized(), options: ["fourth_rule_screen_paragraph".localized()]),
            Section(title: "raising_throwing_in_and_setting_the_ball".localized(), options: ["fifth_rule_screen_paragraph".localized()]),
            Section(title: "free_interference".localized(), options: ["sixth_rule_screen_paragraph".localized()]),
            Section(title: "movable_obstacles".localized(), options: ["seventh_rule_screen_paragraph".localized()]),
            Section(title: "immovable_obstacles_and_abnormal_condition_of_the_field_area".localized(), options: ["eighth_rule_screen_paragraph".localized()]),
            Section(title: "water_barriers".localized(), options: ["nineth_rule_screen_paragraph".localized()]),
            Section(title: "ball_is_lost_or_out_of_bounds_temporary_ball".localized(), options: ["tenth_rule_screen_paragraph".localized()]),
            Section(title: "unplayable_ball".localized(), options: ["eleventh_rule_screen_paragraph".localized()]),
            Section(title: "etiquette".localized(), options: ["twelfth_rule_screen_paragraph".localized()]),
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
        
       
        if indexPath.row == 0
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "expandableViewCell", for: indexPath) as? ExpandableViewCell
            cell!.selectionStyle = .none
            cell?.textLabel?.numberOfLines = 0
            cell?.textLabel?.textColor = UIColor.white
            cell!.label.text = sections[indexPath.section].title
            return cell!
        }else
        {
            let cellFull = tableView.dequeueReusableCell(withIdentifier: "expandedCell", for: indexPath) as? ExpandedTableViewCell
            cellFull!.label?.text = sections[indexPath.section].options[indexPath.row - 1]
            cellFull!.selectionStyle = .none
            cellFull!.label?.numberOfLines = 0
            cellFull!.label?.textColor = UIColor.white
            return cellFull!
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        sections[indexPath.section].isOpened = !sections[indexPath.section].isOpened
        tableView.reloadSections([indexPath.section], with: .middle)
        
    }

}
































