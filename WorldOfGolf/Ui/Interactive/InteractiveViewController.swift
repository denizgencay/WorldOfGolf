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
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = uiGlobal.createBackButtonItem(title: "interactive".localized())
        
        ball1.tag = 1
        ball2.tag = 2
        ball3.tag = 3
        ball4.tag = 4
        ball5.tag = 5
        makeTouchableImage(image: ball1)
        makeTouchableImage(image: ball2)
        makeTouchableImage(image: ball3)
        makeTouchableImage(image: ball4)
        makeTouchableImage(image: ball5)
        
        
    }
    
    func makeTouchableImage(image : UIImageView)
    {
        let cameraTap = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped(_:)))

        image.isUserInteractionEnabled = true
        image.addGestureRecognizer(cameraTap)
    }
                                               
    @objc private func imageTapped(_ sender : UIGestureRecognizer)
    {
        popUpView.center = view.center
       
        if sender.view?.tag == 1
        {
            popUpView.text = "first_interactive_text".localized().uppercased()
        }
        else if sender.view?.tag == 2
        {
            popUpView.text = "second_interactive_text".localized().uppercased()
        }
        else if sender.view?.tag == 3
        {
            popUpView.text = "third_interactive_text".localized().uppercased()
        }
        else if sender.view?.tag == 4
        {
            popUpView.text = "fourth_interactive_text".localized().uppercased()
        }
        else if sender.view?.tag == 5
        {
            popUpView.text = "fifth_interactive_text".localized().uppercased()
        }
        popUpView.sizeToFit()
        view.addSubview(popUpView)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
           let touch = touches.first
           if touch?.view != self.popUpView
           {
               popUpView.removeFromSuperview()
           }
    }
    
    

}
