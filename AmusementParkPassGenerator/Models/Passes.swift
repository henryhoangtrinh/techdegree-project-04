//
//  Passes.swift
//  AmusementParkPassGenerator
//
//  Created by Henry Trinh on 7/14/19.
//  Copyright © 2019 HR-Soft. All rights reserved.
//

import Foundation


//          Passes Files
enum TypeOfPasses {
    case ClassicPass
    case VipPass
    case ChildrenPass
    case EmployeeFoodServicesPass
    case EmployeeRideServicesPass
    case EmployeeMaintenancePass
    case ManagerPass
}

class Passes {
    //var infoPass : String
    //var typeOfEntrants : TypeOfEntrants
    var typeOfPass: TypeOfPasses
    
    var lastSwipe: Date = Date()
    
    var areaAccess : [AreaAccess] {
        switch self.typeOfPass {
        case .ClassicPass, .VipPass, .ChildrenPass :
            return [.AmusementAreas]
        case .EmployeeFoodServicesPass:
            return [.AmusementAreas, .KitchenAreas]
        case .EmployeeRideServicesPass:
            return [.AmusementAreas, .RideControlAreas]
        case .EmployeeMaintenancePass:
            return [.AmusementAreas, .KitchenAreas, .RideControlAreas, .MaintenanceAreas]
        case .ManagerPass:
            return [.AmusementAreas, .KitchenAreas, .RideControlAreas, .MaintenanceAreas, .OfficeAreas]
        }
    }
    
    var rideAccess : [RideAccess] {
        switch self.typeOfPass {
        case .ClassicPass, .ChildrenPass, .EmployeeFoodServicesPass, .EmployeeRideServicesPass, .EmployeeMaintenancePass, .ManagerPass:
            return [.AccessAllRides]
        case .VipPass:
            return [.AccessAllRides, .SkipAllRideLines]
        }
    }
    
    var discountAccessFor: DiscountType {
        switch self.typeOfPass {
        case .ClassicPass, .ChildrenPass:
            return DiscountType(food: 0, merchandise: 0)
        case .VipPass:
            return DiscountType(food: 10, merchandise: 20)
        case .EmployeeFoodServicesPass, .EmployeeMaintenancePass , .EmployeeRideServicesPass:
            return DiscountType(food: 15, merchandise: 25)
        case .ManagerPass:
            return DiscountType(food: 25, merchandise: 25)
        }
    }
    
    init(typeOfPass: TypeOfPasses) {
        self.typeOfPass = typeOfPass
    }
}
