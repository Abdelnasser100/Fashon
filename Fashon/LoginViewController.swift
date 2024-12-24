//
//  ViewController.swift
//  Fashon
//
//  Created by SA on 12/9/24.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var userNameView: UIView!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var loginButtonLayout: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addLayer(view: userNameView)
        addLayer(view: passwordView)
        addLayer(view: loginButtonLayout)
    }

    @IBAction func forgotPasswordButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        
    }
    
    
    
    func  addLayer(view:UIView){
        view.layer.cornerRadius = 10
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOffset = CGSize(width: 2, height: 3)
        let shadowPath = UIBezierPath(roundedRect: view.bounds, cornerRadius: 10)
        view.layer.shadowPath = shadowPath.cgPath
        view.layer.shadowOpacity = 0.5
    }
}

