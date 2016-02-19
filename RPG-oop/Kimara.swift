//
//  Kimara.swift
//  RPG-oop
//
//  Created by edward hsu on 2/7/16.
//  Copyright © 2016 Edward Hsu. All rights reserved.
//

import Foundation

class Kimara: Enemy {
    
    let immuneMax = 15
    
    override var loot: [String] {
        return ["Tough Hide", "kimara VEnom", "Rare Trident"]

    }

    override var type: String {
        return "Kimara"
    }
    
    override func attemptAttack(attackPwr: Int) -> Bool {
        if attackPwr >= immuneMax {
            
            // since attack power is greater than the Kimara's immunity, attack can affect it.
            // therefore, call parent function from class character, run as normal:
            return super.attemptAttack(attackPwr)
        } else {
            return false
        }
    }
    
}