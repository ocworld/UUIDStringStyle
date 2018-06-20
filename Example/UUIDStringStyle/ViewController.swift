//
//  ViewController.swift
//  UUIDStringStyle
//
//  Created by ocworld on 06/20/2018.
//  Copyright (c) 2018 ocworld. All rights reserved.
//

import UIKit
import UUIDStringStyle

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        let canonical = UUID().uuidString(style: .canonical)
        let noHyphens = UUID().uuidString(style: .noHyphens)
        let surroundingBraces = UUID().uuidString(style: .surroundingBraces)
        let urn = UUID().uuidString(style: .urn)
        
        let noHyphens2 = UUIDStringStyle.noHyphens.uuidString(UUID())
        
        print(canonical)
        print(noHyphens)
        print(surroundingBraces)
        print(urn)
        print(noHyphens2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

