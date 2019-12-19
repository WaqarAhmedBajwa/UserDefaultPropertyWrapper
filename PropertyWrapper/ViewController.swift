//
//  ViewController.swift
//  PropertyWrapper
//
//  Created by Waqar Ahmed on 19/12/2019.
//  Copyright © 2019 Starkling. All rights reserved.
//

import UIKit




class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        var driver = Driver(license: "abcdef1234")
//        print(driver.license)
//        print(driver.state)
//        driver.state = "punjab"
//        print(driver.state)
        
        var userDefault = UserDefaultsConfig()
        print(userDefault.hasSeenAppIntroduction)
        print(userDefault.username)
        print(userDefault.yearOfBirth)
        // if we don't make init() for UserDefaultsConfig() class we cannot change value here 
//        userDefault.hasSeenAppIntroduction = true
        print(userDefault.hasSeenAppIntroduction)
        
        userDefault.username = "James Bond"
        print(userDefault.username)
        
        userDefault.yearOfBirth = 1982
        print(userDefault.yearOfBirth)
    }


}

