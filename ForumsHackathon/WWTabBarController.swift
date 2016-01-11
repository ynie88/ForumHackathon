//
//  WWTabBarController.swift
//  ForumsHackathon
//
//  Created by Yuchen Nie on 1/8/16.
//  Copyright © 2016 WeddingWire. All rights reserved.
//

import UIKit

class WWTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupViewControllers()
    }
    
    func setupViewControllers() {
        let view1 = WWDummyViewController(nibName: nil, bundle: nil)
        let view2 = WWDummyViewController()
        
        let navController1 = UINavigationController(rootViewController: view1)
        let navController2 = UINavigationController(rootViewController: view2)
        
        let viewControllers = [navController1, navController2]
        tabBarController?.viewControllers = viewControllers
        view1.tabBarItem = UITabBarItem(title: "View 1", image: UIImage(named:"ForumIcon"), tag: 1)
        view2.tabBarItem = UITabBarItem(title: "View 2", image: UIImage(named:"pizza bar icon "), tag: 2)
        view1.loadView()
        view2.loadView()
        tabBarController?.selectedIndex = 1
    }
    
    override func loadView() {
        
        
        super.loadView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
