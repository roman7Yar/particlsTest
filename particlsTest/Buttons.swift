//
//  Buttons.swift
//  particlsTest
//
//  Created by Roman Yarmoliuk on 06.12.2022.
//

import Foundation
import UIKit

class Buttons: UIButton {
    let view = UIView()
    func createButton(x: Int, y: Int, title: String, color: UIColor) {
        let button = UIButton(frame: CGRect(x: x, y: y, width: 100, height: 35))
        button.setTitle(title, for: .normal)
        button.backgroundColor = color
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)

        self.view.addSubview(button)
    }
    
    @objc func buttonAction(sender: UIButton!) {
       
        print("\(sender.currentTitle!) button tapped")
       
    }
}
