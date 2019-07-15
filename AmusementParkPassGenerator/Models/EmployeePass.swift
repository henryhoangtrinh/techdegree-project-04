//
//  EmployeePass.swift
//  AmusementParkPassGenerator
//
//  Created by Henry Trinh on 7/15/19.
//  Copyright © 2019 HR-Soft. All rights reserved.
//

import Foundation

/*           Passes for Employee           */

class EmployeePass : Passes {
    override init(typeOfPass: TypeOfPasses) {
        super.init(typeOfPass: typeOfPass)
    }
}

class EmployeeFoodServicesPass : EmployeePass {
    init() {
        super.init(typeOfPass: .EmployeeFoodServicesPass)
        print("   EmployeeFoodServicesPass Creating \n")
    }
}

class EmployeeRideServicesPass : EmployeePass {
    init() {
        super.init(typeOfPass: .EmployeeRideServicesPass)
        print("   EmployeeRideServicesPass Creating \n")
    }
}

class EmployeeMaintenacePass : EmployeePass {
    init() {
        super.init(typeOfPass: .EmployeeMaintenancePass)
        print("   EmployeeMaintenancePass Creating \n")
    }
}

class ManagerPass : EmployeePass {
    init() {
        super.init(typeOfPass: .ManagerPass)
        print("   ManagerPass Creating \n")
    }
}
