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
            Section(title: "sam_snead".localized(), options: ["first_athletes_paragraph".localized()], imageUrl: "sam.png"),
            Section(title: "walter_hagen".localized(), options: ["second_athletes_paragraph".localized()], imageUrl: "walter.png"),
            Section(title: "bobby_jhonnes".localized(), options: ["third_athletes_paragraph".localized()], imageUrl: "bobby.png"),
            Section(title: "tiger_woods".localized(), options: ["fourth_athletes_paragraph".localized()], imageUrl: "tiger.png"),
            Section(title: "jack_nicklaus".localized(), options: ["fifth_athletes_paragraph".localized()], imageUrl: "jack.png"),
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
            let cellFull = tableView.dequeueReusableCell(withIdentifier: "athletesCell", for: indexPath) as? FamousAthletesTableViewCell
            cellFull!.athleteLabel?.text = sections[indexPath.section].options[indexPath.row - 1]
            cellFull!.selectionStyle = .none
            cellFull!.athleteLabel?.numberOfLines = 0
            cellFull!.athleteLabel?.textColor = UIColor.white
            cellFull!.athleteImage.image = UIImage(named:sections[indexPath.section].imageUrl)?.resizedImage(Size: CGSize(width: 335, height: 132))!
            return cellFull!
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        sections[indexPath.section].isOpened = !sections[indexPath.section].isOpened
        tableView.reloadSections([indexPath.section], with: .middle)
        
    }

    
}
