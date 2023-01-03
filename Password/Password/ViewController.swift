//
//  ViewController.swift
//  Password
//
//  Created by jrasmusson on 2022-01-23.
//

import UIKit

import UIKit

class ViewController: UIViewController {

    let newPasswordTextField = PasswordTextField(placeHolderText: "New password")

    let stackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension ViewController {
    func style() {
        
        newPasswordTextField.translatesAutoresizingMaskIntoConstraints = false

        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
    }
    
    func layout() {
//        stackView.addArrangedSubview(newPasswordTextField)
//
        view.addSubview(stackView)

        stackView.addArrangedSubview(newPasswordTextField)


        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 2)
        ])

        NSLayoutConstraint.activate([
//            newPasswordTextField.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
//            newPasswordTextField.trailingAnchor.constraint(equalTo: stackView.trailingAnchor),
//           newPasswordTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

    }
}
