//
//  AboutViewController.swift
//  NFC Pass
//
//  Created by Sergey Patrakov on 17.09.2024.
//

import UIKit

class AboutViewController: UIViewController {

    private lazy var titleAbout = UILabel()
    private lazy var contentAbout = UIScrollView()
    private lazy var textAbout1 = UILabel()
    private lazy var textAbout2 = UILabel()
    private lazy var textAbout3 = UILabel()
    private lazy var textAbout4 = UILabel()
    private lazy var textAbout5 = UILabel()
    
    private lazy var backButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        setupLayout()
    }
    
    private func setupLayout() {
        configurateTitle()
        configurateText()
        configurateBackButton()
    }
    
    private func configurateTitle() {
        view.addSubview(titleAbout)
        titleAbout.text = "О приложении"
        titleAbout.font = UIFont(name: "ALSSirius-Bold", size: 26)
        titleAbout.textColor = UIColor.black
        
        titleAbout.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleAbout.topAnchor.constraint(equalTo: view.topAnchor, constant: 95),
            titleAbout.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            titleAbout.widthAnchor.constraint(equalToConstant: view.frame.width),
            titleAbout.heightAnchor.constraint(equalToConstant: 32)
        ])
    }
    
    private func configurateText() {
        addTextToView()
        
        configurateAboutText1()
        configurateAboutText2()
        configurateAboutText3()
        configurateAboutText4()
        configurateAboutText5()
        
        contentAbout.translatesAutoresizingMaskIntoConstraints = false
        textAbout1.translatesAutoresizingMaskIntoConstraints = false
        textAbout2.translatesAutoresizingMaskIntoConstraints = false
        textAbout3.translatesAutoresizingMaskIntoConstraints = false
        textAbout4.translatesAutoresizingMaskIntoConstraints = false
        textAbout5.translatesAutoresizingMaskIntoConstraints = false

        setupConstraintForText()
    }
    
    private func addTextToView() {
        view.addSubview(contentAbout)
        contentAbout.addSubview(textAbout1)
        contentAbout.addSubview(textAbout2)
        contentAbout.addSubview(textAbout3)
        contentAbout.addSubview(textAbout4)
        contentAbout.addSubview(textAbout5)
    }
    
    private func configurateAboutText1() {
        textAbout1.text = "Приложение \"NFC Pass\" - это инновационное решение для эффективного управления доступом и контроля прохода на объекты с использованием технологии NFC (Near Field Communication). Наше приложение предоставляет удобный и безопасный способ управления пропусками с помощью мобильного устройства. "
        textAbout1.font = UIFont(name: "ALSSirius-Regular", size: 16)
        textAbout1.numberOfLines = 0
        textAbout1.textColor = UIColor.black
    }
    
    private func configurateAboutText2() {
        textAbout2.text = "Основные функции приложения включают в себя: "
        textAbout2.font = UIFont(name: "ALSSirius-Bold", size: 20)
        textAbout2.numberOfLines = 0
        textAbout2.textColor = UIColor.black
    }
    
    private func configurateAboutText3() {
        let titleText1 = "1. Аутентификация через NFC\n"
        let bodyText1 = "Наше приложение позволяет использовать мобильное устройство в качестве пропуска благодаря технологии NFC. Просто поднесите устройство к считывателю, чтобы получить доступ к объекту.  "
        
        let attributedString1 = NSMutableAttributedString(string: titleText1, attributes: [.font: UIFont(name: "ALSSirius-Bold", size: 16) ?? 16])
        attributedString1.append(NSAttributedString(string: bodyText1, attributes: [.font: UIFont(name: "ALSSirius-Regular", size: 16) ?? 16]))
        
        textAbout3.attributedText = attributedString1
        textAbout3.numberOfLines = 0
        textAbout3.textColor = UIColor.black
    }
    
    private func configurateAboutText4() {
        let titleText2 = "2. Многопользовательский доступ\n"
        let bodyText2 = "Приложение поддерживает множество пользователей с различными уровнями доступа, что обеспечивает гибкость в управлении системой пропусков для различных групп пользователей.  "
        
        let attributedString2 = NSMutableAttributedString(string: titleText2, attributes: [.font: UIFont(name: "ALSSirius-Bold", size: 16) ?? 16])
        attributedString2.append(NSAttributedString(string: bodyText2, attributes: [.font: UIFont(name: "ALSSirius-Regular", size: 16) ?? 16]))
        
        textAbout4.attributedText = attributedString2
        textAbout4.numberOfLines = 0
        textAbout4.textColor = UIColor.black
    }
    
    private func configurateAboutText5() {
        let titleText3 = "3. Безопасность и конфиденциальность\n"
        let bodyText3 = "Мы придаем большое значение безопасности данных и обеспечиваем шифрование информации для защиты конфиденциальности пользователей.   Приложение \"NFC Pass\" предоставляет надежное и эффективное решение для организаций, которые стремятся упростить управление доступом и повысить уровень безопасности на своих объектах. Мы гордимся тем, что помогаем нашим клиентам обеспечивать безопасность и комфорт своих сотрудников и посетителей. "
        
        let attributedString3 = NSMutableAttributedString(string: titleText3, attributes: [.font: UIFont(name: "ALSSirius-Bold", size: 16) ?? 16])
        attributedString3.append(NSAttributedString(string: bodyText3, attributes: [.font: UIFont(name: "ALSSirius-Regular", size: 16) ?? 16]))
        
        textAbout5.attributedText = attributedString3
        textAbout5.numberOfLines = 0
        textAbout5.textColor = UIColor.black
    }
    
    private func setupConstraintForText() {
        NSLayoutConstraint.activate([
            contentAbout.topAnchor.constraint(equalTo: view.topAnchor, constant: 145),
            contentAbout.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -16),
            contentAbout.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            contentAbout.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            textAbout1.topAnchor.constraint(equalTo: contentAbout.topAnchor),
            textAbout1.leadingAnchor.constraint(equalTo: contentAbout.leadingAnchor),
            textAbout1.widthAnchor.constraint(equalTo: contentAbout.widthAnchor),
            textAbout1.trailingAnchor.constraint(equalTo: contentAbout.trailingAnchor),
            
            textAbout2.topAnchor.constraint(equalTo: textAbout1.bottomAnchor, constant: 0),
            textAbout2.widthAnchor.constraint(equalTo: contentAbout.widthAnchor),
            textAbout2.leadingAnchor.constraint(equalTo: contentAbout.leadingAnchor),
            textAbout2.trailingAnchor.constraint(equalTo: contentAbout.trailingAnchor),

            textAbout3.topAnchor.constraint(equalTo: textAbout2.bottomAnchor, constant: 0),
            textAbout3.widthAnchor.constraint(equalTo: contentAbout.widthAnchor),
            textAbout3.leadingAnchor.constraint(equalTo: contentAbout.leadingAnchor),
            textAbout3.trailingAnchor.constraint(equalTo: contentAbout.trailingAnchor),

            textAbout4.topAnchor.constraint(equalTo: textAbout3.bottomAnchor, constant: 0),
            textAbout4.widthAnchor.constraint(equalTo: contentAbout.widthAnchor),
            textAbout4.leadingAnchor.constraint(equalTo: contentAbout.leadingAnchor),
            textAbout4.trailingAnchor.constraint(equalTo: contentAbout.trailingAnchor),

            textAbout5.topAnchor.constraint(equalTo: textAbout4.bottomAnchor, constant: 0),
            textAbout5.widthAnchor.constraint(equalTo: contentAbout.widthAnchor),
            textAbout5.leadingAnchor.constraint(equalTo: contentAbout.leadingAnchor),
            textAbout5.trailingAnchor.constraint(equalTo: contentAbout.trailingAnchor),
            textAbout5.bottomAnchor.constraint(equalTo: contentAbout.bottomAnchor)
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

    @objc func goToBack() {
        self.navigationController?.popViewController(animated: true)
    }
    
}
