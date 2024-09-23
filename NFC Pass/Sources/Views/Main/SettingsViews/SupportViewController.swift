//
//  SupportViewController.swift
//  NFC Pass
//
//  Created by Sergey Patrakov on 17.09.2024.
//

import UIKit

class SupportViewController: UIViewController {
    
    private lazy var titleSupport = UILabel()
    private lazy var contentSupport = UIScrollView()
    private lazy var textSupport1 = UILabel()
    private lazy var textSupport2 = UILabel()
    private lazy var textSupport3 = UILabel()
    private lazy var textSupport4 = UILabel()
    private lazy var textSupport5 = UILabel()
    private lazy var textSupport6 = UILabel()
    private lazy var textSupport7 = UILabel()
    private lazy var textSupport8 = UILabel()
    private lazy var textSupport9 = UILabel()
    private lazy var textSupport10 = UILabel()

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
        view.addSubview(titleSupport)
        titleSupport.text = "Поддержка"
        titleSupport.font = UIFont(name: "ALSSirius-Bold", size: 26)
        titleSupport.textColor = UIColor.black
        
        titleSupport.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleSupport.topAnchor.constraint(equalTo: view.topAnchor, constant: 95),
            titleSupport.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            titleSupport.widthAnchor.constraint(equalToConstant: view.frame.width),
            titleSupport.heightAnchor.constraint(equalToConstant: 32)
        ])
    }
    
    private func configurateText() {
        addTextToView()
        
        configurateTextSupport1()
        configurateTextSupport2()
        configurateTextSupport3()
        configurateTextSupport4()
        configurateTextSupport5()
        configurateTextSupport6()
        configurateTextSupport7()
        configurateTextSupport8()
        configurateTextSupport9()
        configurateTextSupport10()
        
        contentSupport.translatesAutoresizingMaskIntoConstraints = false
        textSupport1.translatesAutoresizingMaskIntoConstraints = false
        textSupport2.translatesAutoresizingMaskIntoConstraints = false
        textSupport3.translatesAutoresizingMaskIntoConstraints = false
        textSupport4.translatesAutoresizingMaskIntoConstraints = false
        textSupport5.translatesAutoresizingMaskIntoConstraints = false
        textSupport6.translatesAutoresizingMaskIntoConstraints = false
        textSupport7.translatesAutoresizingMaskIntoConstraints = false
        textSupport8.translatesAutoresizingMaskIntoConstraints = false
        textSupport9.translatesAutoresizingMaskIntoConstraints = false
        textSupport10.translatesAutoresizingMaskIntoConstraints = false

        setupConstraintForText()
    }
    
    private func addTextToView() {
        view.addSubview(contentSupport)
        contentSupport.addSubview(textSupport1)
        contentSupport.addSubview(textSupport2)
        contentSupport.addSubview(textSupport3)
        contentSupport.addSubview(textSupport4)
        contentSupport.addSubview(textSupport5)
        contentSupport.addSubview(textSupport6)
        contentSupport.addSubview(textSupport7)
        contentSupport.addSubview(textSupport8)
        contentSupport.addSubview(textSupport9)
        contentSupport.addSubview(textSupport10)
    }
    
    private func configurateTextSupport1() {
        textSupport1.text = "Уважаемый пользователь,"
        textSupport1.font = UIFont(name: "ALSSirius-Bold", size: 16)
        textSupport1.numberOfLines = 0
        textSupport1.textColor = UIColor.black
    }
    
    private func configurateTextSupport2() {
        textSupport2.text = "Мы рады приветствовать вас в службе поддержки нашего приложения \"NFC Pass\". Мы стремимся обеспечить вас лучшим опытом использования нашего приложения, поэтому если у вас возникли вопросы, проблемы или предложения, мы всегда готовы помочь.  "
        textSupport2.font = UIFont(name: "ALSSirius-Regular", size: 16)
        textSupport2.numberOfLines = 0
        textSupport2.textColor = UIColor.black
    }
    
    private func configurateTextSupport3() {
        textSupport3.text = "Наши услуги поддержки включают:"
        textSupport3.font = UIFont(name: "ALSSirius-Bold", size: 20)
        textSupport3.numberOfLines = 0
        textSupport3.textColor = UIColor.black
    }
    
    private func configurateTextSupport4() {
        let titleText1 = "1. Техническая поддержка: "
        let bodyText1 = "Наша команда специалистов готова помочь вам с любыми техническими вопросами, связанными с использованием приложения, настройкой NFC-технологии и другими техническими аспектами.  "
        let attributedString1 = NSMutableAttributedString(string: titleText1, attributes: [.font: UIFont(name: "ALSSirius-Bold", size: 16) ?? 16])
        attributedString1.append(NSAttributedString(string: bodyText1, attributes: [.font: UIFont(name: "ALSSirius-Regular", size: 16) ?? 16]))
        textSupport4.attributedText = attributedString1
        textSupport4.numberOfLines = 0
        textSupport4.textColor = UIColor.black
    }
    
    private func configurateTextSupport5() {
        let titleText2 = "2. Решение проблем: "
        let bodyText2 = "Если у вас возникли проблемы при работе с приложением, не стесняйтесь обращаться к нам. Мы постараемся помочь вам решить любые проблемы и неполадки как можно быстрее.  "
        let attributedString2 = NSMutableAttributedString(string: titleText2, attributes: [.font: UIFont(name: "ALSSirius-Bold", size: 16) ?? 16])
        attributedString2.append(NSAttributedString(string: bodyText2, attributes: [.font: UIFont(name: "ALSSirius-Regular", size: 16) ?? 16]))
        textSupport5.attributedText = attributedString2
        textSupport5.numberOfLines = 0
        textSupport5.textColor = UIColor.black
    }
    
    private func configurateTextSupport6() {
        let titleText3 = "3. Ответы на вопросы: "
        let bodyText3 = "У нас есть опытные специалисты, готовые ответить на ваши вопросы о функциональности приложения, политике конфиденциальности, целях использования данных и многом другом.  "
        let attributedString3 = NSMutableAttributedString(string: titleText3, attributes: [.font: UIFont(name: "ALSSirius-Bold", size: 16) ?? 16])
        attributedString3.append(NSAttributedString(string: bodyText3, attributes: [.font: UIFont(name: "ALSSirius-Regular", size: 16) ?? 16]))
        textSupport6.attributedText = attributedString3
        textSupport6.numberOfLines = 0
        textSupport6.textColor = UIColor.black
    }
    
    private func configurateTextSupport7() {
        let titleText4 = "4. Обратная связь и предложения: "
        let bodyText4 = "Мы ценим ваше мнение и всегда открыты к обратной связи и предложениям по улучшению нашего приложения. Ваши идеи помогут нам делать приложение еще более удобным и функциональным.  "
        let attributedString4 = NSMutableAttributedString(string: titleText4, attributes: [.font: UIFont(name: "ALSSirius-Bold", size: 16) ?? 16])
        attributedString4.append(NSAttributedString(string: bodyText4, attributes: [.font: UIFont(name: "ALSSirius-Regular", size: 16) ?? 16]))
        textSupport7.attributedText = attributedString4
        textSupport7.numberOfLines = 0
        textSupport7.textColor = UIColor.black
    }
    
    private func configurateTextSupport8() {
        let titleText5 = "Как связаться с нами:"
        let bodyText5 = " - Вы можете отправить нам электронное письмо по адресу: ssm27@tpu.ru - Если у вас срочные вопросы или проблемы, пожалуйста, обратитесь к нам в Telegram: https://t.me/cideSui1\n"
        
        let attributedString5 = NSMutableAttributedString(string: titleText5, attributes: [.font: UIFont(name: "ALSSirius-Bold", size: 20) ?? 20])
        attributedString5.append(NSAttributedString(string: bodyText5, attributes: [.font: UIFont(name: "ALSSirius-Regular", size: 16) ?? 16]))

        textSupport8.attributedText = attributedString5
        textSupport8.numberOfLines = 0
        textSupport8.textColor = UIColor.black
    }
    
    private func configurateTextSupport9() {
        let titleText6 = "Рабочие часы:\n"
        let bodyText6_1 = "Наша служба поддержки работает "
        let bodyText6_2 = "09:00-19:00 по МСК"
        let bodyText6_3 = ". Мы стремимся ответить на все запросы как можно быстрее, но пожалуйста, учитывайте, что в нерабочее время ответ может занять больше времени.   Мы ценим ваше время и доверие, и готовы сделать все возможное, чтобы обеспечить вас качественным обслуживанием. Благодарим за использование нашего приложения \"NFC Pass\"!  "
        let attributedString6 = NSMutableAttributedString(string: titleText6, attributes: [.font: UIFont(name: "ALSSirius-Bold", size: 20) ?? 20])
        attributedString6.append(NSAttributedString(string: bodyText6_1, attributes: [.font: UIFont(name: "ALSSirius-Regular", size: 16) ?? 16]))
        attributedString6.append(NSAttributedString(string: bodyText6_2, attributes: [.font: UIFont(name: "ALSSirius-Bold", size: 16) ?? 16]))
        attributedString6.append(NSAttributedString(string: bodyText6_3, attributes: [.font: UIFont(name: "ALSSirius-Regular", size: 16) ?? 16]))
        textSupport9.attributedText = attributedString6
        textSupport9.numberOfLines = 0
        textSupport9.textColor = UIColor.black
    }
    
    private func configurateTextSupport10() {
        textSupport10.text = "С уважением,  Команда поддержки \"NFC Pass\" "
        textSupport10.font = UIFont(name: "ALSSirius-Bold", size: 16)
        textSupport10.numberOfLines = 0
        textSupport10.textColor = UIColor.black
    }
    
    private func setupConstraintForText() {
        NSLayoutConstraint.activate([
            contentSupport.topAnchor.constraint(equalTo: view.topAnchor, constant: 145),
            contentSupport.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -16),
            contentSupport.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            contentSupport.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            textSupport1.topAnchor.constraint(equalTo: contentSupport.topAnchor),
            textSupport1.leadingAnchor.constraint(equalTo: contentSupport.leadingAnchor),
            textSupport1.widthAnchor.constraint(equalTo: contentSupport.widthAnchor),
            textSupport1.trailingAnchor.constraint(equalTo: contentSupport.trailingAnchor),
            
            textSupport2.topAnchor.constraint(equalTo: textSupport1.bottomAnchor, constant: 0),
            textSupport2.widthAnchor.constraint(equalTo: contentSupport.widthAnchor),
            textSupport2.leadingAnchor.constraint(equalTo: contentSupport.leadingAnchor),
            textSupport2.trailingAnchor.constraint(equalTo: contentSupport.trailingAnchor),

            textSupport3.topAnchor.constraint(equalTo: textSupport2.bottomAnchor, constant: 0),
            textSupport3.widthAnchor.constraint(equalTo: contentSupport.widthAnchor),
            textSupport3.leadingAnchor.constraint(equalTo: contentSupport.leadingAnchor),
            textSupport3.trailingAnchor.constraint(equalTo: contentSupport.trailingAnchor),

            textSupport4.topAnchor.constraint(equalTo: textSupport3.bottomAnchor, constant: 0),
            textSupport4.widthAnchor.constraint(equalTo: contentSupport.widthAnchor),
            textSupport4.leadingAnchor.constraint(equalTo: contentSupport.leadingAnchor),
            textSupport4.trailingAnchor.constraint(equalTo: contentSupport.trailingAnchor),

            textSupport5.topAnchor.constraint(equalTo: textSupport4.bottomAnchor, constant: 0),
            textSupport5.widthAnchor.constraint(equalTo: contentSupport.widthAnchor),
            textSupport5.leadingAnchor.constraint(equalTo: contentSupport.leadingAnchor),
            textSupport5.trailingAnchor.constraint(equalTo: contentSupport.trailingAnchor),
            
            textSupport6.topAnchor.constraint(equalTo: textSupport5.bottomAnchor, constant: 0),
            textSupport6.widthAnchor.constraint(equalTo: contentSupport.widthAnchor),
            textSupport6.leadingAnchor.constraint(equalTo: contentSupport.leadingAnchor),
            textSupport6.trailingAnchor.constraint(equalTo: contentSupport.trailingAnchor),
            
            textSupport7.topAnchor.constraint(equalTo: textSupport6.bottomAnchor, constant: 0),
            textSupport7.widthAnchor.constraint(equalTo: contentSupport.widthAnchor),
            textSupport7.leadingAnchor.constraint(equalTo: contentSupport.leadingAnchor),
            textSupport7.trailingAnchor.constraint(equalTo: contentSupport.trailingAnchor),
            
            textSupport8.topAnchor.constraint(equalTo: textSupport7.bottomAnchor, constant: 0),
            textSupport8.widthAnchor.constraint(equalTo: contentSupport.widthAnchor),
            textSupport8.leadingAnchor.constraint(equalTo: contentSupport.leadingAnchor),
            textSupport8.trailingAnchor.constraint(equalTo: contentSupport.trailingAnchor),
            
            textSupport9.topAnchor.constraint(equalTo: textSupport8.bottomAnchor, constant: 0),
            textSupport9.widthAnchor.constraint(equalTo: contentSupport.widthAnchor),
            textSupport9.leadingAnchor.constraint(equalTo: contentSupport.leadingAnchor),
            textSupport9.trailingAnchor.constraint(equalTo: contentSupport.trailingAnchor),
            
            textSupport10.topAnchor.constraint(equalTo: textSupport9.bottomAnchor, constant: 0),
            textSupport10.widthAnchor.constraint(equalTo: contentSupport.widthAnchor),
            textSupport10.bottomAnchor.constraint(equalTo: contentSupport.bottomAnchor),
            textSupport10.leadingAnchor.constraint(equalTo: contentSupport.leadingAnchor),
            textSupport10.trailingAnchor.constraint(equalTo: contentSupport.trailingAnchor),
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
