//
//  UnderButton.swift
//  NFC Pass
//
//  Created by Sergey Patrakov on 06.10.2024.
//
import UIKit

final class UnderButton: UIButton {
    let button: UIButton = {
        let button = UIButton()
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 20
        button.titleLabel?.font = UIFont(name: "ALSSirius-Bold", size: 16)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    func placeButton(view: UIView, text: String, color: UIColor, textColor: UIColor) -> UIButton {
        button.setTitle(text, for: .normal)
        button.backgroundColor = color
        button.setTitleColor(textColor, for: .normal)
        
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.widthAnchor.constraint(equalToConstant: 350),
            button.heightAnchor.constraint(equalToConstant: 55)
        ])
        
        return button
    }
    
}
