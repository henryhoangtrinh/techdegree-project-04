//
//  Swipe.swift
//  AmusementParkPassGenerator
//
//  Created by Henry Trinh on 7/15/19.
//  Copyright © 2019 HR-Soft. All rights reserved.
//

import Foundation

// Swipping Method
struct Swipe {
    
    static func swiping(entrants: Entrants, atArea: AreaAccess) -> String {
        if (entrants.entrantsPass?.areaAccess.contains(atArea))! {
            return "You have access to the \(atArea) area"
        } else {
            return "You do not have access to this area"
        }
    }
    
    static func swipping(entrants: Entrants,atRide: RideAccess) -> String {
        switch atRide {
        case .AccessAllRides:
            if (entrants.entrantsPass?.rideAccess.contains(atRide))!{
                return "Access Granted. You have access to all the ride"
            } else {
                return "Access Denied. You do not have access to all the ride"
            }
        case .SkipAllRideLines:
            if (entrants.entrantsPass?.rideAccess.contains(atRide))!{
                return "Access Granted. You can skip the line for your ride"
            } else {
                return "Access Denied. You do not have the access to skip the ride"
            }
        }
    }
    
    static func swippingFor(FoodDiscount: Int, from entrants: Entrants) -> String {
        if entrants.entrantsPass?.discountAccessFor.food == FoodDiscount {
            return "You are qualified for \(FoodDiscount)% in Foods"
        } else {
            return "You are not qualified for \(FoodDiscount)% in Foods"
        }
    }
    
    static func swippingFor(MerchandisDiscount: Int, from entrants: Entrants) -> String {
        if entrants.entrantsPass?.discountAccessFor.merchandise == MerchandisDiscount {
            return "You are qualified for \(MerchandisDiscount)% in Merchandises"
        } else {
            return "You are not qualified for \(MerchandisDiscount)% in Merchandises"
        }
    }
    
    static func isSwippedTwice(entrant: Entrants) -> String {
        let currentSwipe = Date()
        
        if let previousSwipe = entrant.entrantsPass?.lastSwipe {
            let swipeTime = Int(currentSwipe.timeIntervalSince(previousSwipe))
            
            if swipeTime > 5 {
                //return false
                return "Good Swipe"
            } else {
                //return true
                return "You swipped it twice, please wait at least 5 seconds"
            }
        } else {
            entrant.entrantsPass?.lastSwipe = currentSwipe
            //return false
            return "Good Swipe"
        }
    }
}
