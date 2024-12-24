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
        
        userNameView.addLayer()
        passwordView.addLayer()
        loginButtonLayout.addLayer()
    }

    @IBAction func forgotPasswordButtonTapped(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "ForgotPasswordViewController")
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "SingUpViewController")
        navigationController?.pushViewController(viewController, animated: true)
    }
    

}



