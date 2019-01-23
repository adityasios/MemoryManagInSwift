//
//  Model.swift
//  MemoryManagInSwift
//
//  Created by Rakhi on 22/01/19.
//  Copyright © 2019 myself. All rights reserved.
//

import Foundation



class Human {
    
    let name: String
    var house: Apartment?
    
    
    init(name:String) {
        self.name = name
        print("\(self.name) is being initialized")
    }
    
    deinit {
        print("\(name) is being deinitialized ")
    }
}



class Apartment {
    
    let model: String
    var tenant: Human?
    
    init(model: String) {
        self.model = model
        print("\(model) is being initialized")
    }
    
    deinit {
        print("\(model) is being deinitialized")
    }
}







