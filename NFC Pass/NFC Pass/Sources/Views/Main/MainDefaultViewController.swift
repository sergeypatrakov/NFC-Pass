//
//  MainDefaultViewController.swift
//  NFC Pass
//
//  Created by Sergey Patrakov on 17.09.2024.
//

import UIKit

class MainDefaultViewController: UIViewController {
    
    private lazy var logo = UIImageView()
    private lazy var label = UILabel()
    private lazy var keyImage = UIImageView()
    private lazy var text = UILabel()
    
    private lazy var circleShadeBig = UIView()
    private lazy var circleShadeMedium = UIView()
    private lazy var circleShadeSmall = UIView()
    private lazy var circleWhiteBig = UIView()
    private lazy var circleWhiteMedium = UIView()
    private lazy var circleWhiteSmall = UIView()
    
    private lazy var cancelButton = UIButton()
    private lazy var button = UIButton()
    private lazy var settings = UIButton()
    
    override func viewWillAppear(_ animated: Bool) { // delete "NavigationBar" button
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupLayout()
    }
    
    private func setupLayout() {
        configurateLogo()
        configurateSettings()
        configurateCircles()
        configuratekeyImage()
        configurateText()
        configurateButton()
        buttonDefault()
        buttonCancelled()
    }
    
    private func configurateCircles() {
        circleShadeBig = createShadeCirclesView()
        circleShadeBig.layer.cornerRadius = 130
        view.addSubview(circleShadeBig)
        
        circleWhiteBig = createWhiteCirclesView()
        circleWhiteBig.layer.cornerRadius = 112
        view.addSubview(circleWhiteBig)
        
        circleShadeMedium = createShadeCirclesView()
        circleShadeMedium.layer.cornerRadius = 104
        view.addSubview(circleShadeMedium)
        
        circleWhiteMedium = createWhiteCirclesView()
        circleWhiteMedium.layer.cornerRadius = 86
        view.addSubview(circleWhiteMedium)
        
        circleShadeSmall = createShadeCirclesView()
        circleShadeSmall.layer.cornerRadius = 78
        view.addSubview(circleShadeSmall)
        
        circleWhiteSmall = createWhiteCirclesView()
        circleWhiteSmall.layer.cornerRadius = 60
        view.addSubview(circleWhiteSmall)
        
        NSLayoutConstraint.activate([
            circleShadeBig.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            circleShadeBig.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            circleShadeBig.widthAnchor.constraint(equalToConstant: 260),
            circleShadeBig.heightAnchor.constraint(equalTo: circleShadeBig.widthAnchor),
            
            circleShadeMedium.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            circleShadeMedium.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            circleShadeMedium.widthAnchor.constraint(equalToConstant: 208),
            circleShadeMedium.heightAnchor.constraint(equalTo: circleShadeMedium.widthAnchor),
            
            circleShadeSmall.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            circleShadeSmall.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            circleShadeSmall.widthAnchor.constraint(equalToConstant: 156),
            circleShadeSmall.heightAnchor.constraint(equalTo: circleShadeSmall.widthAnchor),

            circleWhiteBig.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            circleWhiteBig.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            circleWhiteBig.widthAnchor.constraint(equalToConstant: 224),
            circleWhiteBig.heightAnchor.constraint(equalTo: circleWhiteBig.widthAnchor),
            
            circleWhiteMedium.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            circleWhiteMedium.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            circleWhiteMedium.widthAnchor.constraint(equalToConstant: 172),
            circleWhiteMedium.heightAnchor.constraint(equalTo: circleWhiteMedium.widthAnchor),
            
            circleWhiteSmall.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            circleWhiteSmall.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            circleWhiteSmall.widthAnchor.constraint(equalToConstant: 120),
            circleWhiteSmall.heightAnchor.constraint(equalTo: circleWhiteSmall.widthAnchor),
        ])
    }
    
