//
//  GuestPass.swift
//  AmusementParkPassGenerator
//
//  Created by Henry Trinh on 7/15/19.
//  Copyright © 2019 HR-Soft. All rights reserved.
//

import Foundation

/*           Passes for Guest           */
class GuestPass : Passes {
    override init(typeOfPass: TypeOfPasses) {
        super.init(typeOfPass: typeOfPass)
    }
}

class ClassicPass: GuestPass {
    init() {
        super.init(typeOfPass: .ClassicPass)
        print("   ClassicPass Created \n")
    }
}

class VipPass : GuestPass {
    init() {
        super.init(typeOfPass: .VipPass)        
        print("   VipPass Created \n")
    }
}

class ChildrenPass : GuestPass {
    init() {
        super.init(typeOfPass: .ChildrenPass)
        print("   ChildrenPass Creating \n")
    }
}
