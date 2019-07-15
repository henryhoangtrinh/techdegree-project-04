//
//  ParkErrors.swift
//  AmusementParkPassGenerator
//
//  Created by Henry Trinh on 7/15/19.
//  Copyright © 2019 HR-Soft. All rights reserved.
//

import Foundation

enum ParkErrors : Error {
    
    // Children
    case invalidDateOfBirth
    case exceedAge
    case happyBirthDay
    case notBornYet
    
    // Employee
    case invalidFirstName
    case invalidLastName
    case invalidStreetName
    case invalidCity
    case invalidState
    case invalidZipCode
    
}

extension ParkErrors: LocalizedError {
    var errorDescription: String? {
        switch self {
            
        case .invalidDateOfBirth:
            return "Invalid Date of Birth"
        case .exceedAge:
            return "Must be under 5 years old"
        case .happyBirthDay:
            return "Happy BirthDay"
        case .notBornYet:
            return "You might input wrong Date(given Date in the future)"
        case .invalidFirstName:
            return "Invalid First Name"
        case .invalidLastName:
            return "Invalid Last Name"
        case .invalidStreetName:
            return "Invalid Street Name"
        case .invalidCity:
            return "Invalid City"
        case .invalidState:
            return "Invalid State"
        case .invalidZipCode:
            return "Invalid Zip Code"
        }
    }
}
/* Creadit -> https://stackoverflow.com/questions/39176196/how-to-provide-a-localized-description-with-an-error-type-in-swift ( Error Handling ) */
