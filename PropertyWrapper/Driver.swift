//
//  Driver.swift
//  PropertyWrapper
//
//  Created by Waqar Ahmed on 19/12/2019.
//  Copyright © 2019 Starkling. All rights reserved.
//

import Foundation

@propertyWrapper
class UpperCase {
    
    private(set) var value: String = "no value here" // will be must
    var wrappedValue: String {  // will be must
        get { value } // one line doesn;t require return here
        set {
            value = newValue.uppercased()
        }
    }
}

struct Driver {
    
    @UpperCase
    var license: String
    
    @UpperCase
    var state: String
    
    init(license: String) {
        self.license = license
    }
}
