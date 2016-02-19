//
//  Enemy.swift
//  RPG-oop
//
//  Created by edward hsu on 2/7/16.
//  Copyright © 2016 Edward Hsu. All rights reserved.
//

import Foundation

// Enemy inheret from character
class Enemy: Character {
    
    var loot: [String] {
        return["Rusty Dagger", "Cracked Buckler"]
    }
    
    
    // type of character,
    // with a default value that future subclasses can override
    var type: String {
        return "Grunt"
    }
    
    
    // drop loot only if animal is dead
    // may return nil so need ? optional
    func dropLoot() -> String? {
        // "if he's not alive"
        if !isAlive {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        }
        return nil
    }
}