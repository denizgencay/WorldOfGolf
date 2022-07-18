//
//  InteractiveViewController.swift
//  WorldOfGolf
//
//  Created by Cem Sertkaya on 16.07.2022.
//

import UIKit

class InteractiveViewController: UIViewController {
    @IBOutlet weak var ball1: UIImageView!
    @IBOutlet weak var ball2: UIImageView!
    @IBOutlet weak var ball3: UIImageView!
    @IBOutlet weak var ball4: UIImageView!
    @IBOutlet weak var ball5: UIImageView!
    @IBOutlet var popUpView: UITextView!

    let uiGlobal = UIGlobal.shared
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = uiGlobal.createBackButtonItem(title: "Interactive")
        makeTouchableImage(image: ball1)
        makeTouchableImage(image: ball2)
        makeTouchableImage(image: ball3)
        makeTouchableImage(image: ball4)
        makeTouchableImage(image: ball5)
        
    }
    
    func makeTouchableImage(image : UIImageView)
    {
        let cameraTap = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        image.isUserInteractionEnabled = true
        image.addGestureRecognizer(cameraTap)
    }
                                               
    @objc func imageTapped()
    {
        popUpView.center = view.center
       
       
        view.addSubview(popUpView)
    }
    

    
    

}
