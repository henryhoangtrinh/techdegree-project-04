//
//  Guest.swift
//  AmusementParkPassGenerator
//
//  Created by Henry Trinh on 7/15/19.
//  Copyright © 2019 HR-Soft. All rights reserved.
//

import Foundation

//          Guest Classes

class ClassicGuest: Entrants {
    
    var entrantsType: TypeOfEntrants = .ClassicEntrant
    
    var entrantsPass: Passes? = ClassicPass()
    
}


class VipGuest: Entrants {
    var entrantsType: TypeOfEntrants = .VipEntrant
    
    var entrantsPass: Passes? = VipPass()
    
}

class ChildrenGuest: Entrants, Age {
    var entrantsType: TypeOfEntrants = .ChildrenEntrant
    
    var entrantsPass: Passes? = ChildrenPass()
    
    var dateOfBirth: Date? // to check the b-day for requirements
    
    
    
    init(dateOfBirth: Date?) throws {
        self.dateOfBirth = dateOfBirth
        
        try dateOfBirthCheck(date: dateOfBirth)
        
        print("     Created")
    }
}
