//
//  ViewController.swift
//  PreneticsTestCocoa
//
//  Created by rocooshiang on 06/08/2017.
//  Copyright (c) 2017 rocooshiang. All rights reserved.
//

import UIKit
import PreneticsTestCocoa

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
            
      print(Device.screenHeight)
      
      IntercomUtilities.setAPIKey(key: "Your api key", appId: "app id")
      
    }

}

