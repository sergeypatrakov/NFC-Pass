//
//  SettingsViewController.swift
//  NFC Pass
//
//  Created by Sergey Patrakov on 17.09.2024.
//

import UIKit

class SettingsViewController: UIViewController {
    
    private lazy var backButton = UIButton()
    private lazy var button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        setupLayout()
    }
    
    private func setupLayout() {
        configurateBackButton()
        configurateButton()
        configurateExitButton()
    }
    
    private func configurateBackButton() {
        view.addSubview(backButton)
        if let image = UIImage(named: "backButton") {
            backButton.setImage(image, for: .normal)
        }

        backButton.addTarget(self, action: #selector(goToBack), for: .touchUpInside)
        
        backButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backButton.widthAnchor.constraint(equalToConstant: 24),
            backButton.heightAnchor.constraint(equalToConstant: 24),
            backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 87),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
        ])
    }
    
    private func configurateExitButton() {
        button.setTitle("Выйти из аккаунта", for: .normal)
        button.backgroundColor = UIColor.redSoft
        button.setTitleColor(UIColor.red, for: .normal)
//        button.addTarget(self, action: #selector(pushButtonAction), for: .touchUpInside)
    }
    
    @objc func goToBack() {
        self.navigationController?.popViewController(animated: true)
    }
}

extension SettingsViewController {
    func configurateButton() {
        view.addSubview(button)
        button.layer.cornerRadius = 20
        if let alsSiriusBold = UIFont(name: "ALSSirius-Bold", size: 16) {
            button.titleLabel?.font = alsSiriusBold
        }
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.widthAnchor.constraint(equalToConstant: 350),
            button.heightAnchor.constraint(equalToConstant: 55)
        ])
    }
}
