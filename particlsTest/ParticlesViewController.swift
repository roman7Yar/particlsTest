//
//  ParticlesViewController.swift
//  particlsTest
//
//  Created by Roman Yarmoliuk on 05.12.2022.
//

import Foundation
import SpriteKit

class ParticlesViewController: UIViewController, UIGestureRecognizerDelegate {
    var sceneType = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        createButton(x: 10, y: 50, title: "Back", color: .clear)
        view.backgroundColor = .red
        
        let view = SKView()
        let scene: SKScene
        
        if sceneType == "Snow" {
            scene = SnowGameScene(size: view.bounds.size)
            
            
            
            scene.scaleMode = .aspectFill
            view.ignoresSiblingOrder = true
            view.showsFPS = false
            view.showsNodeCount = false
            view.showsPhysics = false
            
            view.presentScene(scene)
        }
    }
    func createButton(x: Int, y: Int, title: String, color: UIColor) {
        let button = UIButton(frame: CGRect(x: x, y: y, width: 60, height: 35))
        button.setTitle(title, for: .normal)
        button.backgroundColor = color
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)

        self.view.addSubview(button)
    }
    
    @objc func buttonAction(sender: UIButton!) {
        self.dismiss(animated: true, completion: nil)
        print("\(sender.currentTitle!) button tapped")
       
    }
}
