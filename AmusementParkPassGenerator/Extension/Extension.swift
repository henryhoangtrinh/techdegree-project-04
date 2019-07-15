//
//  Extension.swift
//  AmusementParkPassGenerator
//
//  Created by Henry Trinh on 7/15/19.
//  Copyright © 2019 HR-Soft. All rights reserved.
//

import Foundation

//      Some random protocol
// For Children
protocol Age {
    var dateOfBirth: Date? { get }
}

// For Employee
protocol Name {
    var firstName: String? { get }
    var lastName: String? { get }
}

protocol Address {
    var streetName: String? { get }
    var city: String? { get }
    var state: String? { get }
    var zipCode: String? { get }
}

extension Date {
    static func dateFromString(value: String) -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let date = dateFormatter.date(from: value )
        return date
    }
}
// Creadit ->  https://stackoverflow.com/questions/24089999/how-do-you-create-a-swift-date-object (TimeFormatter)

extension Entrants {
    
    func dateOfBirthCheck(date : Date?) throws {
        
        guard let dateOfBirth = date else {
            throw ParkErrors.invalidDateOfBirth
        }
        
        let now = Date()
        let age = Calendar.current.dateComponents([.year, .month, .day], from: dateOfBirth, to: now)
        
        if let year = age.year, let month = age.month, let day = age.day {
            if day < 0 {
                throw ParkErrors.notBornYet
            } else if month == 0 && day == 0 {
                throw ParkErrors.happyBirthDay
            } else if year >= 5 {
                throw ParkErrors.exceedAge
            }
        }
    }
    
    func nameCheck(firstName: String?, lastName: String?) throws {
        guard let firstname = firstName, ((firstname.trimmingCharacters(in: .whitespaces)) != "") else {
            throw ParkErrors.invalidFirstName
        }
        
        guard let lastname = lastName, ((lastname.trimmingCharacters(in: .whitespaces)) != "") else {
            throw ParkErrors.invalidLastName
        }
    }
    
    func addressCheck(streetName: String?, city: String?, state: String?, zipCode: String?) throws {
        guard let streetname = streetName, ((streetname.trimmingCharacters(in: .whitespaces)) != "") else {
            throw ParkErrors.invalidStreetName
        }
        
        guard let cityname = city, ((cityname.trimmingCharacters(in: .whitespaces)) != "") else {
            throw ParkErrors.invalidCity
        }
        
        guard let statename = state, ((statename.trimmingCharacters(in: .whitespaces)) != "") else {
            throw ParkErrors.invalidState
        }
        
        guard let zipcode = zipCode, ((zipcode.trimmingCharacters(in: .whitespaces)) != ""), (zipcode.count == 5) else {
            throw  ParkErrors.invalidZipCode
        }
    }
}

