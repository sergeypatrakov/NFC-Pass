//
//  ViewController.swift
//  NFC Pass
//
//  Created by Sergey Patrakov on 13.09.2024.
//

import UIKit

class ViewController: UIViewController {

    private lazy var text = UILabel()
    private lazy var image = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupLayout()
    }
    
    private func setupLayout() {
        configurateText()
    }
    
//    private func configurateImage() {
//        view.addSubview(image)
//        image.image = UIImage(named: "background_main")
//        image.contentMode = .scaleToFill
//        image.translatesAutoresizingMaskIntoConstraints = false
//
//    }
//    
    private func configurateText() {
        
    }

    
}

