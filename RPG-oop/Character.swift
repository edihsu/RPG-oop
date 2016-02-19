//
//  character.swift
//  RPG-oop
//
//  Created by edward hsu on 2/6/16.
//  Copyright © 2016 Edward Hsu. All rights reserved.
//

import Foundation

class Character {
    
    private var _hp: Int = 100
    private var _attackPwr: Int = 10
    
    
    // "computed property"
    // retreives data from private var parameter attackPwr
    var attackPwr: Int {
        get {
            return _attackPwr
        }
    }
    
    // retreives data from private var parameter hp
    // can only get, cannot modify. READ ONLY.
    var hp: Int {
        get{
            return _hp
        }
    }
    
    
    
    // check if character is alive or dead
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            } else {
                return true
            }
        }
    }
    
    
    
    // initializes character with a starting HP and attack power.
    init(startingHp: Int, attackPwr: Int) {
        self._hp = startingHp
        self._attackPwr = attackPwr
    }
    
    // attacker will pass along their attack power, return true/false if the attack successful or not.
    func attemptAttack (attackPwr: Int) -> Bool {
        self._hp -= attackPwr
        return true
    }
    

}
