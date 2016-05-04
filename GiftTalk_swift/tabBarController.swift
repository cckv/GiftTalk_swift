//
//  tabBarController.swift
//  GiftTalk_swift
//
//  Created by OpenCom on 16/5/3.
//  Copyright © 2016年 cckv. All rights reserved.
//

import UIKit

class tabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addChildVc()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addChildVc() {
        
        let homeVc = HomeViewController()
        let hotVc = HotViewController()
        let categoryVc = CategoryViewController()
        let meVc = meViewController()
        
        let nav1 = NavigationController(rootViewController: homeVc)
        let nav2 = NavigationController(rootViewController: hotVc)
        let nav3 = NavigationController(rootViewController: categoryVc)
        let nav4 = NavigationController(rootViewController: meVc)
        
        homeVc.title = "首页"
        hotVc.title = "热门"
        categoryVc.title = "分类"
        meVc.title = "我"
        
        let normalAttributes = [NSForegroundColorAttributeName : UIColor(red:0.67, green:0.67, blue:0.68, alpha:1)]
        let highattributes = [NSForegroundColorAttributeName : UIColor(red:0.83, green:0.33, blue:0.31, alpha:1),]
        
        nav1.tabBarItem = UITabBarItem(title: "首页", image: UIImage(named:"TabBar_home")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal), selectedImage: UIImage(named: "TabBar_home_selected")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal))
        nav1.tabBarItem.setTitleTextAttributes(highattributes, forState: UIControlState.Selected)
        nav1.tabBarItem.setTitleTextAttributes(normalAttributes, forState: UIControlState.Normal)
//
        nav2.tabBarItem = UITabBarItem(title: "热门", image: UIImage(named:"TabBar_gift")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal), selectedImage: UIImage(named: "TabBar_gift_selected")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal))
        nav2.tabBarItem.setTitleTextAttributes(highattributes, forState: UIControlState.Selected)
        nav2.tabBarItem.setTitleTextAttributes(normalAttributes, forState: UIControlState.Normal)
        
        nav3.tabBarItem = UITabBarItem(title: "分类", image: UIImage(named:"TabBar_category")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal), selectedImage: UIImage(named: "TabBar_category_Selected")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal))
        nav3.tabBarItem.setTitleTextAttributes(highattributes, forState: UIControlState.Selected)
        nav3.tabBarItem.setTitleTextAttributes(normalAttributes, forState: UIControlState.Normal)
        
        
        nav4.tabBarItem = UITabBarItem(title: "我", image: UIImage(named:"TabBar_me_boy")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal), selectedImage: UIImage(named: "TabBar_me_boy_selected")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal))
        nav4.tabBarItem.setTitleTextAttributes(highattributes, forState: UIControlState.Selected)
        nav4.tabBarItem.setTitleTextAttributes(normalAttributes, forState: UIControlState.Normal)
        
        addChildViewController(nav1)
        addChildViewController(nav2)
        addChildViewController(nav3)
        addChildViewController(nav4)
        
        
    }



}
