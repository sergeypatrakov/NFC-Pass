//
//  Circles.swift
//  NFC Pass
//
//  Created by Sergey Patrakov on 07.10.2024.
//

import UIKit

extension MainViewController {
    
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
