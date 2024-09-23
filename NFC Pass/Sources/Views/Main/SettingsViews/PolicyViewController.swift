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
    private lazy var textPolicy10 = UILabel()
    private lazy var textPolicy11 = UILabel()
    private lazy var textPolicy12 = UILabel()
    private lazy var textPolicy13 = UILabel()
    private lazy var textPolicy14 = UILabel()

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
        configurateTextPolicy10()
        configurateTextPolicy11()
        configurateTextPolicy12()
        configurateTextPolicy13()
        configurateTextPolicy14()
        
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
        textPolicy10.translatesAutoresizingMaskIntoConstraints = false
        textPolicy11.translatesAutoresizingMaskIntoConstraints = false
        textPolicy12.translatesAutoresizingMaskIntoConstraints = false
        textPolicy13.translatesAutoresizingMaskIntoConstraints = false
        textPolicy14.translatesAutoresizingMaskIntoConstraints = false

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
        contentPolicy.addSubview(textPolicy10)
        contentPolicy.addSubview(textPolicy11)
        contentPolicy.addSubview(textPolicy12)
        contentPolicy.addSubview(textPolicy13)
        contentPolicy.addSubview(textPolicy14)
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
        textPolicy4.text = "2. Использование информации"
        textPolicy4.font = UIFont(name: "ALSSirius-Bold", size: 20)
        textPolicy4.numberOfLines = 0
        textPolicy4.textColor = UIColor.black
    }
    
    private func configurateTextPolicy5() {
        textPolicy5.text = "Собранная нами информация используется исключительно для целей обеспечения функционирования приложения и улучшения его качества. Мы можем использовать вашу персональную информацию для следующих целей:  • Предоставление доступа к функциям приложения и выполнение ваших запросов.  • Улучшение работы и обновление приложения для повышения удобства пользования и безопасности.  • Обеспечение безопасности и защиты правилами и политиками.  • Предоставление персонализированных услуг и рекомендаций. \n"
        textPolicy5.font = UIFont(name: "ALSSirius-Regular", size: 16)
        textPolicy5.numberOfLines = 0
        textPolicy5.textColor = UIColor.black
    }
    
    private func configurateTextPolicy6() {
        textPolicy6.text = "3. Разглашение информации"
        textPolicy6.font = UIFont(name: "ALSSirius-Bold", size: 20)
        textPolicy6.numberOfLines = 0
        textPolicy6.textColor = UIColor.black
    }
    
    private func configurateTextPolicy7() {
        textPolicy7.text = "Мы строго соблюдаем принципы конфиденциальности и не передаем вашу личную информацию третьим лицам без вашего согласия, за исключением случаев, предусмотренных законодательством. \n"
        textPolicy7.font = UIFont(name: "ALSSirius-Regular", size: 16)
        textPolicy7.numberOfLines = 0
        textPolicy7.textColor = UIColor.black
    }
    
    private func configurateTextPolicy8() {
        textPolicy8.text = "4. Безопасность данных"
        textPolicy8.font = UIFont(name: "ALSSirius-Bold", size: 20)
        textPolicy8.numberOfLines = 0
        textPolicy8.textColor = UIColor.black
    }
    
    private func configurateTextPolicy9() {
        textPolicy9.text = "Мы принимаем меры по обеспечению безопасности ваших данных, в том числе шифрование информации и регулярное обновление мер защиты. Однако следует помнить, что ни один метод передачи данных через интернет или хранения данных не является абсолютно безопасным. \n"
        textPolicy9.font = UIFont(name: "ALSSirius-Regular", size: 16)
        textPolicy9.numberOfLines = 0
        textPolicy9.textColor = UIColor.black
    }
    
    private func configurateTextPolicy10() {
        textPolicy10.text = "5. Ваше согласие"
        textPolicy10.font = UIFont(name: "ALSSirius-Bold", size: 20)
        textPolicy10.numberOfLines = 0
        textPolicy10.textColor = UIColor.black
    }
    
    private func configurateTextPolicy11() {
        textPolicy11.text = "Используя наше приложение, вы соглашаетесь с условиями нашей Политики конфиденциальности. Если вы не согласны с этими условиями, пожалуйста, прекратите использование приложения. \n"
        textPolicy11.font = UIFont(name: "ALSSirius-Regular", size: 16)
        textPolicy11.numberOfLines = 0
        textPolicy11.textColor = UIColor.black
    }
    
    private func configurateTextPolicy12() {
        textPolicy12.text = "6. Изменения в политике"
        textPolicy12.font = UIFont(name: "ALSSirius-Bold", size: 20)
        textPolicy12.numberOfLines = 0
        textPolicy12.textColor = UIColor.black
    }
    
    private func configurateTextPolicy13() {
        textPolicy13.text = "Мы оставляем за собой право периодически вносить изменения в нашу Политику конфиденциальности. Любые изменения будут опубликованы здесь, поэтому рекомендуем периодически проверять эту страницу на обновления. \n"
        textPolicy13.font = UIFont(name: "ALSSirius-Regular", size: 16)
        textPolicy13.numberOfLines = 0
        textPolicy13.textColor = UIColor.black
    }
    
    private func configurateTextPolicy14() {
        let bodyText3 = "Свяжитесь с нами: [https://t.me/cideSui1] \n"
        let titleText3 = "Последнее обновление: [20.04]"
        
        let attributedString3 = NSMutableAttributedString(string: bodyText3, attributes: [.font: UIFont(name: "ALSSirius-Regular", size: 16) ?? 16])
        attributedString3.append(NSAttributedString(string: titleText3, attributes: [.font: UIFont(name: "ALSSirius-Bold", size: 16) ?? 16]))
        
        textPolicy14.attributedText = attributedString3
        textPolicy14.numberOfLines = 0
        textPolicy14.textColor = UIColor.black
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
            textPolicy9.leadingAnchor.constraint(equalTo: contentPolicy.leadingAnchor),
            textPolicy9.trailingAnchor.constraint(equalTo: contentPolicy.trailingAnchor),
            
            textPolicy10.topAnchor.constraint(equalTo: textPolicy9.bottomAnchor, constant: 0),
            textPolicy10.widthAnchor.constraint(equalTo: contentPolicy.widthAnchor),
            textPolicy10.leadingAnchor.constraint(equalTo: contentPolicy.leadingAnchor),
            textPolicy10.trailingAnchor.constraint(equalTo: contentPolicy.trailingAnchor),
            
            textPolicy11.topAnchor.constraint(equalTo: textPolicy10.bottomAnchor, constant: 0),
            textPolicy11.widthAnchor.constraint(equalTo: contentPolicy.widthAnchor),
            textPolicy11.leadingAnchor.constraint(equalTo: contentPolicy.leadingAnchor),
            textPolicy11.trailingAnchor.constraint(equalTo: contentPolicy.trailingAnchor),
            
            textPolicy12.topAnchor.constraint(equalTo: textPolicy11.bottomAnchor, constant: 0),
            textPolicy12.widthAnchor.constraint(equalTo: contentPolicy.widthAnchor),
            textPolicy12.leadingAnchor.constraint(equalTo: contentPolicy.leadingAnchor),
            textPolicy12.trailingAnchor.constraint(equalTo: contentPolicy.trailingAnchor),
            
            textPolicy13.topAnchor.constraint(equalTo: textPolicy12.bottomAnchor, constant: 0),
            textPolicy13.widthAnchor.constraint(equalTo: contentPolicy.widthAnchor),
            textPolicy13.leadingAnchor.constraint(equalTo: contentPolicy.leadingAnchor),
            textPolicy13.trailingAnchor.constraint(equalTo: contentPolicy.trailingAnchor),
            
            textPolicy14.topAnchor.constraint(equalTo: textPolicy13.bottomAnchor, constant: 0),
            textPolicy14.widthAnchor.constraint(equalTo: contentPolicy.widthAnchor),
            textPolicy14.bottomAnchor.constraint(equalTo: contentPolicy.bottomAnchor),
            textPolicy14.leadingAnchor.constraint(equalTo: contentPolicy.leadingAnchor),
            textPolicy14.trailingAnchor.constraint(equalTo: contentPolicy.trailingAnchor),
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
