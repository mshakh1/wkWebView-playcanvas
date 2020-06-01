//
//  AppDelegate.swift
//  webGLProject
//
//  Created by Admin on 01.06.2020.
//  Copyright © 2020 mshakh. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

      var window: UIWindow?
     
     func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
         
         window = UIWindow()
         window?.rootViewController = UINavigationController(rootViewController: ViewController())
         window?.makeKeyAndVisible()
         
         return true
     }


}

