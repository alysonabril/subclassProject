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
    
    lazy var myButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.setTitle("Click Here", for: .normal)
        button.addTarget(self, action: #selector(saveTheThing), for: .touchUpInside)
        return button
    }()
    
    @objc func saveTheThing() {
        // self.navigationController?.pushViewController(DetailViewController(), animated: true)
    }
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(textField)
        addSubview(myButton)
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
        
        myButton.translatesAutoresizingMaskIntoConstraints = false
        myButton.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 25).isActive = true
        myButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 175).isActive = true
        
    }
    
}
