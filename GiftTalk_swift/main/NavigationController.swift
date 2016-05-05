//
//  NavigationController.swift
//  GiftTalk_swift
//
//  Created by OpenCom on 16/5/3.
//  Copyright © 2016年 cckv. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 以下可以抽成一个分类(颜色生成图片)
        let rect = CGRectMake(0, 0, 1, 1);
        // 开启位图上下文
        UIGraphicsBeginImageContext(rect.size);
        // 获取位图上下文
        let context = UIGraphicsGetCurrentContext();
        // 使用color演示填充上下文
        CGContextSetFillColorWithColor(context, UIColor.redColor().CGColor);
        // 渲染上下文
        CGContextFillRect(context, rect);
        // 从上下文中获取图片
        let image = UIGraphicsGetImageFromCurrentImageContext();
        // 结束上下文
        UIGraphicsEndImageContext();
        
        navigationBar.setBackgroundImage(image, forBarMetrics: .Default)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
