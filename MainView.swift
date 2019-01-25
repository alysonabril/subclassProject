//
//  MainView.swift
//  subclassingProject
//
//  Created by Alyson Abril on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class MainView: UIView {

    lazy var textField: UITextField = {
        let tf = UITextField()
        tf.backgroundColor = .white
        tf.textColor = .black
        return tf
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(textField)
        setContraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setContraints() {
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        textField.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        textField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -45).isActive = true
        textField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 45).isActive = true
    }
    
}
