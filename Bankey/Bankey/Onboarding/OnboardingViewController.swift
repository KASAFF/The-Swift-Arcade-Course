//
//  OnboardingViewController.swift
//  Bankey
//
//  Created by Aleksey Kosov on 30.12.2022.
//

import UIKit

class OnboardingViewController: UIViewController {

    let stackView = UIStackView()
    let imageView = UIImageView()
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        style()
        layout()
    }
}

extension OnboardingViewController {
    func style() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20

        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "delorean")

        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = .preferredFont(forTextStyle: .title3)
        label.adjustsFontForContentSizeCategory = true
        label.numberOfLines = 0
        label.text = "Bankey is fater, easier to use, and has a brand new look and feel that will make you feel like you back in 1989."

    }

    func layout() {
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(label)

        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1)
        ])

    }
}
