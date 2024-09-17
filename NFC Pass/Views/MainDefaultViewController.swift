//
//  MainDefaultViewController.swift
//  NFC Pass
//
//  Created by Sergey Patrakov on 17.09.2024.
//

import UIKit

class MainDefaultViewController: UIViewController {
    
    private lazy var logo = UIImageView()
    private lazy var settings = UIImageView()
    private lazy var label = UILabel()
    private lazy var keyLocked = UIImageView()
    private lazy var circleShadeBig = UIView()
    private lazy var circleShadeMedium = UIView()
    private lazy var circleShadeSmall = UIView()
    private lazy var circleWhiteBig = UIView()
    private lazy var circleWhiteMedium = UIView()
    private lazy var circleWhiteSmall = UIView()
    private lazy var text = UILabel()
    lazy var button = UIButton()
    
    override func viewWillAppear(_ animated: Bool) { // delete "Back" button
         super.viewWillAppear(animated)
         navigationItem.hidesBackButton = true
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
        configurateKeyLocked()
        configurateText()
        configurateButton()
        buttonDefault()
    }
    
    private func configurateCircles() {
        circleShadeBig = createShadeCirclesView()
        circleShadeBig.layer.cornerRadius = 130
        view.addSubview(circleShadeBig)
        
        circleWhiteBig = createWhiteCirclesView()
        circleWhiteBig.layer.cornerRadius = 117
        view.addSubview(circleWhiteBig)
        
        circleShadeMedium = createShadeCirclesView()
        circleShadeMedium.layer.cornerRadius = 104
        view.addSubview(circleShadeMedium)
        
        circleWhiteMedium = createWhiteCirclesView()
        circleWhiteMedium.layer.cornerRadius = 91
        view.addSubview(circleWhiteMedium)
        
        circleShadeSmall = createShadeCirclesView()
        circleShadeSmall.layer.cornerRadius = 78
        view.addSubview(circleShadeSmall)
        
        circleWhiteSmall = createWhiteCirclesView()
        circleWhiteSmall.layer.cornerRadius = 65
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
            circleWhiteBig.widthAnchor.constraint(equalToConstant: 234),
            circleWhiteBig.heightAnchor.constraint(equalTo: circleWhiteBig.widthAnchor),
            
            circleWhiteMedium.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            circleWhiteMedium.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            circleWhiteMedium.widthAnchor.constraint(equalToConstant: 182),
            circleWhiteMedium.heightAnchor.constraint(equalTo: circleWhiteMedium.widthAnchor),
            
            circleWhiteSmall.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            circleWhiteSmall.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            circleWhiteSmall.widthAnchor.constraint(equalToConstant: 130),
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
        settings.image = UIImage(named: "settings")
        settings.contentMode = .scaleToFill
        settings.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            settings.widthAnchor.constraint(equalToConstant: 24),
            settings.heightAnchor.constraint(equalToConstant: 24),
            settings.topAnchor.constraint(equalTo: view.topAnchor, constant: 63),
            settings.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
    }
    
    private func configurateText() {
        view.addSubview(text)
        text.text = "NFC: выключен"
        text.textColor = UIColor.shade3
        text.font = .systemFont(ofSize: 16)
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
        label.font = .systemFont(ofSize: 20)
        
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
    
    private func configurateKeyLocked() {
        view.addSubview(keyLocked)
        keyLocked.image = UIImage(named: "keyLocked")
        keyLocked.contentMode = .scaleToFill
        keyLocked.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            keyLocked.widthAnchor.constraint(equalToConstant: 72),
            keyLocked.heightAnchor.constraint(equalToConstant: 72),
            keyLocked.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            keyLocked.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    private func buttonDefault() {
        button.setTitle("Активировать пропуск", for: .normal)
        button.backgroundColor = UIColor.accent
        button.setTitleColor(UIColor.white, for: .normal)
        button.addTarget(self, action: #selector(pushButtonAction), for: .touchUpInside)
    }

    @objc func pushButtonAction() {
        let controller = MainActiveViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
}

extension MainDefaultViewController {
    
    func configurateButton() {
        view.addSubview(button)
        button.layer.cornerRadius = 20
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

