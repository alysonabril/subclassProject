//
//  MainViewController.swift
//  subclassingProject
//
//  Created by Alyson Abril on 1/25/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    let mainView = MainView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        view.addSubview(mainView)
        mainView.delegate = self
    }
    

}

extension MainViewController: MainViewDelegate {
    func seguePressed() {
        self.navigationController?.pushViewController(DetailViewController(), animated: true)
    }
}
