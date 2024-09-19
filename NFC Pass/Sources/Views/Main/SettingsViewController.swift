//
//  SettingsViewController.swift
//  NFC Pass
//
//  Created by Sergey Patrakov on 17.09.2024.
//

import UIKit

class SettingsViewController: UIViewController {
    
    private lazy var settingContainer = UIView()
    
    private lazy var profilePhoto = UIImageView()
    private lazy var profileName = UILabel()
    private lazy var profileInfo = UILabel()
    
    private lazy var theme = UILabel()
    private lazy var themeInfo = UILabel()
    
    private lazy var about = UILabel()
    private lazy var support = UILabel()
    private lazy var policy = UILabel()
    
    private lazy var arrowAbout = UIImageView()
    private lazy var arrowSupport = UIImageView()
    private lazy var arrowPolicy = UIImageView()
    
    private lazy var aboutButton = UIButton()
    private lazy var supportButton = UIButton()
    private lazy var policyButton = UIButton()
    
    private lazy var backButton = UIButton()
    private lazy var button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        setupLayout()
    }
    
    private func setupLayout() {
        configurateContainer()
        configurateProfileName()
        configurateProfileInfo()
        configurateProfilePhoto()
        configurateTheme()
        configurateThemeInfo()
        configurateAbout()
        configurateArrowAbout()
        configurateAboutButton()
        configurateSupport()
        configurateArrowSupport()
        configurateSupportButton()
        configuratePolicy()
        configurateArrowPolicy()
        configuratePolicyButton()
        configurateBackButton()
        configurateButton()
        configurateExitButton()
    }
    
    private func configurateContainer() {
        view.addSubview(settingContainer)
        settingContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            settingContainer.widthAnchor.constraint(equalToConstant: view.frame.width),
            settingContainer.heightAnchor.constraint(equalToConstant: view.frame.height/2.0),
            settingContainer.topAnchor.constraint(equalTo: view.topAnchor, constant: 103),
            settingContainer.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    private func configurateProfileName() {
        view.addSubview(profileName)
        profileName.text = "Губский Никита"
        profileName.font = UIFont(name: "ALSSirius-Bold", size: 26)
        profileName.textColor = UIColor.black
        profileName.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            profileName.widthAnchor.constraint(equalToConstant: 217),
            profileName.heightAnchor.constraint(equalToConstant: 32),
            profileName.topAnchor.constraint(equalTo: settingContainer.topAnchor, constant: 0),
            profileName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
        ])
    }
    
    private func configurateProfileInfo() {
        view.addSubview(profileInfo)
        profileInfo.text = "272201 группа 2 курс"
        profileInfo.font = UIFont(name: "ALSSirius-Regular", size: 14)
        profileInfo.textColor = UIColor.shade3
        profileInfo.numberOfLines = 0
        profileInfo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            profileInfo.widthAnchor.constraint(equalToConstant: 99),
            profileInfo.heightAnchor.constraint(equalToConstant: 36),
            profileInfo.topAnchor.constraint(equalTo: profileName.bottomAnchor, constant: 0),
            profileInfo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
        ])
    }
    
    private func configurateProfilePhoto() {
        view.addSubview(profilePhoto)
        profilePhoto.image = UIImage(named: "profilePhoto")
        profilePhoto.contentMode = .scaleAspectFill
        profilePhoto.clipsToBounds = true
        profilePhoto.layer.cornerRadius = 35
        profilePhoto.layer.masksToBounds = true
        
        profilePhoto.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            profilePhoto.widthAnchor.constraint(equalToConstant: 70),
            profilePhoto.heightAnchor.constraint(equalToConstant: 70),
            profilePhoto.topAnchor.constraint(equalTo: settingContainer.topAnchor, constant: 0),
            profilePhoto.trailingAnchor.constraint(equalTo: settingContainer.trailingAnchor, constant: -16)
        ])
    }
    
    private func configurateTheme() {
        view.addSubview(theme)
        theme.text = "Тема"
        theme.font = UIFont(name: "ALSSirius-Regular", size: 16)
        theme.textColor = UIColor.black
        theme.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            theme.widthAnchor.constraint(equalToConstant: 40),
            theme.heightAnchor.constraint(equalToConstant: 22),
            theme.topAnchor.constraint(equalTo: profileInfo.bottomAnchor, constant: 20),
            theme.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
        ])
    }
    
    private func configurateThemeInfo() {
        view.addSubview(themeInfo)
        themeInfo.text = "Светлая"
        themeInfo.font = UIFont(name: "ALSSirius-Regular", size: 14)
        themeInfo.textColor = UIColor.shade3
        themeInfo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            themeInfo.widthAnchor.constraint(equalToConstant: 100),
            themeInfo.heightAnchor.constraint(equalToConstant: 18),
            themeInfo.topAnchor.constraint(equalTo: theme.bottomAnchor, constant: 0),
            themeInfo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
        ])
    }
    
    private func configurateAbout() {
        view.addSubview(about)
        about.text = "О приложении"
        about.font = UIFont(name: "ALSSirius-Regular", size: 16)
        about.textColor = UIColor.black
        about.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            about.widthAnchor.constraint(equalToConstant: 260),
            about.heightAnchor.constraint(equalToConstant: 24),
            about.topAnchor.constraint(equalTo: themeInfo.bottomAnchor, constant: 20),
            about.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
        ])
    }
    
    private func configurateArrowAbout() {
        view.addSubview(arrowAbout)
        arrowAbout.image = UIImage(named: "arrow")
        arrowAbout.contentMode = .scaleToFill
        arrowAbout.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            arrowAbout.widthAnchor.constraint(equalToConstant: 24),
            arrowAbout.heightAnchor.constraint(equalToConstant: 24),
            arrowAbout.topAnchor.constraint(equalTo: about.topAnchor, constant: 0),
            arrowAbout.trailingAnchor.constraint(equalTo: settingContainer.trailingAnchor, constant: -16)
        ])
    }
    
    private func configurateAboutButton() {
        view.addSubview(aboutButton)

        aboutButton.addTarget(self, action: #selector(goToAbout), for: .touchUpInside)
        
        aboutButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            aboutButton.widthAnchor.constraint(equalToConstant: view.frame.width),
            aboutButton.heightAnchor.constraint(equalToConstant: 22),
            aboutButton.topAnchor.constraint(equalTo: about.topAnchor, constant: 0)
        ])
    }
    
    private func configurateSupport() {
        view.addSubview(support)
        support.text = "Поддержка"
        support.font = UIFont(name: "ALSSirius-Regular", size: 16)
        support.textColor = UIColor.black
        support.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            support.widthAnchor.constraint(equalToConstant: 260),
            support.heightAnchor.constraint(equalToConstant: 24),
            support.topAnchor.constraint(equalTo: about.bottomAnchor, constant: 20),
            support.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
        ])
    }
    
    private func configurateArrowSupport() {
        view.addSubview(arrowSupport)
        arrowSupport.image = UIImage(named: "arrow")
        arrowSupport.contentMode = .scaleToFill
        arrowSupport.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            arrowSupport.widthAnchor.constraint(equalToConstant: 24),
            arrowSupport.heightAnchor.constraint(equalToConstant: 24),
            arrowSupport.topAnchor.constraint(equalTo: support.topAnchor, constant: 0),
            arrowSupport.trailingAnchor.constraint(equalTo: settingContainer.trailingAnchor, constant: -16)
        ])
    }
    
    private func configurateSupportButton() {
        view.addSubview(supportButton)
        
        supportButton.addTarget(self, action: #selector(goToSupport), for: .touchUpInside)
        
        supportButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            supportButton.widthAnchor.constraint(equalToConstant: view.frame.width),
            supportButton.heightAnchor.constraint(equalToConstant: 22),
            supportButton.topAnchor.constraint(equalTo: support.topAnchor, constant: 0)
        ])
    }
    
    private func configuratePolicy() {
        view.addSubview(policy)
        policy.text = "Политика конфиденциальности"
        policy.font = UIFont(name: "ALSSirius-Regular", size: 16)
        policy.textColor = UIColor.black
        policy.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            policy.widthAnchor.constraint(equalToConstant: 260),
            policy.heightAnchor.constraint(equalToConstant: 24),
            policy.topAnchor.constraint(equalTo: support.bottomAnchor, constant: 20),
            policy.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)
        ])
    }
    
    private func configurateArrowPolicy() {
        view.addSubview(arrowPolicy)
        arrowPolicy.image = UIImage(named: "arrow")
        arrowPolicy.contentMode = .scaleToFill
        arrowPolicy.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            arrowPolicy.widthAnchor.constraint(equalToConstant: 24),
            arrowPolicy.heightAnchor.constraint(equalToConstant: 24),
            arrowPolicy.topAnchor.constraint(equalTo: policy.topAnchor, constant: 0),
            arrowPolicy.trailingAnchor.constraint(equalTo: settingContainer.trailingAnchor, constant: -16)
        ])
    }
    
    private func configuratePolicyButton() {
        view.addSubview(policyButton)
        
        policyButton.addTarget(self, action: #selector(goToPolicy), for: .touchUpInside)
        
        policyButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            policyButton.widthAnchor.constraint(equalToConstant: view.frame.width),
            policyButton.heightAnchor.constraint(equalToConstant: 22),
            policyButton.topAnchor.constraint(equalTo: policy.topAnchor, constant: 0)
        ])
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
            backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 65),
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
    
    @objc func goToAbout() {
        let controller = AboutViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
    @objc func goToSupport() {
        let controller = SupportViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
    @objc func goToPolicy() {
        let controller = PolicyViewController()
        navigationController?.pushViewController(controller, animated: true)
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