    private func configurateLogo() {
        view.addSubview(logo)
        logo.image = UIImage(named: "tpu_logo_main")
        logo.contentMode = .scaleToFill
        logo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            logo.widthAnchor.constraint(equalToConstant: 36),
            logo.heightAnchor.constraint(equalToConstant: 36),
            logo.topAnchor.constraint(equalTo: view.topAnchor, constant: 57),
            logo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
        ])
    }
    
    private func configurateSettings() {
        view.addSubview(settings)
        if let image = UIImage(named: "settings") {
            settings.setImage(image, for: .normal)
        }

        settings.addTarget(self, action: #selector(goToSettingsButton), for: .touchUpInside)
        
        settings.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            settings.widthAnchor.constraint(equalToConstant: 24),
            settings.heightAnchor.constraint(equalToConstant: 24),
            settings.topAnchor.constraint(equalTo: view.topAnchor, constant: 63),
            settings.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
        ])
    }
    
    private func configurateText() {
        view.addSubview(text)
        text.text = "NFC: выключен"
        text.font = UIFont(name: "ALSSirius-Regular", size: 16)
        text.textColor = UIColor.shade3
        text.textAlignment = .center
        text.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        let attributedString = NSMutableAttributedString()
        
        let tpuAttributes: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.accent]
        let tpuString = NSAttributedString(string: "ТПУ ", attributes: tpuAttributes)
        attributedString.append(tpuString)
        
        let propuskAttributes: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.black]
        let propuskString = NSAttributedString(string: "ПРОПУСК", attributes: propuskAttributes)
        attributedString.append(propuskString)
        
        label.attributedText = attributedString
        label.font = UIFont(name: "ALSSirius-Bold", size: 20)
        
        NSLayoutConstraint.activate([
            text.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            text.topAnchor.constraint(equalTo: circleShadeBig.bottomAnchor, constant: 15),
            text.widthAnchor.constraint(equalToConstant: 120),
            text.heightAnchor.constraint(equalToConstant: 22),
            
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 62),
            label.widthAnchor.constraint(equalToConstant: 146),
            label.heightAnchor.constraint(equalToConstant: 24)
        ])
    }
    
    private func configuratekeyImage() {
        view.addSubview(keyImage)
        keyImage.image = UIImage(named: "keyLocked")
        keyImage.contentMode = .scaleToFill
        keyImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            keyImage.widthAnchor.constraint(equalToConstant: 72),
            keyImage.heightAnchor.constraint(equalToConstant: 72),
            keyImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            keyImage.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    private func buttonDefault() {
        button.setTitle("Активировать пропуск", for: .normal)
        button.backgroundColor = UIColor.accent
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(self, action: #selector(activatePass), for: .touchUpInside)
    }
    
    private func buttonCancelled() {
        cancelButton.setTitle("Отмена", for: .normal)
        if let alsSiriusBold = UIFont(name: "ALSSirius-Bold", size: 16) {
            cancelButton.titleLabel?.font = alsSiriusBold
        } else { print("Font is not exists") }
        view.addSubview(cancelButton)
        cancelButton.layer.cornerRadius = 20
        cancelButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cancelButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40),
            cancelButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cancelButton.widthAnchor.constraint(equalToConstant: 350),
            cancelButton.heightAnchor.constraint(equalToConstant: 55)
        ])
        cancelButton.backgroundColor = UIColor.accentShade
        cancelButton.setTitleColor(UIColor.black, for: .normal)
        cancelButton.isHidden = true
        cancelButton.addTarget(self, action: #selector(deactivatePass), for: .touchUpInside)
    }
    
    @objc func goToSettingsButton() {
        let controller = SettingsViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
    @objc func activatePass() {
        text.text = "NFC: включен"
        keyImage.image = UIImage(named: "keyOpened")
        
        cancelButton.isHidden = false
        button.isHidden = true
        
        circleShadeBig.backgroundColor = UIColor.accent
        circleShadeMedium.backgroundColor = UIColor.accent
        circleShadeSmall.backgroundColor = UIColor.accent
    }
    
    @objc func deactivatePass() {
        text.text = "NFC: выключен"
        keyImage.image = UIImage(named: "keyLocked")
        
        button.isHidden = false
        cancelButton.isHidden = true
        
        circleShadeBig.backgroundColor = UIColor.shade2
        circleShadeMedium.backgroundColor = UIColor.shade2
        circleShadeSmall.backgroundColor = UIColor.shade2
    }
    
}

extension MainDefaultViewController {
    
    func configurateButton() {
        view.addSubview(button)
        button.layer.cornerRadius = 20
        if let alsSiriusBold = UIFont(name: "ALSSirius-Bold", size: 16) {
            button.titleLabel?.font = alsSiriusBold
        } else {
            print("Font is not exists")
        }
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.widthAnchor.constraint(equalToConstant: 350),
            button.heightAnchor.constraint(equalToConstant: 55)
        ])
    }
    
    func createShadeCirclesView() -> UIView {
        let circleView = UIView()
        circleView.backgroundColor = UIColor.shade2
        circleView.translatesAutoresizingMaskIntoConstraints = false
        return circleView
    }
    
    func createWhiteCirclesView() -> UIView {
        let circleView = UIView()
        circleView.backgroundColor = UIColor.white
        circleView.translatesAutoresizingMaskIntoConstraints = false
        return circleView
    }
}
