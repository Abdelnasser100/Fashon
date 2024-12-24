//
//  ForgotPasswordViewController.swift
//  Fashon
//
//  Created by SA on 12/12/24.
//

import UIKit

class ForgotPasswordViewController: UIViewController {
    
    @IBOutlet weak var forgotPasswordLabel: UILabel!
    @IBOutlet weak var userNameView: UIView!
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var sendBut: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        userNameView.addLayer()
        sendBut.addLayer()
    }
    

    

}
