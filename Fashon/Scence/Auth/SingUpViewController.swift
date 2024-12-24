//
//  SingUpViewController.swift
//  Fashon
//
//  Created by SA on 12/12/24.
//

import UIKit

class SingUpViewController: UIViewController {
    
    @IBOutlet weak var singUpLabel: UILabel!
    @IBOutlet weak var userNameView: UIView!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var singUpButtonLayout: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmpasswordView: UIView!
    @IBOutlet weak var confirmpasswordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        userNameView.addLayer()
        passwordView.addLayer()
        confirmpasswordView.addLayer()
        singUpButtonLayout.addLayer()
        
    }
    

   

}
