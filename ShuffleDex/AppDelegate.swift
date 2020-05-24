//
//  AppDelegate.swift
//  ShuffleDex
//
//  Created by Cassio Nicolai Bruzasco on 23/05/20.
//  Copyright © 2020 Cassio Nicolai Bruzasco. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let standard = UINavigationBarAppearance()
        standard.configureWithTransparentBackground()
        UINavigationBar.appearance().standardAppearance = standard
        
        //UINavigationBar.appearance().backgroundColor = .clear
        
        return true
    }

}

