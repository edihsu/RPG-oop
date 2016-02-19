//
//  DevilWizard.swift
//  RPG-oop
//
//  Created by edward hsu on 2/8/16.
//  Copyright © 2016 Edward Hsu. All rights reserved.
//

import Foundation


class DevilWizard: Enemy {
    
    override var loot: [String] {
        return ["Magic Wand", "Dark Amulent", "Salted Pork"]
    }
    
    override var type: String {
        return "Devil Wizard"
    }
}