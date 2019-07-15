//
//  ViewController.swift
//  AmusementParkPassGenerator
//
//  Created by Henry Trinh on 7/14/19.
//  Copyright © 2019 HR-Soft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        _ = TestCases.ClassicGuestTest()
        print("************************************************************************")
        _ = TestCases.VipGuestTest()
        print("************************************************************************")
        _ = TestCases.ChildrenGuestTest()
        print("************************************************************************")
        _ = TestCases.ServiceFoodEmployeeTest()
        print("************************************************************************")
        _ = TestCases.ServiceRideEmployeeTest()
        print("************************************************************************")
        _ = TestCases.ServiceMaintenanceEmployeeTest()
        print("************************************************************************")
        _ = TestCases.ManagerTest()
        print("************************************************************************")
        _ = TestCases.doubleSwipeCheck(second: 2)
        print("************************************************************************")
        _ = TestCases.doubleSwipeCheck(second: 7)
    }


}

