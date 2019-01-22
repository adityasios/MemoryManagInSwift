//
//  ViewController.swift
//  MemoryManagInSwift
//
//  Created by Rakhi on 21/01/19.
//  Copyright © 2019 myself. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var kelvin: Person?
        var iphone: Gadget?
        
        kelvin = Person(name: "Kelvin")
        iphone = Gadget(model: "iPhone 8 Plus")
        kelvin?.gadget = iphone
        iphone?.owner = kelvin
        
        //kelvin = nil
        //iphone = nil
        
    }
}

