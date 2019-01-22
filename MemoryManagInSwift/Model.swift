//
//  Model.swift
//  MemoryManagInSwift
//
//  Created by Rakhi on 22/01/19.
//  Copyright © 2019 myself. All rights reserved.
//

import Foundation

class Person {
    let name: String
    weak var gadget: Gadget?
    
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
}


class Gadget {
    
    let model: String
    var owner: Person?
    
    init(model: String) {
        self.model = model
        print("\(model) is being initialized")
    }
    
    deinit {
        print("\(model) is being deinitialized")
    }
}
