//
//  ViewController.swift
//  particlsTest
//
//  Created by Roman Yarmoliuk on 05.12.2022.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        createButton(x: 150, y: 300, title: "Snow", color: .blue)
        createButton(x: 150, y: 400, title: "Spark", color: .orange)
        createButton(x: 150, y: 500, title: "Fire", color: .red)

        
    }
    
    func showVC(vcName: String) {
       
        let vc = ParticlesViewController()
        
        vc.sceneType = vcName
//        vc.view.backgroundColor = .darkGray
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
    }
    
    func createButton(x: Int, y: Int, title: String, color: UIColor) {
        let button = UIButton(frame: CGRect(x: x, y: y, width: 100, height: 35))
        button.setTitle(title, for: .normal)
        button.backgroundColor = color
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)

        self.view.addSubview(button)
    }
    
    @objc func buttonAction(sender: UIButton!) {
        showVC(vcName: sender.currentTitle!)
        print("\(sender.currentTitle!) button tapped")
       
    }


}

