//
//  ViewController.swift
//  NFC Pass
//
//  Created by Sergey Patrakov on 13.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var button = UnderButton()
    private lazy var image = UIImageView()
    private lazy var logo = UIImageView()
    private lazy var backgroundColor = UIView()
    private lazy var text = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
//        view.backgroundColor = UIColor(named: "backgroundColor")
        setupLayout()
    }
    
    private func setupLayout() {
        configurateLogo()
        configurateImage()
        configarateText()
        configurateButton()
    }
    
    private func configurateLogo() {
        view.addSubview(logo)
        logo.image = UIImage(named: "tpu_logo")
        logo.contentMode = .scaleToFill
        logo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            logo.heightAnchor.constraint(equalToConstant: view.frame.height/4),
            logo.widthAnchor.constraint(equalToConstant: view.frame.height/4),
            logo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: view.frame.height * 0.05),
            logo.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    private func configurateImage() {
        view.addSubview(image)
        image.image = UIImage(named: "background_main")
        image.contentMode = .scaleAspectFill
        image.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            image.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150),
            image.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            image.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            image.heightAnchor.constraint(equalTo: image.widthAnchor, multiplier: 0.5625)
        ])
        
        view.addSubview(backgroundColor)
        backgroundColor.translatesAutoresizingMaskIntoConstraints = false
        backgroundColor.backgroundColor = UIColor.accent
        NSLayoutConstraint.activate([
            backgroundColor.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundColor.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundColor.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundColor.topAnchor.constraint(equalTo: image.bottomAnchor)
        ])
    }

    private func configarateText() {
        view.addSubview(text)
        text.text = "Вход в приложение осуществляется через сайт ТПУ"
        text.font = UIFont(name: "ALSSirius-Regular", size: 14)
        text.textAlignment = .center
        text.textColor = UIColor.white
        text.numberOfLines = 0
        text.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            text.topAnchor.constraint(equalTo: backgroundColor.topAnchor, constant: 10),
            text.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            text.widthAnchor.constraint(equalToConstant: 259),
            text.heightAnchor.constraint(equalToConstant: 36)
        ])
    }
    
    func configurateButton() {
        let button = button.placeButton(view: view, text: "Войти в систему", color: UIColor.white, textColor: UIColor.accent)
        button.addTarget(self, action: #selector(pushButtonAction), for: .touchUpInside)
    }
    
    @objc func pushButtonAction() {
        let controller = MainViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
}
