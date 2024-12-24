//
//  ExUIView.swift
//  Fashon
//
//  Created by SA on 12/12/24.
//

import UIKit


extension UIView{
    func  addLayer(){
        self.layer.cornerRadius = 10
        self.layer.shadowColor = UIColor.lightGray.cgColor
        self.layer.shadowOffset = CGSize(width: 2, height: 3)
        let shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: 10)
        self.layer.shadowPath = shadowPath.cgPath
        self.layer.shadowOpacity = 0.5
    }
}
