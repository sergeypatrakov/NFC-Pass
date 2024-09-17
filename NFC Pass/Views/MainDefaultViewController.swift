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
    private lazy var circleShade1 = UIView()
    private lazy var circleShade2 = UIView()
    private lazy var circleShade3 = UIView()
    private lazy var circleWhite1 = UIView()
    private lazy var circleWhite2 = UIView()
    private lazy var circleWhite3 = UIView()
    lazy var button = UIButton()
    
//    override func viewWillAppear(_ animated: Bool) { // delete "Back" button
//         super.viewWillAppear(animated)
//         navigationItem.hidesBackButton = true
//     }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupLayout()
    }
    
    private func setupLayout() {
        configurateLogo()
        configurateSettings()
        configurateLabel()
        configurateCircles()
        configurateKeyLocked()
        configurateButton()
        buttonDefault()
    }
    
    private func configurateCircles() {
//        circleShade1 = createShadeCirclesView()
//        circleShade2 = createShadeCirclesView()
        circleShade3 = createShadeCirclesView()
//        circleShade1.layer.cornerRadius = 130
//        circleShade2.layer.cornerRadius = 104
        circleShade3.layer.cornerRadius = 78
        view.addSubview(circleShade3)
//        view.addSubview(circleShade2)
//        view.addSubview(circleShade1)
        
        NSLayoutConstraint.activate([
//            circleShade1.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
//            circleShade1.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            circleShade1.widthAnchor.constraint(equalToConstant: 260),
//            circleShade1.heightAnchor.constraint(equalTo: circleShade1.widthAnchor),
            
//            circleShade2.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
//            circleShade2.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            circleShade2.widthAnchor.constraint(equalToConstant: 208),
//            circleShade2.heightAnchor.constraint(equalTo: circleShade2.widthAnchor),
            
            circleShade3.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            circleShade3.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            circleShade3.widthAnchor.constraint(equalToConstant: 156),
            circleShade3.heightAnchor.constraint(equalTo: circleShade3.widthAnchor),
        ])
        
//        circleWhite1 = createWhiteCirclesView()
//        circleWhite2 = createWhiteCirclesView()
        circleWhite3 = createWhiteCirclesView()
//        circleWhite1.layer.cornerRadius = 117
//        circleWhite2.layer.cornerRadius = 91
        circleWhite3.layer.cornerRadius = 65
        view.addSubview(circleWhite3)
//        view.addSubview(circleWhite2)
//        view.addSubview(circleWhite1)
        
        NSLayoutConstraint.activate([
//            circleWhite1.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
//            circleWhite1.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            circleWhite1.widthAnchor.constraint(equalToConstant: 234),
//            circleWhite1.heightAnchor.constraint(equalTo: circleWhite1.widthAnchor),
//            
//            circleWhite2.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
//            circleWhite2.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            circleWhite2.widthAnchor.constraint(equalToConstant: 182),
//            circleWhite2.heightAnchor.constraint(equalTo: circleWhite2.widthAnchor),
            
            circleWhite3.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            circleWhite3.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            circleWhite3.widthAnchor.constraint(equalToConstant: 130),
            circleWhite3.heightAnchor.constraint(equalTo: circleWhite3.widthAnchor),
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
    
    private func configurateLabel() {
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

