//
//  AppDelegate.swift
//  ForumsHackathon
//
//  Created by Yuchen Nie on 1/8/16.
//  Copyright © 2016 WeddingWire. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window?.backgroundColor = UIColor.whiteColor()
        //let tabController = WWTabBarController()
        
        setupViewControllers()
        
        
        
                return true
    }
    
    func setupViewControllers() {
        let tabBarController = UITabBarController()
        
        let view0 = ActiveLabelViewController()
        let view1 = WWDummyViewController(nibName: nil, bundle: nil)
        let view2 = WWDummyViewController(nibName: nil, bundle: nil)
        
        let navController0 = UINavigationController(rootViewController: view0)
        let navController1 = UINavigationController(rootViewController: view1)
        let navController2 = UINavigationController(rootViewController: view2)
        
        let viewControllers = [navController0, navController1, navController2]
        tabBarController.viewControllers = viewControllers
        
        view0.tabBarItem = UITabBarItem(title: "View 0", image: UIImage(named:"pizza bar icon"), tag: 0)
        view1.tabBarItem = UITabBarItem(title: "View 1", image: UIImage(named:"pizza bar icon"), tag: 1)
        view2.tabBarItem = UITabBarItem(title: "View 2", image: UIImage(named:"pizza bar icon"), tag: 2)
//        view1.loadView()
//        view2.loadView()
        //tabBarController.selectedIndex = 1
        
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
//        window?.addSubview(tabController.view)
//        
//                let view1 = WWDummyViewController(nibName: nil, bundle: nil)
//        
//                let navController1 = UINavigationController(rootViewController: view1)
//                window?.rootViewController = navController1
//                window?.makeKeyAndVisible()

    }
    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

