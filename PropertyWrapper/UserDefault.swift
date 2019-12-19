//
//  UserDefault.swift
//  PropertyWrapper
//
//  Created by Waqar Ahmed on 19/12/2019.
//  Copyright © 2019 Starkling. All rights reserved.
//

import Foundation

//var isLoggedIn: Bool {
//    get { UserDefaults.standard.bool(forKey: "IS_LOGGED_IN") }
//    set {
//        UserDefaults.standard.set(newValue, forKey: "IS_LOGGED_IN")
//    }
//}
//
//var isFirstLogin: Bool{
//    get { UserDefaults.standard.bool(forKey: "IS_FIRST_LOGIN") }
//    set {
//        UserDefaults.standard.set(newValue, forKey: "IS_FIRST_LOGIN")
//    }
//}
//
//@propertyWrapper
//struct UserDefault<Value> {
//    let key: String
//    var wrappedValue: Value?{
//        get {
//            UserDefaults.standard.object(forKey: key) as? Value
//        }
//        set{
//            UserDefaults.standard.set(newValue, forKey: key)
//        }
//    }
//}
//
//struct User {
//    @UserDefault(key: "IS_LOGGED_IN")
//    var isLoggedIn: Bool
//    @UserDefault(key: "IS_FIRST_LOGIN")
//    var isFirstLogin: Bool
//}


@propertyWrapper
struct UserDefault<T> {
    let key: String
   // let defaultValue: T?
//defaultValue: T?
    init(_ key: String) {
        self.key = key
       // self.defaultValue = defaultValue
    }

    var wrappedValue: T {
        get {
            return UserDefaults.standard.object(forKey: key) as! T
        }
        set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
}

struct User {
    var isLoggedIn: Bool
    var isFirstLogin: Bool
}


struct UserDefaultsConfig {
    @UserDefault("has_seen_app_introduction")
    var hasSeenAppIntroduction: Bool?

    var username: String?
    @UserDefault("year_of_birth")
    var yearOfBirth: Int?
}
