//
//  Employee.swift
//  AmusementParkPassGenerator
//
//  Created by Henry Trinh on 7/15/19.
//  Copyright © 2019 HR-Soft. All rights reserved.
//

import Foundation

protocol Employee: Name, Address, Entrants {}


class EmployeeFoodServices : Employee {
    var streetName: String?
    
    var city: String?
    
    var state: String?
    
    var zipCode: String?
    
    var firstName: String?
    
    var lastName: String?
    
    var entrantsPass: Passes? = EmployeeFoodServicesPass()
    
    var entrantsType: TypeOfEntrants = .EmployeeFoodServicesEntrant
    
    init(firstName: String, lastName: String, streetName: String, city: String, state: String ,zipCode: String) throws {
        self.firstName = firstName
        self.lastName = lastName
        self.streetName = streetName
        self.city = city
        self.state = state
        self.zipCode = zipCode
        
        try nameCheck(firstName: firstName, lastName: lastName)
        
        try addressCheck(streetName: streetName, city: city, state: state, zipCode: zipCode)
        
        print("     Created")
    }
}

class EmployeeRideServices : Employee {
    var streetName: String?
    
    var city: String?
    
    var state: String?
    
    var zipCode: String?
    
    var firstName: String?
    
    var lastName: String?
    
    var entrantsPass: Passes? = EmployeeRideServicesPass()
    
    var entrantsType: TypeOfEntrants = .EmployeeRideServicesEntrant
    
    init(firstName: String, lastName: String, streetName: String, city: String, state: String ,zipCode: String) throws {
        self.firstName = firstName
        self.lastName = lastName
        self.streetName = streetName
        self.city = city
        self.state = state
        self.zipCode = zipCode
        
        try nameCheck(firstName: firstName, lastName: lastName)
        
        try addressCheck(streetName: streetName, city: city, state: state, zipCode: zipCode)
        
        print("     Created")
    }
}

class EmployeeMaintenanceServices : Employee {
    var streetName: String?
    
    var city: String?
    
    var state: String?
    
    var zipCode: String?
    
    var firstName: String?
    
    var lastName: String?
    
    var entrantsPass: Passes? = EmployeeMaintenacePass()
    
    var entrantsType: TypeOfEntrants = .EmployeeMaintenanceEntrant
    
    init(firstName: String, lastName: String, streetName: String, city: String, state: String ,zipCode: String) throws {
        self.firstName = firstName
        self.lastName = lastName
        self.streetName = streetName
        self.city = city
        self.state = state
        self.zipCode = zipCode
        
        try nameCheck(firstName: firstName, lastName: lastName)
        
        try addressCheck(streetName: streetName, city: city, state: state, zipCode: zipCode)
        
        print("     Created")
    }
}

class Manager : Employee {
    
    var streetName: String?
    
    var city: String?
    
    var state: String?
    
    var zipCode: String?
    
    var firstName: String?
    
    var lastName: String?
    
    var entrantsPass: Passes? = ManagerPass()
    
    var entrantsType: TypeOfEntrants = .ManagerEntrant
    
    init(firstName: String, lastName: String, streetName: String, city: String, state: String ,zipCode: String) throws {
        self.firstName = firstName
        self.lastName = lastName
        self.streetName = streetName
        self.city = city
        self.state = state
        self.zipCode = zipCode
        
        try nameCheck(firstName: firstName, lastName: lastName)
        
        try addressCheck(streetName: streetName, city: city, state: state, zipCode: zipCode)
        
        print("     Created")
    }
}
/////////////////////////////////////////
