//
//  FirstScreen.swift
//  Beginner-Programatic-UI
//
//  Created by Sean Allen on 10/16/18.
//  Copyright © 2018 Sean Allen. All rights reserved.
//

import UIKit

class FirstScreen: UIViewController {
    
    let nextButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNextButton()
        
        view.backgroundColor = .green
    }
    
    
    func setupNextButton() {
        nextButton.backgroundColor = .white
        nextButton.setTitleColor(.red, for: .normal)
        nextButton.setTitle("NEXT", for: .normal)
        
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        
        view.addSubview(nextButton)
        setNextButtonConstraints()
    }
    
    
    @objc func nextButtonTapped() {
        let nextScreen = SecondScreen()
        nextScreen.title = "Ahhhh yeah"
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    
    func setNextButtonConstraints() {
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
