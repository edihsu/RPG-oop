//
//  Player.swift
//  RPG-oop
//
//  Created by edward hsu on 2/6/16.
//  Copyright © 2016 Edward Hsu. All rights reserved.
//

import Foundation

// you are the player, need to define what the player can do:

class Player: Character {

    
    // thaink about everything in terms of objects!
    // example: what does a bank account do??
    
    // attributes: eye color, height, weight, skin tone
    // functions: run, jump, curse, etc
    


    // player's (your) name.
    // by default:
    private var _name = "Player"
    
    // computed property (not manipulated directly)
    var name: String {
        get {
            return _name
        }
    }
    
    
    // things user has collected along the way.
    // (this is an example of somethingsspecific to this class
    private var _inventory = [String]()
    
    var inventory: [String] {
        return _inventory
    }
    
    func addItemToInventory(item: String) {
        _inventory.append(item)
    }
    
    // player can enter own name, and hit points:
    // can add fields that the parent Class doesn't have:
    convenience init (name: String, hp: Int, attackPwr: Int) {
        
        self.init(startingHp: hp, attackPwr: attackPwr)
        
        // set the name:
        _name = name
    }

}


    


