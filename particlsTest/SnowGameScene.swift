//
//  SnowGameScene.swift
//  particlsTest
//
//  Created by Roman Yarmoliuk on 06.12.2022.
//

import Foundation
import SpriteKit

class SnowGameScene: SKScene {
    override func sceneDidLoad() {
        backgroundColor = .darkGray
        
        if let particles = SKEmitterNode(fileNamed: "snow") {
            particles.position.y = 800
            particles.position.x = 200
            addChild(particles)
        }
    }
}
