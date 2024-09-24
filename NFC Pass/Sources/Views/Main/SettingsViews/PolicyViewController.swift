//
//  PolicyViewController.swift
//  NFC Pass
//
//  Created by Sergey Patrakov on 17.09.2024.
//

import UIKit

class PolicyViewController: UIViewController {
    
    private lazy var titlePolicy1 = UILabel()
    private lazy var titlePolicy2 = UILabel()
    private lazy var contentPolicy = UIScrollView()
    private lazy var textPolicy1 = UILabel()
    private lazy var textPolicy2 = UILabel()
    private lazy var textPolicy3 = UILabel()
    private lazy var textPolicy4 = UILabel()
    private lazy var textPolicy5 = UILabel()
    private lazy var textPolicy6 = UILabel()
    private lazy var textPolicy7 = UILabel()
    private lazy var textPolicy8 = UILabel()
    private lazy var textPolicy9 = UILabel()

    private lazy var backButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        setupLayout()
    }
    
    private func setupLayout() {
        configurateTitle1()
        configurateTitle2()
        configurateText()
        configurateBackButton()
    }
    
    private func configurateTitle1() {
        view.addSubview(titlePolicy1)
        titlePolicy1.text = "Политика\n"
        titlePolicy1.font = UIFont(name: "ALSSirius-Bold", size: 26)
        titlePolicy1.numberOfLines = 0
        titlePolicy1.textColor = UIColor.black
        
        titlePolicy1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titlePolicy1.topAnchor.constraint(equalTo: view.topAnchor, constant: 95),
            titlePolicy1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            titlePolicy1.widthAnchor.constraint(equalToConstant: view.frame.width),
            titlePolicy1.heightAnchor.constraint(equalToConstant: 32)
        ])
    }
    
    private func configurateTitle2() {
        view.addSubview(titlePolicy2)
        titlePolicy2.text = "конфиденциальности\n"
        titlePolicy2.font = UIFont(name: "ALSSirius-Bold", size: 26)
        titlePolicy2.numberOfLines = 0
        titlePolicy2.textColor = UIColor.black
        
        titlePolicy2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titlePolicy2.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            titlePolicy2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            titlePolicy2.widthAnchor.constraint(equalToConstant: view.frame.width),
            titlePolicy2.heightAnchor.constraint(equalToConstant: 32)
        ])
    }
    
    private func configurateText() {
        addTextToView()
        
        configurateTextPolicy1()
        configurateTextPolicy2()
        configurateTextPolicy3()
        configurateTextPolicy4()
        configurateTextPolicy5()
        configurateTextPolicy6()
        configurateTextPolicy7()
        configurateTextPolicy8()
        configurateTextPolicy9()
        
        contentPolicy.translatesAutoresizingMaskIntoConstraints = false
        textPolicy1.translatesAutoresizingMaskIntoConstraints = false
        textPolicy2.translatesAutoresizingMaskIntoConstraints = false
        textPolicy3.translatesAutoresizingMaskIntoConstraints = false
        textPolicy4.translatesAutoresizingMaskIntoConstraints = false
        textPolicy5.translatesAutoresizingMaskIntoConstraints = false
        textPolicy6.translatesAutoresizingMaskIntoConstraints = false
        textPolicy7.translatesAutoresizingMaskIntoConstraints = false
        textPolicy8.translatesAutoresizingMaskIntoConstraints = false
        textPolicy9.translatesAutoresizingMaskIntoConstraints = false

        setupConstraintForText()
    }
    
    private func addTextToView() {
        view.addSubview(contentPolicy)
        contentPolicy.addSubview(textPolicy1)
        contentPolicy.addSubview(textPolicy2)
        contentPolicy.addSubview(textPolicy3)
        contentPolicy.addSubview(textPolicy4)
        contentPolicy.addSubview(textPolicy5)
        contentPolicy.addSubview(textPolicy6)
        contentPolicy.addSubview(textPolicy7)
        contentPolicy.addSubview(textPolicy8)
        contentPolicy.addSubview(textPolicy9)
    }
    
    private func configurateTextPolicy1() {
        let titleText1 = "Приложение \"NFC Pass\" "
        let bodyText1 = "(далее \"Приложение\") разработано с учетом строгих норм конфиденциальности и безопасности данных пользователей. Мы ценим ваше доверие и обязуемся обеспечивать защиту ваших личных данных. Настоящая Политика конфиденциальности объясняет, как мы собираем, используем и защищаем информацию, которую вы предоставляете при использовании нашего приложения. \n"
        
        let attributedString1 = NSMutableAttributedString(string: titleText1, attributes: [.font: UIFont(name: "ALSSirius-Bold", size: 16) ?? 16])
        attributedString1.append(NSAttributedString(string: bodyText1, attributes: [.font: UIFont(name: "ALSSirius-Regular", size: 16) ?? 16]))
        
        textPolicy1.attributedText = attributedString1
        textPolicy1.numberOfLines = 0
        textPolicy1.textColor = UIColor.black
    }
    
    private func configurateTextPolicy2() {
        textPolicy2.text = "1. Собираемая информация"
        textPolicy2.font = UIFont(name: "ALSSirius-Bold", size: 20)
        textPolicy2.numberOfLines = 0
        textPolicy2.textColor = UIColor.black
    }
    
    private func configurateTextPolicy3() {
        let bodyText2_1 = "При использовании приложения мы можем собирать следующие виды информации: \n"
        let titleText2_1 = "• Личная информация: "
        let bodyText2_2 = "Мы можем собирать персональные данные, такие как ваше имя, адрес электронной почты и номер телефона, при регистрации в приложении или при необходимости для его использования. \n"
        let titleText2_2 = "• Техническая информация: "
        let bodyText2_3 = "Мы можем собирать информацию о вашем устройстве, такую как уникальные идентификаторы устройства, версия операционной системы, информация о сети и другие технические данные, необходимые для обеспечения работоспособности приложения. "
        let titleText2_3 = "• Данные использования: "
        let bodyText2_4 = "Мы можем собирать информацию о вашем взаимодействии с приложением, включая действия, совершаемые внутри приложения, и данные о продолжительности и частоте использования. \n"
        
        let attributedString2 = NSMutableAttributedString(string: bodyText2_1, attributes: [.font: UIFont(name: "ALSSirius-Regular", size: 16) ?? 16])
        attributedString2.append(NSAttributedString(string: titleText2_1, attributes: [.font: UIFont(name: "ALSSirius-Bold", size: 16) ?? 16]))
        attributedString2.append(NSAttributedString(string: bodyText2_2, attributes: [.font: UIFont(name: "ALSSirius-Regular", size: 16) ?? 16]))
        attributedString2.append(NSAttributedString(string: titleText2_2, attributes: [.font: UIFont(name: "ALSSirius-Bold", size: 16) ?? 16]))
        attributedString2.append(NSAttributedString(string: bodyText2_3, attributes: [.font: UIFont(name: "ALSSirius-Regular", size: 16) ?? 16]))
        attributedString2.append(NSAttributedString(string: titleText2_3, attributes: [.font: UIFont(name: "ALSSirius-Bold", size: 16) ?? 16]))
        attributedString2.append(NSAttributedString(string: bodyText2_4, attributes: [.font: UIFont(name: "ALSSirius-Regular", size: 16) ?? 16]))

        textPolicy3.attributedText = attributedString2
        textPolicy3.numberOfLines = 0
        textPolicy3.textColor = UIColor.black
    }
    
    private func configurateTextPolicy4() {
        let titleText3 = "2. Использование информации\n"
        let bodyText3 = "Собранная нами информация используется исключительно для целей обеспечения функционирования приложения и улучшения его качества. Мы можем использовать вашу персональную информацию для следующих целей:  • Предоставление доступа к функциям приложения и выполнение ваших запросов.  • Улучшение работы и обновление приложения для повышения удобства пользования и безопасности.  • Обеспечение безопасности и защиты правилами и политиками.  • Предоставление персонализированных услуг и рекомендаций. \n"
        
        let attributedString3 = NSMutableAttributedString(string: titleText3, attributes: [.font: UIFont(name: "ALSSirius-Bold", size: 20) ?? 20])
        attributedString3.append(NSAttributedString(string: bodyText3, attributes: [.font: UIFont(name: "ALSSirius-Regular", size: 16) ?? 16]))
        
        textPolicy4.attributedText = attributedString3
        textPolicy4.numberOfLines = 0
        textPolicy4.textColor = UIColor.black
    }
    
    private func configurateTextPolicy5() {
        let titleText4 = "3. Разглашение информации\n"
        let bodyText4 = "Мы строго соблюдаем принципы конфиденциальности и не передаем вашу личную информацию третьим лицам без вашего согласия, за исключением случаев, предусмотренных законодательством. \n"
        
        let attributedString4 = NSMutableAttributedString(string: titleText4, attributes: [.font: UIFont(name: "ALSSirius-Bold", size: 20) ?? 20])
        attributedString4.append(NSAttributedString(string: bodyText4, attributes: [.font: UIFont(name: "ALSSirius-Regular", size: 16) ?? 16]))
        
        textPolicy5.attributedText = attributedString4
        textPolicy5.numberOfLines = 0
        textPolicy5.textColor = UIColor.black
    }
    
    private func configurateTextPolicy6() {
        let titleText5 = "4. Безопасность данных\n"
        let bodyText5 = "Мы принимаем меры по обеспечению безопасности ваших данных, в том числе шифрование информации и регулярное обновление мер защиты. Однако следует помнить, что ни один метод передачи данных через интернет или хранения данных не является абсолютно безопасным. \n"
        
        let attributedString5 = NSMutableAttributedString(string: titleText5, attributes: [.font: UIFont(name: "ALSSirius-Bold", size: 20) ?? 20])
        attributedString5.append(NSAttributedString(string: bodyText5, attributes: [.font: UIFont(name: "ALSSirius-Regular", size: 16) ?? 16]))
        
        textPolicy6.attributedText = attributedString5
        textPolicy6.numberOfLines = 0
        textPolicy6.textColor = UIColor.black
    }
    
    private func configurateTextPolicy7() {
        let titleText6 = "5. Ваше согласие\n"
        let bodyText6 = "Используя наше приложение, вы соглашаетесь с условиями нашей Политики конфиденциальности. Если вы не согласны с этими условиями, пожалуйста, прекратите использование приложения. \n"
        
        let attributedString6 = NSMutableAttributedString(string: titleText6, attributes: [.font: UIFont(name: "ALSSirius-Bold", size: 20) ?? 20])
        attributedString6.append(NSAttributedString(string: bodyText6, attributes: [.font: UIFont(name: "ALSSirius-Regular", size: 16) ?? 16]))
        
        textPolicy7.attributedText = attributedString6
        textPolicy7.numberOfLines = 0
        textPolicy7.textColor = UIColor.black
    }
    
    private func configurateTextPolicy8() {
        let titleText7 = "6. Изменения в политике\n"
        let bodyText7 = "Мы оставляем за собой право периодически вносить изменения в нашу Политику конфиденциальности. Любые изменения будут опубликованы здесь, поэтому рекомендуем периодически проверять эту страницу на обновления. \n"
        
        let attributedString7 = NSMutableAttributedString(string: titleText7, attributes: [.font: UIFont(name: "ALSSirius-Bold", size: 20) ?? 20])
        attributedString7.append(NSAttributedString(string: bodyText7, attributes: [.font: UIFont(name: "ALSSirius-Regular", size: 16) ?? 16]))
        
        textPolicy8.attributedText = attributedString7
        textPolicy8.numberOfLines = 0
        textPolicy8.textColor = UIColor.black
    }
    
    private func configurateTextPolicy9() {
        let bodyText8 = "Свяжитесь с нами: [https://t.me/cideSui1] \n"
        let titleText8 = "Последнее обновление: [20.04]"
        
        let attributedString8 = NSMutableAttributedString(string: bodyText8, attributes: [.font: UIFont(name: "ALSSirius-Regular", size: 16) ?? 16])
        attributedString8.append(NSAttributedString(string: titleText8, attributes: [.font: UIFont(name: "ALSSirius-Bold", size: 16) ?? 16]))
        
        textPolicy9.attributedText = attributedString8
        textPolicy9.numberOfLines = 0
        textPolicy9.textColor = UIColor.black
    }
    
    private func setupConstraintForText() {
        NSLayoutConstraint.activate([
            contentPolicy.topAnchor.constraint(equalTo: view.topAnchor, constant: 165),
            contentPolicy.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -16),
            contentPolicy.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            contentPolicy.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            textPolicy1.topAnchor.constraint(equalTo: contentPolicy.topAnchor),
            textPolicy1.leadingAnchor.constraint(equalTo: contentPolicy.leadingAnchor),
            textPolicy1.widthAnchor.constraint(equalTo: contentPolicy.widthAnchor),
            textPolicy1.trailingAnchor.constraint(equalTo: contentPolicy.trailingAnchor),
            
            textPolicy2.topAnchor.constraint(equalTo: textPolicy1.bottomAnchor, constant: 0),
            textPolicy2.widthAnchor.constraint(equalTo: contentPolicy.widthAnchor),
            textPolicy2.leadingAnchor.constraint(equalTo: contentPolicy.leadingAnchor),
            textPolicy2.trailingAnchor.constraint(equalTo: contentPolicy.trailingAnchor),

            textPolicy3.topAnchor.constraint(equalTo: textPolicy2.bottomAnchor, constant: 0),
            textPolicy3.widthAnchor.constraint(equalTo: contentPolicy.widthAnchor),
            textPolicy3.leadingAnchor.constraint(equalTo: contentPolicy.leadingAnchor),
            textPolicy3.trailingAnchor.constraint(equalTo: contentPolicy.trailingAnchor),

            textPolicy4.topAnchor.constraint(equalTo: textPolicy3.bottomAnchor, constant: 0),
            textPolicy4.widthAnchor.constraint(equalTo: contentPolicy.widthAnchor),
            textPolicy4.leadingAnchor.constraint(equalTo: contentPolicy.leadingAnchor),
            textPolicy4.trailingAnchor.constraint(equalTo: contentPolicy.trailingAnchor),

            textPolicy5.topAnchor.constraint(equalTo: textPolicy4.bottomAnchor, constant: 0),
            textPolicy5.widthAnchor.constraint(equalTo: contentPolicy.widthAnchor),
            textPolicy5.leadingAnchor.constraint(equalTo: contentPolicy.leadingAnchor),
            textPolicy5.trailingAnchor.constraint(equalTo: contentPolicy.trailingAnchor),
            
            textPolicy6.topAnchor.constraint(equalTo: textPolicy5.bottomAnchor, constant: 0),
            textPolicy6.widthAnchor.constraint(equalTo: contentPolicy.widthAnchor),
            textPolicy6.leadingAnchor.constraint(equalTo: contentPolicy.leadingAnchor),
            textPolicy6.trailingAnchor.constraint(equalTo: contentPolicy.trailingAnchor),
            
            textPolicy7.topAnchor.constraint(equalTo: textPolicy6.bottomAnchor, constant: 0),
            textPolicy7.widthAnchor.constraint(equalTo: contentPolicy.widthAnchor),
            textPolicy7.leadingAnchor.constraint(equalTo: contentPolicy.leadingAnchor),
            textPolicy7.trailingAnchor.constraint(equalTo: contentPolicy.trailingAnchor),
            
            textPolicy8.topAnchor.constraint(equalTo: textPolicy7.bottomAnchor, constant: 0),
            textPolicy8.widthAnchor.constraint(equalTo: contentPolicy.widthAnchor),
            textPolicy8.leadingAnchor.constraint(equalTo: contentPolicy.leadingAnchor),
            textPolicy8.trailingAnchor.constraint(equalTo: contentPolicy.trailingAnchor),
            
            textPolicy9.topAnchor.constraint(equalTo: textPolicy8.bottomAnchor, constant: 0),
            textPolicy9.widthAnchor.constraint(equalTo: contentPolicy.widthAnchor),
            textPolicy9.bottomAnchor.constraint(equalTo: contentPolicy.bottomAnchor),
            textPolicy9.leadingAnchor.constraint(equalTo: contentPolicy.leadingAnchor),
            textPolicy9.trailingAnchor.constraint(equalTo: contentPolicy.trailingAnchor),
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
