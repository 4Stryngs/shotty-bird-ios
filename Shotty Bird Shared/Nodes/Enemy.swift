//
//  Enemy.swift
//  Shotty Bird
//
//  Created by Jorge Tapia on 7/3/23.
//  Copyright © 2023 Komodo Life. All rights reserved.
//

import SpriteKit

/// Defines the type of enemy and what textures will be loaded.
enum EnemyType {
    case raven
}

/// Represents an enemy that will spawn and that can be destroyed by a missle.
class Enemy: SKSpriteNode {
    
    /// The node name.
    static let nodeName = "enemy"
    
    /// The enemy type.
    let enemyType: EnemyType
    /// Array of textures containing the animation sequence for the enemy.
    let sprites: [SKTexture]
    /// The speed at which the enemy will fly through the screen.
    var flightSpeed: TimeInterval = 0
    
    /// Cteates a new `Enemy` object.
    /// - Parameters:
    ///   - enemyType: The type of enemy to be created.
    ///   - movementSpeed: The speed at which the enemy will fly through the screen.
    init(enemyType: EnemyType = .raven) {
        self.enemyType = enemyType
        switch enemyType {
        case .raven:
            sprites = [SKTexture(imageNamed: "raven+texture0001"),
                       SKTexture(imageNamed: "raven+texture0002"),
                       SKTexture(imageNamed: "raven+texture0003"),
                       SKTexture(imageNamed: "raven+texture0004"),
                       SKTexture(imageNamed: "raven+texture0005"),
                       SKTexture(imageNamed: "raven+texture0006"),
                       SKTexture(imageNamed: "raven+texture0007"),
                       SKTexture(imageNamed: "raven+texture0008"),
                       SKTexture(imageNamed: "raven+texture0009"),
                       SKTexture(imageNamed: "raven+texture0010"),
                       SKTexture(imageNamed: "raven+texture0011"),
                       SKTexture(imageNamed: "raven+texture0012"),
                       SKTexture(imageNamed: "raven+texture0013"),
                       SKTexture(imageNamed: "raven+texture0014"),
                       SKTexture(imageNamed: "raven+texture0015"),
                       SKTexture(imageNamed: "raven+texture0016"),
                       SKTexture(imageNamed: "raven+texture0017"),
                       SKTexture(imageNamed: "raven+texture0018"),
                       SKTexture(imageNamed: "raven+texture0019"),
                       SKTexture(imageNamed: "raven+texture0020"),
                       SKTexture(imageNamed: "raven+texture0021"),
                       SKTexture(imageNamed: "raven+texture0022"),
                       SKTexture(imageNamed: "raven+texture0023"),
                       SKTexture(imageNamed: "raven+texture0024"),
                       SKTexture(imageNamed: "raven+texture0025")]
        }
        super.init(texture: sprites[0], color: .clear, size: sprites[0].size())
        super.name = Enemy.nodeName
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
