//
//  ViewController.swift
//  MemoryManagInSwift
//
//  Created by Rakhi on 21/01/19.
//  Copyright © 2019 myself. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var reference1: Human?
    var reference2: Human?
    var reference3: Human?
    
  
    //MARK: - VC LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        //howARCWorks()
        howToCreateStrongReferenceCycle()
    }
    
    
    
    
    deinit {
        print("deinit self  = ARC count \(CFGetRetainCount(self))")
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    
    
    
   
    
    //MARK: - HOW ARC WORK
    func howARCWorks() {
        
        reference1 = Human.init(name: "adi")
        print("reference1 intial  = ARC count \(CFGetRetainCount(reference1))")
        
        reference2 = reference1
        print("reference2 intial = ARC count \(CFGetRetainCount(reference2))")
        
        reference3 = reference1
        print("reference3 initial = ARC count \(CFGetRetainCount(reference3))")
        
        print("reference13 = ARC count \(CFGetRetainCount(reference1))")
        print("reference2 = ARC count \(CFGetRetainCount(reference2))")
        
        
        reference1 = nil
        reference2 = nil
        reference3 = nil
    }
    
    
    //MARK: - STRONG REFRENCE CYCLE
    func howToCreateStrongReferenceCycle() {
        let person : Human?
        let apart : Apartment?
        person = Human.init(name: "adi")
        apart = Apartment.init(model: "2BHK")
        
        person?.house = apart
        apart?.tenant = person
    }
    
    
    
    
    
    
    
    //MARK: - BUTTON ACTION
    @IBAction func btnPushVCClicked(_ sender: UIButton) {
        let pushVC = storyboard?.instantiateViewController(withIdentifier: "PushViewController") as! PushViewController
        self.navigationController?.pushViewController(pushVC, animated: true)
    }
    
    @IBAction func btnPresentVCClicked(_ sender: UIButton) {
        let presentVC = storyboard?.instantiateViewController(withIdentifier: "PresentVC") as! PresentVC
        self.present(presentVC, animated: true, completion: nil)
    }
    
}

